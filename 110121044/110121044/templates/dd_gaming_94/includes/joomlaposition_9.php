<?php
function joomlaposition_9() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('left') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('left')) : ?>

    <?php if ($isPreview && !$view->containsModules('left')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-9 clearfix" <?php echo buildDataPositionAttr('left'); ?>>
        <?php echo $view->position('left', 'block%joomlaposition_block_9', '9'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('left')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}