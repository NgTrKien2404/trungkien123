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
<body class=" bootstrap bd-body-6 bd-pagebackground bd-margins">
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
    
 data-target="_blank"
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-10 bd-slide item"
    
 data-url="<?php echo $document->params->get('bl2'); ?>"
    
 data-target="_blank"
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-11 bd-slide item"
    
 data-url="<?php echo $document->params->get('bl3'); ?>"
    
 data-target="_blank"
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-13 bd-slide item"
    
 data-url="<?php echo $document->params->get('bl4'); ?>"
    
 data-target="_blank"
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-14 bd-slide item"
    
 data-url="<?php echo $document->params->get('bl5'); ?>"
    
 data-target="_blank"
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
	
		<div class=" bd-stretchtobottom-7 bd-stretch-to-bottom" data-control-selector=".bd-contentlayout-6">
<div class="bd-contentlayout-6  bd-sheetstyles-5  bd-no-margins bd-margins" >
    <div class="bd-container-inner">

        <div class="bd-flex-vertical bd-stretch-inner bd-contentlayout-offset">
            
 <?php renderTemplateFromIncludes('sidebar_area_1'); ?>
            <div class="bd-flex-horizontal bd-flex-wide bd-no-margins">
                
 <?php renderTemplateFromIncludes('sidebar_area_3'); ?>
                <div class="bd-flex-vertical bd-flex-wide bd-no-margins">
                    

                    <div class=" bd-layoutitemsbox-23 bd-flex-wide bd-no-margins">
    <div class=" bd-content-6">
    <?php
            $document = JFactory::getDocument();
            echo $document->view->renderSystemMessages();
    $document->view->componentWrapper('blog_3');
    echo '<jdoc:include type="component" />';
    ?>
</div>
</div>

                    
 <?php renderTemplateFromIncludes('sidebar_area_6'); ?>
                </div>
                
            </div>
            
        </div>

    </div>
</div></div>
	
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
	
		<div data-smooth-scroll data-animation-time="250" class=" bd-smoothscroll-3"><a href="#" class=" bd-backtotop-1 ">
    <span class="bd-icon-66 bd-icon "></span>
</a></div>
</body>
</html>