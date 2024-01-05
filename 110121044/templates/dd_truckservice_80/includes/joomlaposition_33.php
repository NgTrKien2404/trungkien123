<?php
function joomlaposition_33() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('fot-banner') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('fot-banner')) : ?>

    <?php if ($isPreview && !$view->containsModules('fot-banner')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-33 clearfix" <?php echo buildDataPositionAttr('fot-banner'); ?>>
        <?php echo $view->position('fot-banner', 'block%joomlaposition_block_33', '33'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('fot-banner')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}