<?php
function joomlaposition_28() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('box7') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('box7')) : ?>

    <?php if ($isPreview && !$view->containsModules('box7')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-28 clearfix" <?php echo buildDataPositionAttr('box7'); ?>>
        <?php echo $view->position('box7', 'block%joomlaposition_block_28', '28'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('box7')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}