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
	$ac = htmlspecialchars($tplparams->get('ac'));
	$dbc = htmlspecialchars($tplparams->get('dbc'));
	$dc = htmlspecialchars($tplparams->get('dc'));
	$dcb = htmlspecialchars($tplparams->get('dcb'));
	$ibc = htmlspecialchars($tplparams->get('ibc'));
	$fc = htmlspecialchars($tplparams->get('fc'));
	$tc = htmlspecialchars($tplparams->get('tc'));
	$gc = htmlspecialchars($tplparams->get('gc'));
	$pc = htmlspecialchars($tplparams->get('pc'));
	$hic = htmlspecialchars($tplparams->get('hic'));
	$bc = htmlspecialchars($tplparams->get('bc'));
	$pc = htmlspecialchars($tplparams->get('pc'));
	$fooc = htmlspecialchars($tplparams->get('fooc'));
	$cfm = htmlspecialchars($tplparams->get('cfm'));
	$cfl1 = htmlspecialchars($tplparams->get('cfl1'));
	$cfl2 = htmlspecialchars($tplparams->get('cfl2'));
	$cfl3 = htmlspecialchars($tplparams->get('cfl3'));
	$cfl4 = htmlspecialchars($tplparams->get('cfl4'));

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
<!--[if lte IE 9]>
<script src="<?php echo addThemeVersion($document->templateUrl . '/layout.ie.js'); ?>"></script>
<link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/layout.ie.css'); ?>" media="screen"/>
<![endif]-->
<script src="<?php echo addThemeVersion($document->templateUrl . '/layout.core.js') ?>"></script>
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
    <?php if(('edit' == JRequest::getVar('layout') && 'form' == JRequest::getVar('view')) ||
        ('com_config' == JRequest::getVar('option') && 'config.display.modules' == JRequest::getVar('controller'))) : ?>
    <link rel="stylesheet" href="<?php echo addThemeVersion($document->templateUrl . '/css/media.css'); ?>" media="screen" />
    <script src="<?php echo addThemeVersion($document->templateUrl . '/js/template.js'); ?>"></script>
    <?php endif; ?>
    <script src="<?php echo addThemeVersion($document->templateUrl . '/script.js'); ?>"></script>
    
</head>
<style>
/*color */
h1.bd-textblock-37{color:<?php echo $document->params->get('s1c'); ?>;}
h1.bd-textblock-13{color:<?php echo $document->params->get('s1ac'); ?>;}

h1.bd-textblock-56{color:<?php echo $document->params->get('s2c'); ?>;}
h1.bd-textblock-55{color:<?php echo $document->params->get('s2ac'); ?>;}

h1.bd-textblock-11{color:<?php echo $document->params->get('s3c'); ?>;}
h1.bd-textblock-8{color:<?php echo $document->params->get('s3ac'); ?>;}

h1.bd-textblock-14{color:<?php echo $document->params->get('s4c'); ?>;}
h1.bd-textblock-12{color:<?php echo $document->params->get('s4ac'); ?>;}

h1.bd-textblock-16{color:<?php echo $document->params->get('s5c'); ?>;}
h1.bd-textblock-15{color:<?php echo $document->params->get('s5ac'); ?>;}

/*slideshow*/
.bd-slide-5 {background-image: url(<?php echo $document->params->get('foto1'); ?>);}
.bd-slide-1 {background-image: url(<?php echo $document->params->get('foto2'); ?>);}
.bd-slide-15 {background-image: url(<?php echo $document->params->get('foto3'); ?>);}
.bd-slide-16{background-image: url(<?php echo $document->params->get('foto4'); ?>);}
.bd-slide-17 {background-image: url(<?php echo $document->params->get('foto5'); ?>);}

.bd-slide-9 {background-image: url(<?php echo JURI::base()?>/<?php echo $document->params->get('b1'); ?>);}
.bd-slide-10 {background-image: url(<?php echo JURI::base()?>/<?php echo $document->params->get('b2'); ?>);}
.bd-slide-11 {background-image: url(<?php echo JURI::base()?>/<?php echo $document->params->get('b3'); ?>);}
.bd-slide-13 {background-image: url(<?php echo JURI::base()?>/<?php echo $document->params->get('b4'); ?>);}
.bd-slide-14 {background-image: url(<?php echo JURI::base()?>/<?php echo $document->params->get('b5'); ?>);}

