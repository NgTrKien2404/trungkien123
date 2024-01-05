<?php
function hmenu_2() {
    $view = JFactory::getDocument()->view;
    $modulesContains = $view->containsModules('position-1');
    $isPreview  = $GLOBALS['theme_settings']['is_preview'];
    ?>
    <?php if ($isPreview || $modulesContains) : ?>
        
        <nav class=" bd-hmenu-2" data-responsive-menu="true" data-responsive-levels="">
            <?php if ($view->containsModules('position-1')) : ?>
            
                <div class=" bd-responsivemenu-1 collapse-button">
    <div class="bd-container-inner">
        <div class=" bd-menuitem-6">
            <a  data-toggle="collapse"
                data-target=".bd-hmenu-2 .collapse-button + .navbar-collapse"
                href="#" onclick="return false;">
                    <span>Menu</span>
            </a>
        </div>
    </div>
</div>
                <div class="navbar-collapse collapse">
            <?php echo $view->position('position-1', '', '2', 'hmenu'); ?>
            
                </div>
            <?php else: ?>
                Please add a menu module in the 'position-1' position
            <?php endif; ?>
        </nav>
        
    <?php endif; ?>
<?php
}