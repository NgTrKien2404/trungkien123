<?php
function joomlaposition_20() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('box4') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('box4')) : ?>

    <?php if ($isPreview && !$view->containsModules('box4')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-20 clearfix" <?php echo buildDataPositionAttr('box4'); ?>>
        <?php echo $view->position('box4', 'block%joomlaposition_block_20', '20'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('box4')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}