.bd-section-2 { background-image: url(<?php echo $document->params->get('pbg'); ?>);}
.bd-layoutcolumn-30 { background-image: url(<?php echo $document->params->get('pf2'); ?>);}
.bd-layoutcolumn-34 { background-image: url(<?php echo $document->params->get('pf3'); ?>);}
.bd-layoutcolumn-27 { background-image: url(<?php echo $document->params->get('pf1'); ?>);}
</style>

<body class=" bootstrap bd-body-1 bd-pagebackground-34 bd-margins">
    <div data-affix
     data-offset=""
     data-fix-at-screen="top"
     data-clip-at-control="top"
     
 data-enable-lg
     
 data-enable-md
     
 data-enable-sm
     
     class=" bd-affix-1 bd-no-margins bd-margins "><header class=" bd-headerarea-1  bd-margins">
        <div class=" bd-layoutbox-1 bd-no-margins clearfix">
    <div class="bd-container-inner">
        <div class=" bd-layoutcontainer-17 bd-columns bd-no-margins">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row ">
                <div class=" bd-columnwrapper-75 
 col-lg-3
 col-sm-6">
    <div class="bd-layoutcolumn-75 bd-column" ><div class="bd-vertical-align-wrapper"><div class=" bd-layoutbox-20 bd-no-margins clearfix">
    <div class="bd-container-inner">
        <?php
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
    $logoSrc = 'src="' . JURI::root() . $themeParams->get('logoFile') . '"';

if ($themeParams->get('logoLink'))
    $logoLink = $themeParams->get('logoLink');

if (!$logoLink)
    $logoLink = JUri::base(true);

?>
<a class=" bd-logo-5 animated bd-animation-19" data-animation-name="flipInX" data-animation-event="onload" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false" href="<?php echo $logoLink; ?>">
<img class=" bd-imagestyles" <?php echo $logoSrc; ?> alt="<?php echo $sitename; ?>">
</a>
    </div>
</div></div></div>
</div>
	
		<div class=" bd-columnwrapper-76 
 col-lg-7
 col-sm-6">
    <div class="bd-layoutcolumn-76 bd-column" ><div class="bd-vertical-align-wrapper"><div id="carousel-2" class="bd-slider-2 bd-slider bd-no-margins  carousel slide bd-carousel-top" >
    

    

    

   <div class="bd-slides carousel-inner">
        <div class=" bd-slide-9 bd-slide item"
    
 data-url=".bd-slide-17 {background-image: url(<?php echo $document->params->get('bl1'); ?>);}"
    
 
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-10 bd-slide item"
    
 data-url="<?php echo $document->params->get('bl2'); ?>"
    

    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-11 bd-slide item"
    
 data-url="<?php echo $document->params->get('bl3'); ?>"
    
 
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-13 bd-slide item"
    
 data-url="<?php echo $document->params->get('bl4'); ?>"
    

    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-14 bd-slide item"
    
 data-url="<?php echo $document->params->get('bl5'); ?>"
    
 
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
    </div>

    

    

    

    <script type="text/javascript">
        /* <![CDATA[ */
        if ('undefined' !== typeof initSlider) {
            initSlider(
                '.bd-slider-2',
                {
                    leftButtonSelector: 'bd-left-button',
                    rightButtonSelector: 'bd-right-button',
                    navigatorSelector: '.bd-carousel',
                    indicatorsSelector: '.bd-indicators',
                    carouselInterval: <?php echo $document->params->get('speedb'); ?>,
                    carouselPause: "hover",
                    carouselWrap: true,
                    carouselRideOnStart: true
                }
            );
        }
        /* ]]> */
    </script>
