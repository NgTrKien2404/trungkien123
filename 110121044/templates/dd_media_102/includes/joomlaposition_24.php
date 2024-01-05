<?php
function joomlaposition_24() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('box6') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('box6')) : ?>

    <?php if ($isPreview && !$view->containsModules('box6')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-24 clearfix" <?php echo buildDataPositionAttr('box6'); ?>>
        <?php echo $view->position('box6', 'block%joomlaposition_block_24', '24'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('box6')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}