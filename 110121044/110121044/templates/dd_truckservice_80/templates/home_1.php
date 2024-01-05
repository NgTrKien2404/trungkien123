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
    ?><?php 
	$app = JFactory::getApplication();
    $tplparams	= $app->getTemplate(true)->params;
	$fc = htmlspecialchars($tplparams->get('fc'));
$tc = htmlspecialchars($tplparams->get('tc'));
$pc = htmlspecialchars($tplparams->get('pc'));
$gc = htmlspecialchars($tplparams->get('gc'));
$ic = htmlspecialchars($tplparams->get('ic'));
$pc = htmlspecialchars($tplparams->get('pc'));
$mc = htmlspecialchars($tplparams->get('mc'));
$allic = htmlspecialchars($tplparams->get('allic'));
$footerc = htmlspecialchars($tplparams->get('footerc'));
$galleryc = htmlspecialchars($tplparams->get('galleryc'));

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
    <script src="<?php echo addThemeVersion($document->templateUrl . '/script.js'); ?>"></script>
    <!--[if lte IE 9]>
    <script src="<?php echo addThemeVersion($document->templateUrl . '/script.ie.js'); ?>"></script>
    <![endif]-->
    <!--
 * Szablon został wypalony w  Diablodesign.
 * www.diablodesign.eu
 * biuro@diablodesign.eu
 * tel.666-977-944
 -->
</head>
<style>
    .bd-section-2 {background-image: url(<?php echo $document->params->get('foto1'); ?>);}
	.bd-slide-2 {background-image: url(<?php echo $document->params->get('foto2'); ?>);}
	.bd-slide-3 {background-image: url(<?php echo $document->params->get('foto3'); ?>);}
	.bd-slide-4 {background-image: url(<?php echo $document->params->get('foto4'); ?>);}
	.bd-slide-16 {background-image: url(<?php echo $document->params->get('foto5'); ?>);}
	.bd-slide-17 {background-image: url(<?php echo $document->params->get('foto6'); ?>);}
	.bd-layoutbox-1 {background-image: url(<?php echo $document->params->get('bg'); ?>);}
    </style>
<body class=" bootstrap bd-body-1 bd-pagebackground">
    <section class=" bd-section-2 bd-tagstyles" id="section2" data-section-title="start">
    <div class="bd-vertical-align-section-wrapper">
        <div class=" bd-layoutbox-7 clearfix">
    <div class="bd-container-inner"><?php
$app = JFactory::getApplication();
$themeParams = $app->getTemplate(true)->params;
$sitename = $app->getCfg('sitename');
$logoSrc = '';
ob_start();
?>
<?php echo JURI::base() . 'templates/' . JFactory::getApplication()->getTemplate(); ?>/images/designer/logo.png
<?php
$logoSrc = ob_get_clean();
$logoLink = '';
if ($themeParams->get('logoFile'))
{
$logoSrc = JURI::root() . $themeParams->get('logoFile');
}
if ($themeParams->get('logoLink'))
{
$logoLink = $themeParams->get('logoLink');
}
?>
<a class=" bd-logo-3" href="<?php echo $logoLink; ?>">
<img class=" bd-imagestyles-84" src="<?php echo $logoSrc; ?>" alt="<?php echo $sitename; ?>">
</a>
	
		<?php
    renderTemplateFromIncludes('hmenu_3', array());
?>
    </div>
</div>
	
		<div class=" bd-layoutbox-9 clearfix">
    <div class="bd-container-inner">
        <div id="carousel-1" class=" bd-slider-1 carousel slide">
    

    
    <div class="bd-container-inner">

    

    <div class="bd-slides carousel-inner">
        <div class=" bd-slide-2 item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-3 item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-4 item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-16 item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
	
		<div class=" bd-slide-17 item"
    
    
    >
    <div class="bd-container-inner">
        <div class="bd-container-inner-wrapper">
            
        </div>
    </div>
