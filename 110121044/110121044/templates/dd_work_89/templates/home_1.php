<!DOCTYPE html>
<html dir="ltr">
<head>
	<meta charset="utf-8" />
    <?php
        $base = $document->getBase();
        if (!empty($base)) {
            echo '<base href="' . $base . '" />';
            $document->setBase('');
        }
    ?>
    <?php 
	$app = JFactory::getApplication();
    $tplparams	= $app->getTemplate(true)->params;
	$close_contact = htmlspecialchars($tplparams->get('close_contact'));
	$fc = htmlspecialchars($tplparams->get('fc'));
	$tc = htmlspecialchars($tplparams->get('tc'));
	$gc = htmlspecialchars($tplparams->get('gc'));
	$pc = htmlspecialchars($tplparams->get('pc'));
	$allicon = htmlspecialchars($tplparams->get('allicon'));
	$close_slideshow = htmlspecialchars($tplparams->get('close_slideshow'));
	$close_text = htmlspecialchars($tplparams->get('close_text'));
   $boxc = htmlspecialchars($tplparams->get('boxc'));
   $mc = htmlspecialchars($tplparams->get('mc'));
   $fi = htmlspecialchars($tplparams->get('fi'));
   $ac = htmlspecialchars($tplparams->get('ac'));
	?>
    <link href="<?php echo $document->params->get('fav'); ?>" rel="icon" type="image/x-icon" />
    <script>
    var themeHasJQuery = !!window.jQuery;
</script>
<script src="<?php echo addThemeVersion($document->templateUrl . '/jquery.js'); ?>"></script>
<script>
    window._$ = jQuery.noConflict(themeHasJQuery);
</script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="<?php echo addThemeVersion($document->templateUrl . '/bootstrap.min.js'); ?>"></script>
<script src="<?php echo addThemeVersion($document->templateUrl . '/CloudZoom.js'); ?>" type="text/javascript"></script>
    
    <?php echo $document->head; ?>
    <?php if ($GLOBALS['theme_settings']['is_preview'] || !file_exists($themeDir . '/css/bootstrap.min.css')) : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/bootstrap.css'); ?>" media="screen" />
    <?php else : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/bootstrap.min.css'); ?>" media="screen" />
    <?php endif; ?>
    <?php if ($GLOBALS['theme_settings']['is_preview'] || !file_exists($themeDir . '/css/template.min.css')) : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/template.css'); ?>" media="screen" />
    <?php else : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/template.min.css'); ?>" media="screen" />
    <?php endif; ?>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/template.ie.css'); ?>" media="screen"/>
    <![endif]-->
    <?php if(('edit' == JRequest::getVar('layout') && 'form' == JRequest::getVar('view')) ||
        ('com_config' == JRequest::getVar('option') && 'config.display.modules' == JRequest::getVar('controller'))) : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/media.css'); ?>" media="screen" />
    <script src="<?php echo addThemeVersion($document->templateUrl . '/js/template.js'); ?>"></script>
    <?php endif; ?>
    <script src="<?php echo addThemeVersion($document->templateUrl . '/script.js'); ?>"></script>
    <!--[if lte IE 9]>
    <script src="<?php echo addThemeVersion($document->templateUrl . '/script.ie.js'); ?>"></script>
    <![endif]-->
   
<style>
.bd-slide-5 { background-image: url(<?php echo $document->params->get('foto1'); ?>);}
.bd-slide-6 { background-image: url(<?php echo $document->params->get('foto2'); ?>);}
.bd-slide-7 { background-image: url(<?php echo $document->params->get('foto3'); ?>);}
.bd-slide-8 { background-image: url(<?php echo $document->params->get('foto4'); ?>);}
</style>
<body class=" bootstrap bd-body-1 bd-pagebackground">
    <div data-affix
     data-offset=""
     data-fix-at-screen="top"
     data-clip-at-control="top"
     
 data-enable-lg
     
 data-enable-md
     
 data-enable-sm
     
     class=" bd-affix-1"><header class=" bd-headerarea-1">
        <div class=" bd-layoutbox-1 clearfix">
    <div class="bd-container-inner">
        <div class=" bd-layoutcontainer-17">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row
                
                ">
                <div class=" bd-layoutcolumn-col-75 
 col-sm-12">
    <div class="bd-layoutcolumn-75"><div class="bd-vertical-align-wrapper"><div class=" bd-layoutbox-20 clearfix">
    <div class="bd-container-inner">
        <div class=" bd-animation-19 animated" data-animation-name="flipInX"
                                    data-animation-event="onload"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    ><?php
