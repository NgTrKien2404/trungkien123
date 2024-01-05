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
   $boxc = htmlspecialchars($tplparams->get('boxc'));
   $mc = htmlspecialchars($tplparams->get('mc'));
   $fi = htmlspecialchars($tplparams->get('fi'));
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
    
</head>
<body class=" bootstrap bd-body-3 bd-pagebackground">
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
	
		<div class="bd-sheetstyles bd-contentlayout-3 ">
    <div class="bd-container-inner">

        
        <div class="bd-flex-vertical bd-stretch-inner">
            
            <div class="bd-flex-horizontal bd-flex-wide">
                
 <?php renderTemplateFromIncludes('sidebar_area_3'); ?>
                <div class="bd-flex-vertical bd-flex-wide">
                    

                    <div class=" bd-layoutitemsbox-19 bd-flex-wide">
    <div class=" bd-content-5">
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
</div>
	
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

Copyright © <?php echo date("Y");?>, <b><?php echo $document->params->get('footer1'); ?></b>. All Rights Reserved.<br>
Dedign by :<a href="https://diablodesign.eu" target="blank">DiabloDesign.eu</a>


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
</body>
</html>