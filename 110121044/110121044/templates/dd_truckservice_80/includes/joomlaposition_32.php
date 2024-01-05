<?php
function joomlaposition_32() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('top-banner') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('top-banner')) : ?>

    <?php if ($isPreview && !$view->containsModules('top-banner')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-32 clearfix" <?php echo buildDataPositionAttr('top-banner'); ?>>
        <?php echo $view->position('top-banner', 'block%joomlaposition_block_32', '32'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('top-banner')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}