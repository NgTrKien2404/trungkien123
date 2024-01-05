<!DOCTYPE html>
<html dir="ltr">
<head>
    <?php include("$themeDir/site/base.php"); ?>
<?php include("$themeDir/site/style.php"); ?>
 <?php include("$themeDir/site/color.php"); ?>   
</head>
<?php if ($ac == 1) { ?><?php include("$themeDir/site/analitics.php"); ?><?php } ?>
<body class=" bootstrap bd-body-5  bd-pagebackground bd-margins">
 
	
		 <?php include("$themeDir/site/header.php"); ?>
	
		<section class=" bd-section-17 bd-page-width bd-tagstyles " id="box1" data-section-title="box1">
    <div class="bd-container-inner bd-margins clearfix">
        <?php
    renderTemplateFromIncludes('joomlaposition_2');
?>
    </div>
</section>
	
		
	<?php if ($slic == 2 ) { ?><?php include("$themeDir/site/slideshow.php"); ?><?php } ?>
		<section class=" bd-section-19 bd-tagstyles" id="box2" data-section-title="box2">
    <div class="bd-container-inner bd-margins clearfix">
        <?php
    renderTemplateFromIncludes('joomlaposition_12');
?>
    </div>
</section>
	
		<?php if ($vic == 2) { ?><?php include("$themeDir/site/video.php"); ?><?php } ?>
	
		<section class=" bd-section-23 bd-tagstyles" id="box3" data-section-title="box3">
    <div class="bd-container-inner bd-margins clearfix">
        <?php
    renderTemplateFromIncludes('joomlaposition_18');
?>
    </div>
</section>
	
		<?php if ($wic == 2 ) { ?><?php include("$themeDir/site/welcome.php"); ?><?php } ?>
	
		<section class=" bd-section-25 bd-tagstyles" id="box4" data-section-title="box4">
    <div class="bd-container-inner bd-margins clearfix">
        <?php
    renderTemplateFromIncludes('joomlaposition_20');
?>
    </div>
</section>
	
		<?php if ($aic == 2) { ?><?php include("$themeDir/site/about.php"); ?><?php } ?>
	
		<section class=" bd-section-26 bd-tagstyles" id="box5" data-section-title="box5">
    <div class="bd-container-inner bd-margins clearfix">
        <?php
    renderTemplateFromIncludes('joomlaposition_22');
?>
    </div>
</section>
	
		<?php if ($iic == 12) { ?><?php include("$themeDir/site/info.php"); ?><?php } ?>
	
		<section class=" bd-section-27 bd-tagstyles" id="box6" data-section-title="box6">
    <div class="bd-container-inner bd-margins clearfix">
        <?php
    renderTemplateFromIncludes('joomlaposition_24');
?>
    </div>
</section>
	
		<?php if ($gic == 2 ) { ?><?php include("$themeDir/site/gallery.php"); ?><?php } ?>
	
		<section class=" bd-section-29 bd-tagstyles" id="box7" data-section-title="box7">
    <div class="bd-container-inner bd-margins clearfix">
        <?php
    renderTemplateFromIncludes('joomlaposition_28');
?>
    </div>
</section>
	
		<div class="bd-containereffect-2 container-effect container ">
<div class=" bd-stretchtobottom-1 bd-stretch-to-bottom" data-control-selector=".bd-contentlayout-9">
<div class="bd-contentlayout-9   bd-sheetstyles  bd-no-margins bd-margins" >
    <div class="bd-container-inner">

        <div class="bd-flex-vertical bd-stretch-inner bd-contentlayout-offset">
            
 <?php renderTemplateFromIncludes('sidebar_area_1'); ?>
            <div class="bd-flex-horizontal bd-flex-wide bd-no-margins">
                
 <?php renderTemplateFromIncludes('sidebar_area_3'); ?>
                <div class="bd-flex-vertical bd-flex-wide bd-no-margins">
                    
 <?php renderTemplateFromIncludes('sidebar_area_5'); ?>

                  <div class=" bd-layoutitemsbox-27 bd-flex-wide bd-no-margins">
    <div class=" bd-content-9">
    <?php
            $document = JFactory::getDocument();
            echo $document->view->renderSystemMessages();
    $document->view->componentWrapper('common');
    echo '<jdoc:include type="component" />';
    ?>
</div>
</div>

                    
 <?php renderTemplateFromIncludes('sidebar_area_6'); ?>
                </div>
                
 <?php renderTemplateFromIncludes('sidebar_area_2'); ?>
            </div>
            
 <?php renderTemplateFromIncludes('sidebar_area_4'); ?>
        </div>

    </div>
</div></div>
</div>
	
<section class=" bd-section-30 bd-tagstyles" id="box8" data-section-title="box8">
    <div class="bd-container-inner bd-margins clearfix">
        <?php
    renderTemplateFromIncludes('joomlaposition_30');
?>
    </div>
</section>
				<?php if ($dsb == 2) { ?><?php include("$themeDir/site/stats.php"); ?><?php } ?>
	
		<?php if ($fsb == 2) { ?><?php include("$themeDir/site/footer.php"); ?><?php } ?>
        
		<?php include("$themeDir/site/design.php"); ?>
		<div data-smooth-scroll data-animation-time="250" class=" bd-smoothscroll-3"><a href="#" class=" bd-backtotop-1 ">
    <span class="bd-icon-66 bd-icon "></span>
</a></div>
</body>
</html>