</div></div></div>
</div>
	
		<div class=" bd-columnwrapper-25 
 col-lg-2
 col-sm-8">
    <div class="bd-layoutcolumn-25 bd-column" ><div class="bd-vertical-align-wrapper"><div class=" bd-socialicons-5">
    
       <?php if ($fc == 1) { ?> <a target="_blank" class=" bd-socialicon-40 bd-socialicon" href="<?php echo $document->params->get('facebook'); ?>">
    <span class="bd-icon"></span><span></span>
</a><?php } ?>
    
       <?php if ($tc == 1) { ?> <a target="_blank" class=" bd-socialicon-42 bd-socialicon" href="<?php echo $document->params->get('twitter'); ?>">
    <span class="bd-icon"></span><span></span>
</a><?php } ?>
    
       <?php if ($gc == 1) { ?> <a target="_blank" class=" bd-socialicon-43 bd-socialicon" href="<?php echo $document->params->get('google'); ?>">
    <span class="bd-icon"></span><span></span>
</a><?php } ?>
    
       <?php if ($pc == 1) { ?> <a target="_blank" class=" bd-socialicon-44 bd-socialicon" href="<?php echo $document->params->get('pinterest'); ?>">
    <span class="bd-icon"></span><span></span>
</a><?php } ?>
    
    
    
    
    
    
</div>
	
		<form id="search-4" role="form" class=" bd-search-4 form-inline" name="search" <?php echo funcBuildRoute(JFactory::getDocument()->baseurl . '/index.php', 'action'); ?> method="post">
    <div class="bd-container-inner">
        <input type="hidden" name="task" value="search">
        <input type="hidden" name="option" value="com_search">
        <div class="bd-search-wrapper">
            
                <input type="text" name="searchword" class=" bd-bootstrapinput-11 form-control input-sm" placeholder="Search">
                <a href="#" class="bd-icon-12 bd-icon " link-disable="true"></a>
        </div>
        <script>
            (function (jQuery, $) {
                jQuery('.bd-search-4 .bd-icon-12').on('click', function (e) {
                    e.preventDefault();
                    jQuery('#search-4').submit();
                });
            })(window._$, window._$);
        </script>
    </div>
</form></div></div>
</div>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
	
	<?php if ($hic == 1) { ?><div class=" bd-layoutbox-19 hidden-xs bd-no-margins clearfix">
    <div class="bd-container-inner">
        <div class=" bd-layoutcontainer-31 bd-columns bd-no-margins">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row ">
                <div class=" bd-columnwrapper-82 
 col-lg-2
 col-sm-6">
    	<div class="bd-layoutcolumn-82 bd-column" ><div class="bd-vertical-align-wrapper"><div class=" bd-flexalign-2 bd-no-margins bd-flexalign">
<p class=" bd-textblock-57  bd-content-element">
<?php echo $document->params->get('hin'); ?>
</p>
</div></div></div>
</div>
	
		<div class=" bd-columnwrapper-83 
 col-lg-10
 col-sm-6">
    <div class="bd-layoutcolumn-83 bd-column" ><div class="bd-vertical-align-wrapper"><div class=" bd-customhtml-4 bd-tagstyles">
    <div class="bd-container-inner bd-content-element">

<marquee direction="left" scrollamount="<?php echo $document->params->get('speedh'); ?>" scrolldelay="1" onmouseover="this.stop()" onmouseout="this.start()"><a href="<?php echo $document->params->get('hil'); ?>"><?php echo $document->params->get('hi'); ?></a>
</marquee>

    </div>
</div></div></div>
</div>
            </div>
        </div>
    </div>
</div>
    </div>
</div><?php } ?>
	
		<?php
    renderTemplateFromIncludes('hmenu_1', array());
?>
</header></div>
	
		<div class=" bd-parallaxbackground-1 bd-parallax-bg-effect" data-control-selector=".bd-slider-3">



<div id="carousel-3" class="bd-slider-3 bd-background-width   bd-slider bd-no-margins  carousel slide bd-carousel-right" >
    

    

    

    <div class="bd-slides carousel-inner">
        <div class=" bd-slide-5 bd-background-width bd-textureoverlay bd-textureoverlay-1  bd-slide item"
    
 data-url="<?php echo $document->params->get('s1b'); ?>"
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <h1 class=" bd-textblock-37 animated bd-animation-4 animated bd-animation-5 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="0ms,0ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s1'); ?><?php } ?>
</h1>
	
		<h1 class=" bd-textblock-13 animated bd-animation-7 animated bd-animation-8 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="500ms,200ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s1a'); ?><?php } ?>