</div>
    </div>

    

    
    </div>

    

    <script>
        if ('undefined' !== typeof initSlider){
            initSlider('.bd-slider-1', 'left-button', 'right-button', '.bd-carousel-4', '.bd-indicators-2', 3000, "hover", true, true);
        }
    </script>
</div>
	
		<div class=" bd-animation-1 animated" data-animation-name="fadeInDown"
                                    data-animation-event="onload"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="0ms"
                                    data-animation-infinited="false"
                                    ><div class=" bd-textgroup-1">
    <div class="bd-container-inner">
        <div class="media">
            
            <div class="media-body">
                
                    <h4 class="media-heading  bd-container-4 bd-tagstyles"><?php echo $document->params->get('text1'); ?></h4>
                
                <div class=" bd-container-10 bd-tagstyles">
    
    <p><span style="font-family: Lato; font-size: 42px; line-height: 46.2px;"><?php echo $document->params->get('text2'); ?></span><br></p>
 </div>
            </div>
            
        </div>
    </div>
</div>
</div>
	
		<div class=" bd-animation-2 animated" data-animation-name="bounce"
                                    data-animation-event="onload"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="300ms"
                                    data-animation-infinited="false"
                                    >
<p class=" bd-textblock-3 hidden-xs bd-tagstyles">
    <?php echo $document->params->get('text3'); ?>
</p>
</div>
	
		<div class=" bd-layoutcontainer-3">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row
                
                
 bd-row-align-top
                
                ">
                <div class=" 
 col-lg-24">
    <div class="bd-layoutcolumn-24"><div class="bd-vertical-align-wrapper"><a href="<?php echo $document->params->get('b2'); ?>" class=" bd-linkbutton-8 bd-button-68 bd-icon-4"   >
<?php echo $document->params->get('b1'); ?>
</a></div></div>
</div>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
    </div>
</section>
	
		<?php if ($galleryc == 1) { ?><section class=" bd-section-3 hidden-xs bd-tagstyles" id="section4" data-section-title="3 images box">
    <div class="bd-vertical-align-section-wrapper">
        <div class=" bd-animation-4 animated" data-animation-name="bounceInUp"
                                    data-animation-event="scroll"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="100ms"
                                    data-animation-infinited="false"
                                    >
<div class="container  bd-containereffect-6"><div class=" bd-layoutcontainer-13">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row
                
 bd-row-flex
                
 bd-row-align-middle
                
                ">
                <div class=" 
 col-md-8
 col-sm-8">
    <div class="bd-layoutcolumn-26"><div class="bd-vertical-align-wrapper"><div class=" bd-bottomcornersshadow-1">
<img class="bd-imagestyles-76 bd-imagelink-4" src="<?php echo $document->params->get('foto9'); ?>"></div>
	
		<h4 class=" bd-textblock-15 bd-tagstyles">
    <?php echo $document->params->get('title6'); ?>
</h4>
	
		<p class=" bd-textblock-17 bd-tagstyles">
    <?php echo $document->params->get('text6'); ?>
</p>
	
		<a href="<?php echo $document->params->get('link6'); ?>" class=" bd-linkbutton-1 btn   btn-primary bd-icon-78"   >
<?php echo $document->params->get('button6'); ?>
</a></div></div>
</div>
	
		<div class=" 
 col-md-8
 col-sm-8">
    <div class="bd-layoutcolumn-27"><div class="bd-vertical-align-wrapper"><div class=" bd-bottomcornersshadow-2">
<img class="bd-imagestyles-77 bd-imagelink-5   " src="<?php echo $document->params->get('foto7'); ?>"></div>
	
		<h4 class=" bd-textblock-18 bd-tagstyles">
    <?php echo $document->params->get('title7'); ?>
</h4>
	
		<p class=" bd-textblock-19 bd-tagstyles">
    <?php echo $document->params->get('text7'); ?>
</p>
	
		<a href="<?php echo $document->params->get('link7'); ?>" class=" bd-linkbutton-3 btn   btn-primary bd-icon-79"   >
<?php echo $document->params->get('button7'); ?>
</a></div></div>
</div>
	
		<div class=" 
 col-md-8
 col-sm-8">
    <div class="bd-layoutcolumn-28"><div class="bd-vertical-align-wrapper"><div class=" bd-bottomcornersshadow-3">
<img class="bd-imagestyles-78 bd-imagelink-8   " src="<?php echo $document->params->get('foto8'); ?>"></div>
	
		<h4 class=" bd-textblock-20 bd-tagstyles">
    <?php echo $document->params->get('title8'); ?>
</h4>
	
		<p class=" bd-textblock-21 bd-tagstyles">
    <?php echo $document->params->get('text8'); ?>
</p>
	
		<a href="<?php echo $document->params->get('link8'); ?>" class=" bd-linkbutton-4 btn   btn-primary bd-icon-86"   >
<?php echo $document->params->get('button8'); ?>
</a></div></div>
</div>
            </div>
        </div>
    </div>
</div></div>
</div>
    </div>
</section><?php } ?>
	
		<div class=" bd-stretchtobottom-1 bd-stretch-to-bottom" data-control-selector=".bd-contentlayout-9"><div class="bd-sheetstyles-2 bd-contentlayout-9 ">
    <div class="bd-container-inner">
        <div class="bd-flex-vertical bd-stretch-inner">
            
            <div class="bd-flex-horizontal bd-flex-wide">
                
 <?php renderTemplateFromIncludes('sidebar_area_3'); ?>
                <div class="bd-flex-vertical bd-flex-wide">
                    
 <?php renderTemplateFromIncludes('sidebar_area_4'); ?>
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
                    
 <?php renderTemplateFromIncludes('sidebar_area_5'); ?>
                </div>
                
 <?php renderTemplateFromIncludes('sidebar_area_2'); ?>
            </div>
            
 <?php renderTemplateFromIncludes('sidebar_area_6'); ?>
        </div>
    </div>