$app = JFactory::getApplication();
$themeParams = $app->getTemplate(true)->params;
$sitename = $app->getCfg('sitename');
$logoSrc = '';
ob_start();
?>
src="<?php echo JURI::base() . 'templates/' . JFactory::getApplication()->getTemplate(); ?>/images/logo.png"
<?php
$logoSrc = ob_get_clean();
$logoLink = '';
if ($themeParams->get('logoFile'))
{
$logoSrc = 'src="' . JURI::root() . $themeParams->get('logoFile') . '"';
}
if ($themeParams->get('logoLink'))
{
$logoLink = $themeParams->get('logoLink');
}
?>
<a class=" bd-logo-5" href="<?php echo $logoLink; ?>">
<img class=" bd-imagestyles" <?php echo $logoSrc; ?> alt="<?php echo $sitename; ?>">
</a></div>
    </div>
</div></div></div>
</div>
	
		<?php if ($close_contact == 1) { ?><div class=" bd-layoutcolumn-col-76 
 col-sm-12">
    <div class="bd-layoutcolumn-76"><div class="bd-vertical-align-wrapper"><p class=" bd-textblock-16 bd-content-element">

<h3><b><?php echo $document->params->get('name'); ?></b></h3>
</p>
	
		<p class=" bd-textblock-10 bd-content-element">
<?php echo $document->params->get('telephone'); ?>
</p>
	
		<p class=" bd-textblock-3 bd-content-element">

E-mail: <a href="<?php echo $document->params->get('email'); ?>"><?php echo $document->params->get('email'); ?></a>

</p></div></div>
</div>
<?php } ?>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
	
		<?php
    renderTemplateFromIncludes('hmenu_1', array());