</h1>
        </div>
    </div>
</div>
	
		<div class=" bd-slide-1 bd-background-width bd-textureoverlay bd-textureoverlay-13  bd-slide item"
    
 data-url="<?php echo $document->params->get('s2b'); ?>"
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <h1 class=" bd-textblock-56 animated bd-animation-26 animated bd-animation-27 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="0ms,0ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s2'); ?><?php } ?>
</h1>
	
		<h1 class=" bd-textblock-55 animated bd-animation-24 animated bd-animation-25 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="500ms,200ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s2a'); ?><?php } ?>
</h1>
        </div>
    </div>
</div>
	
		<div class=" bd-slide-15 bd-background-width bd-textureoverlay bd-textureoverlay-2  bd-slide item"
    
 data-url="<?php echo $document->params->get('s3b'); ?>"
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <h1 class=" bd-textblock-11 animated bd-animation-3 animated bd-animation-6 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="0ms,0ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s3'); ?><?php } ?>
</h1>
	
		<h1 class=" bd-textblock-8 animated bd-animation-1 animated bd-animation-2 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="500ms,200ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s3a'); ?><?php } ?>
</h1>
        </div>
    </div>
</div>
	
		<div class=" bd-slide-16 bd-background-width bd-textureoverlay bd-textureoverlay-3  bd-slide item"
    
 data-url="<?php echo $document->params->get('s4b'); ?>"
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <h1 class=" bd-textblock-14 animated bd-animation-11 animated bd-animation-12 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="0ms,0ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s4'); ?><?php } ?>
</h1>
	
		<h1 class=" bd-textblock-12 animated bd-animation-9 animated bd-animation-10 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="500ms,200ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s4a'); ?><?php } ?>
</h1>
        </div>
    </div>
</div>
	
		<div class=" bd-slide-17 bd-background-width bd-textureoverlay bd-textureoverlay-4  bd-slide item"
    
 data-url="<?php echo $document->params->get('s5b'); ?>"
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            <h1 class=" bd-textblock-16 animated bd-animation-15 animated bd-animation-17 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="0ms,0ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s5'); ?><?php } ?>
</h1>
	
		<h1 class=" bd-textblock-15 animated bd-animation-13 animated bd-animation-14 bd-content-element" data-animation-name="fadeInRight,fadeOutRight" data-animation-event="slidein,slideout" data-animation-duration="1000ms,1000ms" data-animation-delay="500ms,200ms" data-animation-infinited="false,false">
<?php if ($dc == 1) { ?><?php echo $document->params->get('s5a'); ?><?php } ?>
</h1>
        </div>
    </div>
</div>
    </div>

    

    

    
        <div class="bd-left-button">
    <a class=" bd-carousel-6" href="#">
        <span class="bd-icon"></span>
    </a>
</div>

<div class="bd-right-button">
    <a class=" bd-carousel-6" href="#">
        <span class="bd-icon"></span>
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
                    carouselInterval: <?php echo $document->params->get('speed'); ?>,
                    carouselPause: "hover",
                    carouselWrap: true,
                    carouselRideOnStart: true
                }
            );
        }
        /* ]]> */
    </script>