</div></div>
	
		<?php if ($mc == 1) { ?><div class=" bd-layoutbox-1 clearfix">
    <div class="bd-container-inner">
        <div class=" bd-animation-10 animated" data-animation-name="fadeInUp"
                                    data-animation-event="scroll"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="200ms"
                                    data-animation-infinited="false"
                                    ><div class="bd-imagestyles-15 bd-googlemap-1 ">
    <div class="embed-responsive" style="height: 100%; width: 100%;">
      <iframe class="embed-responsive-item"
                src="http://maps.google.com/maps?output=embed&q=<?php echo $document->params->get('map1'); ?>, <?php echo $document->params->get('map2'); ?>&t=m"></iframe>
    </div>
</div>
</div>
    </div>
</div><?php } ?>
	
		<footer class=" bd-footerarea-1">
       <?php if ($footerc == 1) { ?> <section class=" bd-section-6 bd-tagstyles" id="section4" data-section-title="Info pasek">
    <div class="bd-vertical-align-section-wrapper">
        <div class="container  bd-containereffect-8"><div class=" bd-layoutcontainer-16">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row
                
 bd-row-flex
                
 bd-row-align-middle
                
                ">
                <div class=" 
 col-md-8
 col-sm-12">
    <div class="bd-layoutcolumn-37"><div class="bd-vertical-align-wrapper"><div class=" bd-textgroup-2">
    <div class="bd-container-inner">
        <div class="media">
            
 <img class="bd-imagestyles-64 bd-imagelink-9 pull-left media-object " src="<?php echo $document->params->get('icon1'); ?>">
            <div class="media-body">
                
                
                <div class=" bd-container-60 bd-tagstyles">
    
    <?php echo $document->params->get('icont1'); ?><br>
<?php echo $document->params->get('icont2'); ?>
 </div>
            </div>
            
        </div>
    </div>
</div></div></div>
</div>
	
		<div class=" 
 col-md-8
 col-sm-12">
    <div class="bd-layoutcolumn-38"><div class="bd-vertical-align-wrapper"><div class=" bd-textgroup-3">
    <div class="bd-container-inner">
        <div class="media">
            
 <img class="bd-imagestyles-65 bd-imagelink-10 pull-left media-object " src="<?php echo $document->params->get('icon2'); ?>">
            <div class="media-body">
                
                
                <div class=" bd-container-64 bd-tagstyles">
    
    <?php echo $document->params->get('icont3'); ?><br>
<?php echo $document->params->get('icont4'); ?>
 </div>
            </div>
            
        </div>
    </div>
</div></div></div>
</div>
	
		<div class=" 
 col-md-8
 col-sm-12">
    <div class="bd-layoutcolumn-39"><div class="bd-vertical-align-wrapper"><div class=" bd-textgroup-4">
    <div class="bd-container-inner">
        <div class="media">
            
 <img class="bd-imagestyles-66 bd-imagelink-11 pull-left media-object " src="<?php echo $document->params->get('icon3'); ?>">
            <div class="media-body">
                
                
                <div class=" bd-container-66 bd-tagstyles">
    
    <?php echo $document->params->get('icont5'); ?><br>								
<a href="mailto:<?php echo $document->params->get('icont6'); ?>"><?php echo $document->params->get('icont6'); ?></a>
 </div>
            </div>
            
        </div>
    </div>
</div></div></div>
</div>
            </div>
        </div>
    </div>
</div></div>
    </div>
</section><?php } ?>
	
		<div class=" bd-layoutbox-5 clearfix">
    <div class="bd-container-inner">
        <div class=" bd-layoutcontainer-10">
    <div class="bd-container-inner">
        <div class="container-fluid">
            <div class="row
                
                
 bd-row-align-top
                
                ">
                <div class=" 
 col-lg-6
 col-sm-12">
    <div class="bd-layoutcolumn-18"><div class="bd-vertical-align-wrapper"><div class=" bd-animation-13 animated" data-animation-name="bounce"
                                    data-animation-event="scroll"
                                    data-animation-duration="1000ms"
                                    data-animation-delay="700ms"
                                    data-animation-infinited="false"
                                    >
