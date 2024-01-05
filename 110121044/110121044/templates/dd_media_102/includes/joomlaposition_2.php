<?php
function joomlaposition_2() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('box1') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('box1')) : ?>

    <?php if ($isPreview && !$view->containsModules('box1')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-2 bd-page-width  clearfix" <?php echo buildDataPositionAttr('box1'); ?>>
        <?php echo $view->position('box1', 'block%joomlaposition_block_2', '2'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('box1')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}