</div></div>
	<?php if ($dcb == 1) { ?>
		<section class=" bd-section-3 bd-page-width bd-tagstyles bd-custom-image animated bd-animation-16 " data-animation-name="flash" data-animation-event="onload" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false" id="section4" data-section-title="Four Columns">
    <div class="bd-container-inner bd-margins clearfix">
        <div class=" bd-layoutcontainer-3 bd-background-width  bd-columns bd-no-margins">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row 
 bd-row-flex 
 bd-row-align-top">
                <div class=" bd-columnwrapper-9 
 col-lg-3
 col-sm-6">
    <div class="bd-layoutcolumn-9 bd-column" ><div class="bd-vertical-align-wrapper"><a class="bd-imagelink-1  bd-own-margins "  href="<?php echo $document->params->get('cl1'); ?>">
<img class=" animated bd-animation-22 img-thumbnail" data-animation-name="bounce" data-animation-event="hover" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false" src="<?php echo $document->params->get('cf1'); ?>">
</a>
	
		<h3 class=" bd-textblock-1 bd-content-element">
<?php echo $document->params->get('ct1'); ?>
</h3>
	
		<p class=" bd-textblock-2 bd-content-element">
<?php echo $document->params->get('cte1'); ?>
</p></div></div>
</div>
	
		<div class=" bd-columnwrapper-18 
 col-lg-3
 col-sm-6">
    <div class="bd-layoutcolumn-18 bd-column" ><div class="bd-vertical-align-wrapper"><a class="bd-imagelink-2  bd-own-margins "  href="<?php echo $document->params->get('cl2'); ?>">
<img class=" bd-imagestyles-6 animated bd-animation-23" data-animation-name="bounce" data-animation-event="hover" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false" src="<?php echo $document->params->get('cf2'); ?>">
</a>
	
		<h3 class=" bd-textblock-3 bd-content-element">
<?php echo $document->params->get('ct2'); ?>
</h3>
	
		<p class=" bd-textblock-4 bd-content-element">
<?php echo $document->params->get('cte2'); ?>
</p></div></div>
</div>
	
		<div class=" bd-columnwrapper-20 
 col-lg-3
 col-sm-6">
    <div class="bd-layoutcolumn-20 bd-column" ><div class="bd-vertical-align-wrapper"><a class="bd-imagelink-3  bd-own-margins "  href="<?php echo $document->params->get('cl3'); ?>">
<img class=" bd-imagestyles-18 animated bd-animation-28" data-animation-name="bounce" data-animation-event="hover" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false" src="<?php echo $document->params->get('cf3'); ?>">
</a>
	
		<h3 class=" bd-textblock-5 bd-content-element">
<?php echo $document->params->get('ct3'); ?>
</h3>
	
		<p class=" bd-textblock-6 bd-content-element">
<?php echo $document->params->get('cte3'); ?>
</p></div></div>
</div>
	
		<div class=" bd-columnwrapper-22 
 col-lg-3
 col-sm-6">
    <div class="bd-layoutcolumn-22 bd-column" ><div class="bd-vertical-align-wrapper"><a class="bd-imagelink-4  bd-own-margins "  href="<?php echo $document->params->get('cl4'); ?>">
<img class=" bd-imagestyles-19 animated bd-animation-29" data-animation-name="bounce" data-animation-event="hover" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false" src="<?php echo $document->params->get('cf4'); ?>">
</a>
	
		<h3 class=" bd-textblock-7 bd-content-element">
<?php echo $document->params->get('ct4'); ?>
</h3>
	
		<p class=" bd-textblock-9 bd-content-element">
<?php echo $document->params->get('cte4'); ?>
</p></div></div>
</div>
            </div>
        </div>
    </div>
</div>
    </div>
</section><?php } ?>
	
		<?php if ($ibc == 1) { ?><section class=" bd-section-8 bd-tagstyles" id="section3" data-section-title="Container in Full-Width Section">
    <div class="bd-container-inner bd-margins clearfix">
        <h1 class=" bd-textblock-58 animated bd-animation-18 bd-content-element" data-animation-name="fadeInLeft" data-animation-event="scroll" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false">
<?php echo $document->params->get('it1'); ?>
</h1>
	
		<div class=" bd-spacer-15 clearfix"></div>
	
		<a 
 href="<?php echo $document->params->get('ibl'); ?>" class="bd-linkbutton-19 animated bd-animation-20  bd-button-19  bd-own-margins bd-content-element"  data-animation-name="fadeInRightBig" data-animation-event="scroll" data-animation-duration="1500ms" data-animation-delay="0ms" data-animation-infinited="false"   >
    <?php echo $document->params->get('ibn'); ?>
</a>
    </div>
</section><?php } ?>
	
		<?php if ($pc == 1) { ?><div class=" bd-parallaxbackground-2 bd-parallax-bg-effect" data-control-selector=".bd-section-2"><section class=" bd-section-2 bd-tagstyles animated bd-animation-21 " data-animation-name="zoomIn" data-animation-event="scroll" data-animation-duration="2000ms" data-animation-delay="0ms" data-animation-infinited="false" id="section4" data-section-title="Design Three Columns">
    <div class="bd-container-inner bd-margins clearfix">
        <div class=" bd-layoutcontainer-12 bd-columns bd-no-margins">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row 
 bd-row-flex 
 bd-row-align-bottom">
                <div class=" bd-columnwrapper-27 
 col-lg-4
 col-md-4
 col-sm-6">
    <div class="bd-layoutcolumn-27 animated bd-animation-30 bd-textureoverlay bd-textureoverlay-5 bd-column"  data-animation-name="bounce" data-animation-event="hover" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false"><div class="bd-vertical-align-wrapper"><h3 class=" bd-textblock-21 bd-content-element">
<?php echo $document->params->get('p2'); ?>
</h3>
	
		<div class="bd-separator-2  bd-separator-center bd-separator-content-center clearfix" >
    <div class="bd-container-inner">
        <div class="bd-separator-inner">
            
        </div>
    </div>
</div>
	
		<p class=" bd-textblock-24 bd-content-element">
<?php echo $document->params->get('p3'); ?>
</p>
	
		<div class=" bd-spacer-2 clearfix"></div>
	
		<a 
 href="<?php echo $document->params->get('p5'); ?>" class="bd-linkbutton-6  bd-button-12 bd-icon bd-icon-30 bd-own-margins bd-content-element"    >
    <?php echo $document->params->get('p4'); ?>
</a></div></div>
</div>
	
		<div class=" bd-columnwrapper-30 
 col-lg-4
 col-md-4
 col-sm-6">
    <div class="bd-layoutcolumn-30 animated bd-animation-31 bd-textureoverlay bd-textureoverlay-10 bd-column"  data-animation-name="bounce" data-animation-event="hover" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false"><div class="bd-vertical-align-wrapper"><h3 class=" bd-textblock-26 bd-content-element">
<?php echo $document->params->get('p7'); ?>
</h3>
	
		<div class="bd-separator-5  bd-separator-center bd-separator-content-center clearfix" >
    <div class="bd-container-inner">
        <div class="bd-separator-inner">
            
        </div>
    </div>
</div>
	
		<p class=" bd-textblock-28 bd-content-element">
<?php echo $document->params->get('p8'); ?>
</p>
	
		<div class=" bd-spacer-5 clearfix"></div>
	
		<a 
 href="<?php echo $document->params->get('p10'); ?>" class="bd-linkbutton-11  bd-button-14 bd-icon bd-icon-38 bd-own-margins bd-content-element"    >
    <?php echo $document->params->get('p9'); ?>
</a></div></div>
</div>
	
		<div class=" bd-columnwrapper-34 
 col-lg-4
 col-md-4
 col-sm-6">
    <div class="bd-layoutcolumn-34 animated bd-animation-32 bd-textureoverlay bd-textureoverlay-12 bd-column"  data-animation-name="bounce" data-animation-event="hover" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false"><div class="bd-vertical-align-wrapper"><h3 class=" bd-textblock-30 bd-content-element">
<?php echo $document->params->get('p12'); ?>
</h3>
	
		<div class="bd-separator-7  bd-separator-center bd-separator-content-center clearfix" >
    <div class="bd-container-inner">
        <div class="bd-separator-inner">
            
        </div>
    </div>
</div>
	
		<p class=" bd-textblock-32 bd-content-element">
<?php echo $document->params->get('p13'); ?>
</p>
	
		<div class=" bd-spacer-7 clearfix"></div>
	
		<a 
 href="<?php echo $document->params->get('p15'); ?>" class="bd-linkbutton-15  bd-button-15 bd-icon bd-icon-52 bd-own-margins bd-content-element"    >
    <?php echo $document->params->get('p14'); ?>
</a></div></div>
</div>
            </div>
        </div>
    </div>
</div>
    </div>
</section></div><?php } ?>
	
		<div class="bd-containereffect-14 container-effect container "><div class=" bd-layoutbox-2  bd-no-margins clearfix">
    <div class="bd-container-inner">
        <?php
    renderTemplateFromIncludes('joomlaposition_10');