?>
</header></div>
	
		<?php if ($close_slideshow == 1) { ?><div class=" bd-parallaxbackground-3 bd-parallax-bg-effect" data-control-selector=".bd-slider-3">



<div id="carousel-3" class="bd-slider bd-slider-3 bd-background-width  carousel slide bd-carousel-fade">
    

    

    

    <div class="bd-slides carousel-inner">
        <div class=" bd-slide-5 bd-background-width bd-slide item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <div class=" bd-animation-24 animated" data-animation-name="fadeInDownBig"
                                    data-animation-event="slidein"
                                    data-animation-duration="1600ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    
 data-animation-display="none">
<div class=" bd-animation-27 animated" data-animation-name="fadeOutUpBig"
                                    data-animation-event="slideout"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-36 bd-content-element">
<?php if ($close_text == 1) { ?><?php echo $document->params->get('s1'); ?><?php } ?>
</p>
</div>
</div>
	
		<div class=" bd-animation-25 animated" data-animation-name="fadeInUpBig"
                                    data-animation-event="slidein"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="900ms"
                                    data-animation-infinited="false"
                                    
 data-animation-display="none">
<div class=" bd-animation-26 animated" data-animation-name="fadeOutDownBig"
                                    data-animation-event="slideout"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="1300ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-38 bd-content-element">
<?php if ($close_text == 1) { ?><?php echo $document->params->get('s2'); ?><?php } ?>
</p>
</div>
</div>
        </div>
    </div>
</div>
	
		<div class=" bd-slide-6 bd-background-width bd-slide item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <div class=" bd-animation-1 animated" data-animation-name="fadeInDownBig"
                                    data-animation-event="slidein"
                                    data-animation-duration="1600ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    
 data-animation-display="none">
<div class=" bd-animation-2 animated" data-animation-name="fadeOutUpBig"
                                    data-animation-event="slideout"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-40 bd-content-element">
<?php if ($close_text == 1) { ?><?php echo $document->params->get('s3'); ?><?php } ?>
</p>
</div>
</div>
	
		<div class=" bd-animation-28 animated" data-animation-name="fadeInUpBig"
                                    data-animation-event="slidein"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="900ms"
                                    data-animation-infinited="false"
                                    
 data-animation-display="none">
<div class=" bd-animation-29 animated" data-animation-name="fadeOutDownBig"
                                    data-animation-event="slideout"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="1300ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-39 bd-content-element">
<?php if ($close_text == 1) { ?><?php echo $document->params->get('s4'); ?><?php } ?>
</p>
</div>
</div>
        </div>
    </div>
</div>
	
		<div class=" bd-slide-7 bd-background-width bd-slide item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <div class=" bd-animation-3 animated" data-animation-name="fadeInDownBig"
                                    data-animation-event="slidein"
                                    data-animation-duration="1600ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    
 data-animation-display="none">
<div class=" bd-animation-4 animated" data-animation-name="fadeOutUpBig"
                                    data-animation-event="slideout"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-42 bd-content-element">
<?php if ($close_text == 1) { ?><?php echo $document->params->get('s5'); ?><?php } ?>
</p>
</div>
</div>
	
		<div class=" bd-animation-32 animated" data-animation-name="fadeInUpBig"
                                    data-animation-event="slidein"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="900ms"
                                    data-animation-infinited="false"
                                    
 data-animation-display="none">
<div class=" bd-animation-33 animated" data-animation-name="fadeOutDownBig"
                                    data-animation-event="slideout"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="1300ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-41 bd-content-element">
<?php if ($close_text == 1) { ?><?php echo $document->params->get('s6'); ?><?php } ?>
</p>
</div>
</div>
        </div>
    </div>
</div>
	
		<div class=" bd-slide-8 bd-background-width bd-slide item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <div class=" bd-animation-5 animated" data-animation-name="fadeInDownBig"
                                    data-animation-event="slidein"
                                    data-animation-duration="1600ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    
 data-animation-display="none">
<div class=" bd-animation-6 animated" data-animation-name="fadeOutUpBig"
                                    data-animation-event="slideout"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-44 bd-content-element">
<?php if ($close_text == 1) { ?><?php echo $document->params->get('s7'); ?><?php } ?>
</p>
</div>
</div>
	
		<div class=" bd-animation-36 animated" data-animation-name="fadeInUpBig"
                                    data-animation-event="slidein"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="900ms"
                                    data-animation-infinited="false"
                                    
 data-animation-display="none">
<div class=" bd-animation-37 animated" data-animation-name="fadeOutDownBig"
                                    data-animation-event="slideout"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="1300ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-43 bd-content-element">
<?php if ($close_text == 1) { ?><?php echo $document->params->get('s8'); ?><?php } ?>
</p>
</div>
</div>
        </div>
    </div>
</div>
    </div>

    

    

    
        <div class="bd-left-button">
    <a class=" bd-carousel-6" href="#">
        <span></span>
    </a>
</div>

<div class="bd-right-button">
    <a class=" bd-carousel-6" href="#">
        <span></span>
    </a>
</div>

    <script type="text/javascript">
        /* <![CDATA[ */
        if ('undefined' !== typeof initSlider) {
            initSlider(
                '.bd-slider-3',
                {
                    leftButtonSelector: 'bd-left-button',
                    rightButtonSelector: 'bd-right-button',
                    navigatorSelector: '.bd-carousel-6',
                    indicatorsSelector: '.bd-indicators',
                    carouselInterval: 6200,
                    carouselPause: "",
                    carouselWrap: true,
                    carouselRideOnStart: true
                }
            );
        }
        /* ]]> */
    </script>
</div></div><?php } ?>
	
		<?php if ($boxc == 1) { ?><section class=" bd-section-1 bd-tagstyles" id="section4" data-section-title="Three Columns">
    <div class="bd-section-inner">
        <div class="bd-section-align-wrapper">
            <div class=" bd-animation-17 animated" data-animation-name="slideInUp"
                                    data-animation-event="scroll"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="600ms"
                                    data-animation-infinited="false"
                                    ><div class=" bd-layoutcontainer-14 bd-background-width">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row
                
                    bd-row-flex
                    
 bd-row-align-top
                ">
                <div class=" bd-layoutcolumn-col-27 
 col-md-8
 col-sm-12">
    <div class="bd-layoutcolumn-27"><div class="bd-vertical-align-wrapper"><div class=" bd-shadowinnerout-2">
    <div class="bd-outer-shadow">
        <div class="bd-shadow-inner">
<div class=" bd-imagescaling-5 bd-imagescaling-animated" data-imagescaling-target=" bd-imagelink-2">
<a class="bd-imagelink-2  " href="<?php echo $document->params->get('bl1'); ?>">
<img class=" bd-imagestyles" src="<?php echo $document->params->get('bf1'); ?>">
</a></div>
</div>
    </div>
</div>
	
		<h2 class=" bd-textblock-12 bd-content-element">
<?php echo $document->params->get('bt1'); ?>
</h2>
	
		<h4 class=" bd-textblock-17 bd-content-element">
<?php echo $document->params->get('bt1a'); ?>
</h4>
	
		<div class=" bd-spacer-2 clearfix"></div>
	
		<p class=" bd-textblock-21 bd-content-element">
<?php echo $document->params->get('bte1'); ?>
</p></div></div>
</div>
	
		<div class=" bd-layoutcolumn-col-29 
 col-md-8
 col-sm-12">
    <div class="bd-layoutcolumn-29"><div class="bd-vertical-align-wrapper"><div class=" bd-shadowinnerout-3">
    <div class="bd-outer-shadow">
        <div class="bd-shadow-inner">
<div class=" bd-imagescaling-6 bd-imagescaling-animated" data-imagescaling-target=" bd-imagelink-5">
<a class="bd-imagelink-5  " href="<?php echo $document->params->get('bl2'); ?>">
<img class=" bd-imagestyles" src="<?php echo $document->params->get('bf2'); ?>">
</a></div>
</div>
    </div>
</div>
	
		<h2 class=" bd-textblock-23 bd-content-element">
<?php echo $document->params->get('bt2'); ?>
</h2>
	
		<h4 class=" bd-textblock-25 bd-content-element">
<?php echo $document->params->get('bt2a'); ?>
</h4>
	
		<div class=" bd-spacer-5 clearfix"></div>
	
		<p class=" bd-textblock-27 bd-content-element">
<?php echo $document->params->get('bte2'); ?>
</p></div></div>
</div>
	
		<div class=" bd-layoutcolumn-col-31 
 col-md-8
 col-sm-12">
    <div class="bd-layoutcolumn-31"><div class="bd-vertical-align-wrapper"><div class=" bd-shadowinnerout-5">
    <div class="bd-outer-shadow">
        <div class="bd-shadow-inner">
<div class=" bd-imagescaling-8 bd-imagescaling-animated" data-imagescaling-target=" bd-imagelink-7">
<a class="bd-imagelink-7  " href="<?php echo $document->params->get('bl3'); ?>">
<img class=" bd-imagestyles" src="<?php echo $document->params->get('bf3'); ?>">
</a></div>
</div>
    </div>
</div>
	
		<h2 class=" bd-textblock-29 bd-content-element">
<?php echo $document->params->get('bt3'); ?>
</h2>
	
		<h4 class=" bd-textblock-31 bd-content-element">
<?php echo $document->params->get('bt3a'); ?>
</h4>
	
		<div class=" bd-spacer-7 clearfix"></div>
	
		<p class=" bd-textblock-33 bd-content-element">
<?php echo $document->params->get('bte3'); ?>
</p></div></div>
</div>
            </div>
        </div>
    </div>
</div></div>
        </div>
    </div>
</section><?php } ?>
	
		<div class=" bd-stretchtobottom-1 bd-stretch-to-bottom" data-control-selector=".bd-contentlayout-9">
