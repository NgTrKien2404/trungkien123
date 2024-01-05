<?php
function joomlaposition_3() {
    $document = JFactory::getDocument();
    $view = $document->view;
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    if (isset($GLOBALS['isModuleContentExists']) && false == $GLOBALS['isModuleContentExists'])
        $GLOBALS['isModuleContentExists'] = $view->containsModules('fot1') ? true : false;
?>
    <?php if ($isPreview || $view->containsModules('fot1')) : ?>

    <?php if ($isPreview && !$view->containsModules('fot1')) : ?>
    <!-- empty::begin -->
    <?php endif; ?>
    <div class=" bd-joomlaposition-3 clearfix" <?php echo buildDataPositionAttr('fot1'); ?>>
        <?php echo $view->position('fot1', 'block%joomlaposition_block_3', '3'); ?>
    </div>
    <?php if ($isPreview && !$view->containsModules('fot1')) : ?>
    <!-- empty::end -->
    <?php endif; ?>
    <?php endif; ?>
<?php
}