?>
    </div>
</div>
</div>
	
		<div class=" bd-stretchtobottom-1 bd-stretch-to-bottom" data-control-selector=".bd-contentlayout-9">
<div class="bd-contentlayout-9  bd-sheetstyles-2  bd-no-margins bd-margins" >
    <div class="bd-container-inner">

        <div class="bd-flex-vertical bd-stretch-inner bd-contentlayout-offset">
            
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
	
		<div class=" bd-layoutcontainer-28 bd-columns bd-no-margins">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row 
 bd-row-flex 
 bd-row-align-top">
                <div class=" bd-columnwrapper-60 
 col-md-3
 col-sm-6
 col-xs-12">
    <div class="bd-layoutcolumn-60 bd-column" ><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_2');
?></div></div>
</div>
	
		<div class=" bd-columnwrapper-61 
 col-md-3
 col-sm-6
 col-xs-12">
    <div class="bd-layoutcolumn-61 bd-column" ><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_3');
?></div></div>
</div>
	
		<div class=" bd-columnwrapper-62 
 col-md-3
 col-sm-6
 col-xs-12">
    <div class="bd-layoutcolumn-62 bd-column" ><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_4');
?></div></div>
</div>
	
		<div class=" bd-columnwrapper-63 
 col-md-3
 col-sm-6
 col-xs-12">
    <div class="bd-layoutcolumn-63 bd-column" ><div class="bd-vertical-align-wrapper"><?php
    renderTemplateFromIncludes('joomlaposition_5');