<div class="bd-sheetstyles bd-contentlayout-9 ">
    <div class="bd-container-inner">

        
        <div class="bd-flex-vertical bd-stretch-inner">
            
            <div class="bd-flex-horizontal bd-flex-wide">
                
 <?php renderTemplateFromIncludes('sidebar_area_3'); ?>
                <div class="bd-flex-vertical bd-flex-wide">
                    
 <?php renderTemplateFromIncludes('sidebar_area_5'); ?>

                    <div class=" bd-layoutitemsbox-27 bd-flex-wide">
    <div class=" bd-content-9">
    <div class="bd-container-inner">
        <?php
            $document = JFactory::getDocument();
            echo $document->view->renderSystemMessages();
            $document->view->componentWrapper('common');
            echo '<jdoc:include type="component" />';
        ?>
    </div>
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
	
		<div class=" bd-shadowinnerout-12">
    <div class="bd-outer-shadow">
        <div class="bd-shadow-inner"><div class=" bd-layoutcontainer-28">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row
                
                    bd-row-flex
                    
 bd-row-align-top
                ">
                <div class=" bd-layoutcolumn-col-60 
 col-md-6
 col-sm-12
 col-xs-24">
    <div class="bd-layoutcolumn-60"><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_2');
?></div></div>
</div>
	
		<div class=" bd-layoutcolumn-col-61 
 col-md-6
 col-sm-12
 col-xs-24">
    <div class="bd-layoutcolumn-61"><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_3');
?></div></div>
</div>
	
		<div class=" bd-layoutcolumn-col-62 
 col-md-6
 col-sm-12
 col-xs-24">
    <div class="bd-layoutcolumn-62"><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_4');
?></div></div>
</div>
	
		<div class=" bd-layoutcolumn-col-63 
 col-md-6
 col-sm-12
 col-xs-24">
    <div class="bd-layoutcolumn-63"><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_5');
?></div></div>
</div>
            </div>
        </div>
    </div>
</div></div>
    </div>
