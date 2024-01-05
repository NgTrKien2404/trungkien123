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
<body class=" bootstrap bd-body-4 bd-pagebackground">
    <header class=" bd-headerarea-1">
        <div class="container  bd-containereffect-1"><div class=" bd-layoutbox-8 clearfix">
    <div class="bd-container-inner">
        <?php
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
</div>
</header>
	
		<div class="container  bd-containereffect-5"><div class="bd-sheetstyles bd-contentlayout-4 ">
    <div class="bd-container-inner">
        <div class="bd-flex-vertical bd-stretch-inner">
            
            <div class="bd-flex-horizontal bd-flex-wide">
                
 <?php renderTemplateFromIncludes('sidebar_area_3'); ?>
                <div class="bd-flex-vertical bd-flex-wide">
                    
                    <div class=" bd-layoutitemsbox-21 bd-flex-wide">
    <div class=" bd-content-3">
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
                    
                </div>
                
            </div>
            
        </div>
    </div>
</div></div>
	
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