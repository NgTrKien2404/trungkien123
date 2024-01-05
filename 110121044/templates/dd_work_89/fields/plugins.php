<?php

defined('JPATH_PLATFORM') or die;

jimport('joomla.form.formfield');

class JFormFieldPlugins extends JFormField
{
    protected $type = 'Plugins';

    protected function getInput()
    {
        // Initialize field attributes.
        $text   = $this->element['text'] ? $this->element['text'] : '';
        // Get a table instance.
        $table  = JTable::getInstance("Style", "TemplatesTable");
        // Attempt to load the row.
        $table->load(JRequest::getInt('id'));
        $themeName = $table->template;
        $result = $this->_checkPlugins($themeName);
        $installed = $result['installed'];
        $updated = $result['updated'];
        $enabled = $result['enabled'];
        ob_start();
        ?>
        <script>if ('undefined' != typeof jQuery) document._jQuery = jQuery;</script>
        <script src="<?php echo JURI::root() . 'templates/' . $themeName . '/jquery.js' ?>" type="text/javascript"></script>
        <script>jQuery.noConflict();</script>
        <script>
            SqueezeBox.extend({
                applyContent: function(content, size) {
                    if (!this.isOpen && !this.applyTimer) return;
                    this.applyTimer = clearTimeout(this.applyTimer);
                    this.hideContent();
                    if (!content) {
                        this.toggleLoading(true);
                    } else {
                        if (this.isLoading) this.toggleLoading(false);
                        this.fireEvent('onUpdate', [this.content], 20);
                    }
                    if (content) {
                        if (['string', 'array'].contains(typeOf(content))) {
                            this.content.set('html', content);
                        } else if (!(content !== this.content && this.content.contains(content))) {
                            this.content.adopt(content);
                        }
                    }
                    this.callChain();
                    if (!this.isOpen) {
                        this.toggleListeners(true);
                        this.resize(size, true);
                        this.isOpen = true;
                        this.win.setProperty('aria-hidden', 'false');
                        this.fireEvent('onOpen', [this.content]);
                    } else {
                        this.resize(size);
                    }
                }
            });

            jQuery(function ($) {
                var btnSelector = '#<?php echo $this->id; ?>',
                    installPath = '<?php echo JURI::root() . 'templates/' . $themeName . '/library'; ?>',
                    installed = '<?php echo $installed ? '1' : '0'; ?>',
                    updated = '<?php echo $updated ? '1' : '0'; ?>',
                    enabled = '<?php echo $enabled ? '1' : '0'; ?>';

                $(btnSelector).removeAttr("disabled");

                function log(msg, color) {
                    $('#log').append($('<div></div>').text(msg).css('color', color));
                    $(btnSelector).removeAttr("disabled");
                }

                if (installed == '1') {
                    var updateText = updated !== '1' ? '<?php echo JText::_("TPL_PLUGIN_NOTUPDATED"); ?>' : '';
                    if (enabled == '1')
                        log('<?php echo JText::_("TPL_PLUGIN_INSTALLED"); ?>' + ' ' + updateText);
                    else
                        log('<?php echo JText::_("TPL_PLUGIN_INSTALLED_BUT_DISABLED"); ?>' + ' ' + updateText);
                } else {
                    log('<?php echo JText::_("TPL_PLUGIN_UNINSTALLED"); ?>', 'red');
                }

                function request(pluginName, callback) {
                    $.ajax({
                        url : installPath + '/installer.php',
                        data : { 'template' : '<?php echo $themeName;?>', 'plugin' : pluginName },
                        dataType : 'text',
                        success : function (data) {
                            callback(data);
                        },
                        error : function (xhr, textStatus, errorThrown) {
                            log('Request failed: ' + xhr.status, 'red');
                        }
                    });
                }

                function run() {
                    request('button', function (data) {
                        if (data == 'ok') {
                            request('content', function (data) {
                                if (data == 'ok') {
                                    log('<?php echo JText::_("TPL_PLUGIN_INSTALLED"); ?>');
                                } else {
                                    log(data, 'red');
                                }
                            });
                        } else {
                            log(data, 'red');
                        }
                    });
                }

                $(btnSelector).bind('click', function (event) {
                    $(btnSelector).attr("disabled", true);
                    event.preventDefault();
                    // Clear log container
                    $('#log').html('');
                    run();
                });
            });

        </script>
        <script>if (document._jQuery) jQuery = document._jQuery;</script>
        <button name="<?php echo $this->name; ?>"
                id="<?php echo $this->id; ?>" disabled>
            <?php echo JText::_($text); ?>
        </button>
        <div id="log" style="color: #2762A4; float:left;width:100%;margin-top:5px"></div>
        <?php return ob_get_clean();
    }

    private function _checkPlugins($template) {

        $pluginsFolder = JPATH_SITE . '/templates/' . $template . '/plugins/';

        $plugins = array('button', 'content');
        $installed = true;
        $updated = true;
        $enabled = true;
        foreach($plugins as $value) {

            if (version_compare(JVERSION, '3.0', '<')) {
                jimport('joomla.filesystem.archive');
                $ret = JArchive::extract($pluginsFolder . $value . '.zip', $pluginsFolder);
                if ($ret === false) {
                    // to do
                }
            } else {
                jimport('joomla.filesystem.path');
                try {
                    JArchive::extract($pluginsFolder . $value . '.zip', $pluginsFolder);
                } catch (Exception $e) {
                    // to do
                }
            }

            $db = JFactory::getDbo();
            $query = $db->getQuery(true)
                ->select('*')
                ->from($db->quoteName('#__extensions'))
                ->where('type = ' . $db->quote('plugin'))
                ->where('element = ' . $db->quote('themler' . $value));
            $db->setQuery($query);
            $result = $db->loadObject();
            if ($result) {
                $manifestObject = json_decode($result->manifest_cache);
                jimport('joomla.filesystem.file');
                $xml = simplexml_load_string(JFile::read($pluginsFolder . '/' . $value . '/' . 'themler' . $value . '.xml'));
                if (version_compare($manifestObject->version,  $xml->version) == -1)
                    $updated = false;
                else
                    $updated = $updated && true ? true : false;
                $installed = $installed && true ? true : false;
                $enabled = $enabled && ($result->enabled == '1') ? true : false;
            } else {
                $installed = false;
                $updated = false;
                $enabled = false;
            }
            jimport('joomla.filesystem.folder');
            JFolder::delete($pluginsFolder . '/' . $value);
        }
        return array('installed' => $installed, 'updated' => $updated, 'enabled' => $enabled);
    }
}