</div>
	
		<?php if ($mc == 1) { ?><div class=" bd-layoutbox-5 bd-page-width clearfix">
    <div class="bd-container-inner">
        <div class=" bd-animation-11 animated" data-animation-name="fadeInUp"
                                    data-animation-event="scroll"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    ><div class="bd-imagestyles bd-googlemap-2 bd-page-width ">
    <div class="embed-responsive" style="height: 100%; width: 100%;">
        <iframe class="embed-responsive-item"
                src="//maps.google.com/maps?output=embed&q=<?php echo $document->params->get('map1'); ?>, <?php echo $document->params->get('map2'); ?>&t=m"></iframe>
    </div>
</div>
</div>
    </div>
</div><?php } ?>

	
		<footer class=" bd-footerarea-1">
        <?php if ($fi == 1) { ?><section class=" bd-section-6 bd-tagstyles" id="section4" data-section-title="Three Columns">
    <div class="bd-section-inner">
        <div class="bd-section-align-wrapper">
            <div class=" bd-layoutcontainer-10 bd-background-width">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row
                
                    bd-row-flex
                    
 bd-row-align-top
                ">
                <div class=" bd-layoutcolumn-col-18 
 col-md-8">
    <div class="bd-layoutcolumn-18"><div class="bd-vertical-align-wrapper"><h3 class=" bd-textblock-15 bd-content-element">
<?php echo $document->params->get('adress'); ?>
</h3>
	
		<p class=" bd-textblock-14 bd-content-element">

<?php echo $document->params->get('line1'); ?><br><?php echo $document->params->get('line2'); ?>
</p></div></div>
</div>
	
		<div class=" bd-layoutcolumn-col-23 
 col-md-8">
   <div class="bd-layoutcolumn-23"> <?php if ($allicon == 1) { ?><div class="bd-vertical-align-wrapper"><h3 class=" bd-textblock-4 bd-content-element">
<?php echo $document->params->get('ns'); ?>
</h3>
	
		<div class=" bd-socialicons-3">
    
       <?php if ($fc == 1) { ?> <a target="_blank" class=" bd-socialicon-9 bd-socialicon" href="<?php echo $document->params->get('facebook'); ?>">
    <span></span><span></span>
</a><?php } ?>
    
        <?php if ($tc == 1) { ?><a target="_blank" class=" bd-socialicon-10 bd-socialicon" href="<?php echo $document->params->get('twitter'); ?>">
    <span></span><span></span>
</a><?php } ?>
    
        <?php if ($gc == 1) { ?><a target="_blank" class=" bd-socialicon-11 bd-socialicon" href="<?php echo $document->params->get('google'); ?>">
    <span></span><span></span>
</a><?php } ?>
    
        <?php if ($pc == 1) { ?><a target="_blank" class=" bd-socialicon-12 bd-socialicon" href="<?php echo $document->params->get('pinterest'); ?>">
    <span></span><span></span>
</a><?php } ?>
    
    
    
    
    
    
</div></div><?php } ?></div>
</div>
	
		<div class=" bd-layoutcolumn-col-25 
 col-md-8">
    <div class="bd-layoutcolumn-25"><div class="bd-vertical-align-wrapper"><h3 class=" bd-textblock-7 bd-content-element">
<?php echo $document->params->get('namef'); ?>
</h3>
	
		<p class=" bd-textblock-9 bd-content-element">

<?php echo $document->params->get('emailf'); ?><br>
<?php echo $document->params->get('telephonef'); ?><br>


</p></div></div>
</div>
            </div>
        </div>
    </div>
</div>
        </div>
    </div>
</section><?php } ?>
	
		<section class=" bd-section-15 bd-tagstyles" id="section15" data-section-title="Container">
    <div class="bd-section-inner">
        <div class="bd-section-align-wrapper">
            <div class=" bd-layoutbox-9 clearfix">
    <div class="bd-container-inner">
        <p class=" bd-textblock-5 bd-content-element">

Copyright © <?php echo date("Y");?>, <b><?php echo $document->params->get('footer1'); ?></b>. All Rights Reserved.


</p>
    </div>
</div>
        </div>
    </div>
</section>
</footer>
	
		<div data-smooth-scroll data-animation-time="250" class=" bd-smoothscroll-3"><a href="#" class=" bd-backtotop-1">
    <span class=" bd-icon-66"></span>
</a></div>
<?php if ($ac == 1) { ?><script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', '<?php echo $document->params->get('analytics'); ?>', 'auto');
  ga('send', 'pageview');

</script><?php } ?>
</body>
</html>