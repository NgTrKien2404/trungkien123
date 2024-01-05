<?php
/**
 * @package J2Store
 * @copyright Copyright (c)2023 Ramesh Elamathi / J2Store.org
 * @license GNU GPL v3 or later
 */
\defined('_JEXEC') or die;

class PlgInstallerJ2Store extends \Joomla\CMS\Plugin\CMSPlugin
{
    function onInstallerBeforePackageDownload(&$url, &$headers)
    {
        $domain = 'j2store.org';
        if (strpos($url, $domain) !== false) {
            if (stripos($url, '/plugin/') !== false) {
                $element = substr(substr($url, strrpos($url, "/") + 1), 0, -4);
                $folder = substr($url, strpos($url, '/plugin/') + 8);
                $type = substr($folder, 0, strpos($folder, '/' . $element));
                if (!empty($type) && !empty($element)) {
                    $plugin = $this->getPlugin($type, $element);
                    if (is_object($plugin) && isset($plugin->params)) {
                        $params = new \Joomla\Registry\Registry($plugin->params);
                        $license_key = (array)$params->get('license_key', '');
                        $baseURL = str_replace('/administrator', '', JURI::base());
                        $api_params = array(
                            'edd_action' => 'get_version',
                            'license' => is_array($license_key) && isset($license_key['license']) && !empty($license_key['license']) ? $license_key['license'] : '',
                            'url' => $baseURL,
                            'element' => $element
                        );
                        require_once(JPATH_ADMINISTRATOR . '/components/com_j2store/helpers/license.php');
                        $license_helper = J2License::getInstance();
                        $license = $license_helper->getVersion($api_params);
                        if (is_array($license) && isset($license['download_link']) && !empty($license['download_link'])) {
                            $url = $license['download_link'];
                        }
                    }
                }
            }
        }
    }

    protected function getPlugin($type, $element){
        if(empty($type) || empty($element)){
            return array();
        }
        $db = \Joomla\CMS\Factory::getDbo();
        $query = $db->getQuery(true);
        $query->select("*")->from('#__extensions')->where('folder=' . $db->q($type))
            ->where('element=' . $db->q($element));

        $db->setQuery($query);
        return $db->loadObject();
    }
}