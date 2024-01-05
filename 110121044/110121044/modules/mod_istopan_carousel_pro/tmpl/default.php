<?php
/**
* @version		1.2
* @module		Custom Carousel Pro
* Copyright (C) 2016 Istopan.gr All rights reserved.
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined("_JEXEC") or die("Restricted access");
$ctemplate = $params->get('ctemplate');
?>

<?php
if($ctemplate==1)
{
  require(JPATH_SITE.'/modules/mod_istopan_carousel_pro/tmpl/simple-carousel/simple-carousel.php');
}
else if($ctemplate==2)
{
  require(JPATH_SITE.'/modules/mod_istopan_carousel_pro/tmpl/slide-js/slide-js.php');
}
else if($ctemplate==3)
{
  require(JPATH_SITE.'/modules/mod_istopan_carousel_pro/tmpl/bxslider/bxslider.php');
}
?>