?></div></div>
</div>
            </div>
        </div>
    </div>
</div>
	
		<div data-smooth-scroll data-animation-time="250" class=" bd-smoothscroll-3"><a href="#" class=" bd-backtotop-1 ">
    <span class="bd-icon-66 bd-icon "></span>
</a></div>
	
		<footer class=" bd-footerarea-1 bd-margins">
        <section class=" bd-section-1 bd-tagstyles" id="section3" data-section-title="Simple Footer">
    <div class="bd-container-inner bd-margins clearfix">
        <div class=" bd-layoutbox-4 bd-no-margins clearfix">
    <div class="bd-container-inner">
        <p class=" bd-textblock-17 bd-no-margins bd-content-element">

<?php if ($fooc== 1) { ?>Copyright © <?php echo date("Y");?>, <b><?php echo $document->params->get('footer1'); ?></b> All Rights Reserved.<?php } ?>

</p>
    </div>
</div>
	
		<?php if ($cfm== 1) { ?><div class=" bd-layoutbox-13 bd-no-margins clearfix">
    <div class="bd-container-inner">
        <p class=" bd-textblock-20 bd-no-margins bd-content-element">
  
<?php if ($cfl1== 1) { ?><a href="<?php echo $document->params->get('m2'); ?>"><?php echo $document->params->get('m1'); ?> </a>|<?php } ?>
<?php if ($cfl2== 1) { ?><a href="<?php echo $document->params->get('m4'); ?>"><?php echo $document->params->get('m3'); ?></a> |<?php } ?>
<?php if ($cfl3== 1) { ?><a href="<?php echo $document->params->get('m6'); ?>"><?php echo $document->params->get('m5'); ?></a> | <?php } ?>
<?php if ($cfl4== 1) { ?><a href="<?php echo $document->params->get('m8'); ?>"><?php echo $document->params->get('m7'); ?></a> <?php } ?>
</p>
    </div>
</div>
    </div><?php } ?>
</section>
	
		<section class=" bd-section-7 bd-tagstyles" id="section4" data-section-title="Three Columns Sheet Width">
    <div class="bd-container-inner bd-margins clearfix">
        
	
		<p class=" bd-textblock-23 animated bd-animation-33 bd-content-element" data-animation-name="fadeInUp" data-animation-event="scroll" data-animation-duration="1000ms" data-animation-delay="0ms" data-animation-infinited="false">

        Design by:<a href="https://diablodesign.eu" target="new">DiabloDesign.eu</a>

</p>
    </div>
</section>
</footer>
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