<div class=" bd-textblock-59 bd-tagstyles">
    <font color="#ffffff">
    Designed by :</font> <a href="http://diablodesign.eu"><font color="#85c200">www.diablodesign.eu.
</font></a>
</div>
</div></div></div>
</div>
	
		<div class=" 
 col-lg-15
 col-sm-12">
    <div class="bd-layoutcolumn-20"><div class="bd-vertical-align-wrapper"><p class=" bd-textblock-1 bd-tagstyles">
    Copyright © 2015 <?php echo $document->params->get('footer1'); ?> Rights Reserved.
</p></div></div>
</div>
	
		<div class=" 
 col-lg-3
 col-sm-12">
    <div class="bd-layoutcolumn-9"><div class="bd-vertical-align-wrapper"><div class=" bd-socialicons-2">
    
       <?php if ($allic == 1) { ?> <?php if ($fc == 1) { ?><a href="<?php echo $document->params->get('facebook'); ?>"target="_blank"class=" bd-socialicon-5 bd-socialicon" >   
    <span></span><span></span>
</a><?php } ?>
    
       <?php if ($tc == 1) { ?> <a href="<?php echo $document->params->get('twitter'); ?>" target="_blank" class=" bd-socialicon-6 bd-socialicon">
    <span></span><span></span>
</a><?php } ?>
    
        <?php if ($gc == 1) { ?><a href="<?php echo $document->params->get('google'); ?>" target="_blank" class=" bd-socialicon-7 bd-socialicon">
    <span></span><span></span>
</a><?php } ?>
    
        <?php if ($pc == 1) { ?><a href="<?php echo $document->params->get('pinterest'); ?>"target="_blank" class=" bd-socialicon-8 bd-socialicon">
    <span></span><span></span><?php } ?><?php } ?>
</a>
</div></div></div>
</div>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
</footer>
	
		<div data-animation-time="250" class=" bd-smoothscroll-3"><a href="#" class=" bd-backtotop-1">
    <span class=" bd-icon-66"></span>
</a></div>
</body>
</html>