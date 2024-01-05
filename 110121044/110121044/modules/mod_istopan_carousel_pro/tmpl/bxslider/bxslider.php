<?php
/**
* @version		1.2
* @module		Custom Carousel Pro
* Copyright (C) 2017 Istopan.gr All rights reserved.
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined("_JEXEC") or die("Restricted access");
$doc = JFactory::getDocument();
$jqueryeas = $params->get('jqueryeas');
if ($jqueryeas=='1')
{
	$doc->addScript('modules/mod_istopan_carousel_pro/assets/jquery.easing.1.3.js', 'text/javascript');
}
$jqueryenbx = $params->get('jqueryenbx');
if ($jqueryenbx=='1')
{
	JHtml::_('jquery.framework');
}

$doc->addScript('modules/mod_istopan_carousel_pro/assets/jquery.bxslider.js', 'text/javascript');
$cheight = $params->get('cheight');
$cwidth = $params->get('cwidth');
$tbposition = $params->get('tbposition');
$cbheight = $params->get('cbheight');
$cbwidth = $params->get('cbwidth');
$jsrandombx = $params->get('jsrandombx');
$litextsdbx = $params->get('litextsdbx');
$cmskbrbx = $params->get('cmskbrbx');
$cmskbsbx = $params->get('cmskbsbx');
?>
  
<style type="text/css">

/** VARIABLES
===================================*/
/** RESET AND LAYOUT
===================================*/
.bxslide<?php echo $module->id; ?> 
.bx-wrapper<?php echo $module->id; ?> {
  position: relative;
  margin-bottom: <?php echo $params->get('cbxmarbt'); ?>;
  padding: 0;
  *zoom: 1;
  -ms-touch-action: pan-y;
  touch-action: pan-y;
  margin-top: <?php echo $params->get('tposition'); ?> !important;
}
.bx-wrapper<?php echo $module->id; ?> img {
  max-width: 100%;
  display: block;
}
.bxslider {
  margin: 0;
  padding: 0;
}
ul.bxslider {
  list-style: none;
}
.bx-viewport {
  /*fix other elements on the page moving (on Chrome)*/
  -webkit-transform: translatez(0);
  height: <?php echo $params->get('cheight'); ?> !Important;
}
/** THEME
===================================*/
.bx-wrapper<?php echo $module->id; ?> {
  <?php if($params->get('cbgnd')): ?>background:<?php echo $params->get('cbgnd'); ?>;<?php endif; ?> 
  border: <?php echo $params->get('cbxborder'); ?>;
  box-shadow: <?php echo $params->get('cbxshadow'); ?>;
}
.bx-wrapper<?php echo $module->id; ?> .bx-pager,
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto {
  position: absolute;
  /*bottom: -30px;*/
  width: 100%;
}
/* LOADER */
.bx-wrapper<?php echo $module->id; ?> .bx-loading {
  min-height: 50px;
  height: 100%;
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 2000;
}
.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
/* PAGER */
.bx-wrapper<?php echo $module->id; ?> .bx-pager {
  text-align: center;
  font-size: .85em;
  font-weight: bold;
  /*padding-top: 20px;*/
}
.bx-wrapper<?php echo $module->id; ?> .bx-pager.bx-default-pager a {
  background: <?php echo $params->get('bxpgclr'); ?>;
  text-indent: -9999px;
  display: block;
  width: <?php echo $params->get('bxpgwd'); ?>px;
  height: <?php echo $params->get('bxpghg'); ?>px;
  margin: <?php echo $params->get('bxpgmrg'); ?>;
  outline: 0;
  -moz-border-radius: <?php echo $params->get('bxpgrad'); ?>px;
  -webkit-border-radius: <?php echo $params->get('bxpgrad'); ?>px;
  border-radius: <?php echo $params->get('bxpgrad'); ?>px;
}
.bx-wrapper<?php echo $module->id; ?> .bx-pager.bx-default-pager a:hover,
.bx-wrapper<?php echo $module->id; ?> .bx-pager.bx-default-pager a.active,
.bx-wrapper<?php echo $module->id; ?> .bx-pager.bx-default-pager a:focus {
  background: <?php echo $params->get('bxpgclrh'); ?>;
}
.bx-wrapper<?php echo $module->id; ?> .bx-pager-item,
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-controls-auto-item {
  display: inline-block;
  vertical-align: bottom;
  *zoom: 1;
  *display: inline;
}
.bx-wrapper<?php echo $module->id; ?> .bx-pager-item {
  font-size: 0;
  line-height: 0;
}
/* DIRECTION CONTROLS (NEXT / PREV) */
.bx-wrapper<?php echo $module->id; ?> .bx-prev {
  left: 10px;
  background: url('<?php echo $mosConfig_live_site; ?>modules/mod_istopan_carousel_pro/tmpl/bxslider/images/<?php echo $params->get('bxnavstyle'); ?>.png') no-repeat 0 -32px;
}
.bx-wrapper<?php echo $module->id; ?> .bx-prev:hover,
.bx-wrapper<?php echo $module->id; ?> .bx-prev:focus {
  background-position: 0 0;
}
.bx-wrapper<?php echo $module->id; ?> .bx-next {
  right: 10px;
  background: url('<?php echo $mosConfig_live_site; ?>modules/mod_istopan_carousel_pro/tmpl/bxslider/images/<?php echo $params->get('bxnavstyle'); ?>.png') no-repeat -43px -32px;
}
.bx-wrapper<?php echo $module->id; ?> .bx-next:hover,
.bx-wrapper<?php echo $module->id; ?> .bx-next:focus {
  background-position: -43px 0;
}
.bx-wrapper<?php echo $module->id; ?> .bx-controls-direction a {
  position: absolute;
  top: <?php echo $params->get('bxnavtop'); ?>;
  margin-top: -16px;
  outline: 0;
  width: 32px;
  height: 32px;
  text-indent: -9999px;
  z-index: 9998;
}
.bx-wrapper<?php echo $module->id; ?> .bx-controls-direction a.disabled {
  display: none;
}
/* AUTO CONTROLS (START / STOP) */
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto {
  text-align: center;
}
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-start {
  display: block;
  text-indent: -9999px;
  width: 10px;
  height: 11px;
  outline: 0;
  background: url('<?php echo $mosConfig_live_site; ?>modules/mod_istopan_carousel_pro/tmpl/bxslider/images/<?php echo $params->get('bxnavstyle'); ?>.png') -86px -11px no-repeat;
  margin: 0 3px;
}
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-start:hover,
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-start.active,
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-start:focus {
  background-position: -86px 0;
}
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-stop {
  display: block;
  text-indent: -9999px;
  width: 9px;
  height: 11px;
  outline: 0;
  background: url('<?php echo $mosConfig_live_site; ?>modules/mod_istopan_carousel_pro/tmpl/bxslider/images/<?php echo $params->get('bxnavstyle'); ?>.png') -86px -44px no-repeat;
  margin: 0 3px;
}
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-stop:hover,
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-stop.active,
.bx-wrapper<?php echo $module->id; ?> .bx-controls-auto .bx-stop:focus {
  background-position: -86px -33px;
}
/* PAGER WITH AUTO-CONTROLS HYBRID LAYOUT */
.bx-wrapper<?php echo $module->id; ?> .bx-controls.bx-has-controls-auto.bx-has-pager .bx-pager {
  text-align: left;
  width: 80%;
}
.bx-wrapper<?php echo $module->id; ?> .bx-controls.bx-has-controls-auto.bx-has-pager .bx-controls-auto {
  right: 0;
  width: 35px;
}
/* IMAGE CAPTIONS */
.bx-wrapper<?php echo $module->id; ?> .bx-caption {
  position: absolute;
  bottom: 0;
  left: 0;
  background: #666;
  background: rgba(80, 80, 80, 0.75);
  width: 100%;
}
.bx-wrapper<?php echo $module->id; ?> .bx-caption span {
  color: #fff;
  font-family: Arial;
  display: block;
  font-size: .85em;
  padding: 10px;
}
.litextbx<?php echo $module->id; ?>   {
	<?php if($params->get('cmskbgbx')): ?>background: <?php echo $params->get('cmskbgbx'); ?>;<?php endif; ?>
	<?php if($params->get('cmskwdbx')): ?>width:<?php echo $params->get('cmskwdbx'); ?>;<?php endif; ?>
	<?php if($params->get('cmskhgbx')): ?>height: <?php echo $params->get('cmskhgbx'); ?>;<?php endif; ?>
	<?php if($params->get('cmskptbx')): ?>top: <?php echo $params->get('cmskptbx'); ?>;<?php endif; ?>
	<?php if($params->get('cmskpbbx')): ?>bottom: <?php echo $params->get('cmskpbbx'); ?>;<?php endif; ?>
	<?php if($params->get('cmskprbx')): ?>right: <?php echo $params->get('cmskprbx'); ?>;<?php endif; ?>
	<?php if($params->get('cmskplbx')): ?>left: <?php echo $params->get('cmskplbx'); ?>;<?php endif; ?>
	<?php if($params->get('litextsdbx')): ?>text-shadow:<?php echo $params->get('litextsdbx'); ?>;<?php endif; ?>
	<?php if($params->get('cmskpdbx')): ?>padding: <?php echo $params->get('cmskpdbx'); ?>;<?php endif; ?>
	<?php if($params->get('cmskbs')): ?>box-shadow: <?php echo $params->get('cmskbs'); ?>;<?php endif; ?>
	<?php if($params->get('cmskbr')): ?>border-radius: <?php echo $params->get('cmskbr'); ?>;<?php endif; ?>
	<?php if($params->get('cmskbclbx')): ?>color: <?php echo $params->get('cmskbclbx'); ?>;<?php endif; ?>
	position: absolute;
	z-index: 2;
	overflow-y: auto;
	background-clip: content-box; 
	}
	<?php if($params->get('cccode')): ?><?php echo $params->get('cccode'); ?><?php endif; ?>
</style>

<div class="bxslide<?php echo $module->id; ?> <?php if ($params->get('moduleclass_sfx')) echo ' ' . $params->get('moduleclass_sfx'); ?>" style="width:100% !important; margin: 0; padding: 0;">
 <ul id="bxslider<?php echo $module->id; ?>" class="bxslider">
 
<?php if($params->get('carousel1')): ?><li style="background: <?php echo $params->get('cc1bgk'); ?>; <?php if($params->get('cc1bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc1bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc1bgatt'); ?>;background-position:<?php echo $params->get('cc1bgpos'); ?>;background-repeat:<?php echo $params->get('cc1bgrep'); ?>;background-size:<?php echo $params->get('cc1bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel1'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel2')): ?><li style="background: <?php echo $params->get('cc2bgk'); ?>; <?php if($params->get('cc2bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc2bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc2bgatt'); ?>;background-position:<?php echo $params->get('cc2bgpos'); ?>;background-repeat:<?php echo $params->get('cc2bgrep'); ?>;background-size:<?php echo $params->get('cc2bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel2'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel3')): ?><li style="background: <?php echo $params->get('cc3bgk'); ?>; <?php if($params->get('cc3bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc3bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc3bgatt'); ?>;background-position:<?php echo $params->get('cc3bgpos'); ?>;background-repeat:<?php echo $params->get('cc3bgrep'); ?>;background-size:<?php echo $params->get('cc3bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel3'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel4')): ?><li style="background: <?php echo $params->get('cc4bgk'); ?>; <?php if($params->get('cc4bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc4bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc4bgatt'); ?>;background-position:<?php echo $params->get('cc4bgpos'); ?>;background-repeat:<?php echo $params->get('cc4bgrep'); ?>;background-size:<?php echo $params->get('cc4bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel4'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel5')): ?><li style="background: <?php echo $params->get('cc5bgk'); ?>; <?php if($params->get('cc5bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc5bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc5bgatt'); ?>;background-position:<?php echo $params->get('cc5bgpos'); ?>;background-repeat:<?php echo $params->get('cc5bgrep'); ?>;background-size:<?php echo $params->get('cc5bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel5'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel6')): ?><li style="background: <?php echo $params->get('cc6bgk'); ?>; <?php if($params->get('cc6bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc6bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc6bgatt'); ?>;background-position:<?php echo $params->get('cc6bgpos'); ?>;background-repeat:<?php echo $params->get('cc6bgrep'); ?>;background-size:<?php echo $params->get('cc6bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel6'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel7')): ?><li style="background: <?php echo $params->get('cc7bgk'); ?>; <?php if($params->get('cc7bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc7bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc7bgatt'); ?>;background-position:<?php echo $params->get('cc7bgpos'); ?>;background-repeat:<?php echo $params->get('cc7bgrep'); ?>;background-size:<?php echo $params->get('cc7bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel7'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel8')): ?><li style="background: <?php echo $params->get('cc8bgk'); ?>; <?php if($params->get('cc8bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc8bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc8bgatt'); ?>;background-position:<?php echo $params->get('cc8bgpos'); ?>;background-repeat:<?php echo $params->get('cc8bgrep'); ?>;background-size:<?php echo $params->get('cc8bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel8'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel9')): ?><li style="background: <?php echo $params->get('cc9bgk'); ?>; <?php if($params->get('cc9bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc9bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc9bgatt'); ?>;background-position:<?php echo $params->get('cc9bgpos'); ?>;background-repeat:<?php echo $params->get('cc9bgrep'); ?>;background-size:<?php echo $params->get('cc9bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel9'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel10')): ?><li style="background: <?php echo $params->get('cc10bgk'); ?>; <?php if($params->get('cc10bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc10bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc10bgatt'); ?>;background-position:<?php echo $params->get('cc10bgpos'); ?>;background-repeat:<?php echo $params->get('cc10bgrep'); ?>;background-size:<?php echo $params->get('cc10bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel10'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel11')): ?><li style="background: <?php echo $params->get('cc11bgk'); ?>; <?php if($params->get('cc11bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc11bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc11bgatt'); ?>;background-position:<?php echo $params->get('cc11bgpos'); ?>;background-repeat:<?php echo $params->get('cc11bgrep'); ?>;background-size:<?php echo $params->get('cc11bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel11'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel12')): ?><li style="background: <?php echo $params->get('cc12bgk'); ?>; <?php if($params->get('cc12bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc12bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc12bgatt'); ?>;background-position:<?php echo $params->get('cc12bgpos'); ?>;background-repeat:<?php echo $params->get('cc12bgrep'); ?>;background-size:<?php echo $params->get('cc12bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel12'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel13')): ?><li style="background: <?php echo $params->get('cc13bgk'); ?>; <?php if($params->get('cc13bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc13bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc13bgatt'); ?>;background-position:<?php echo $params->get('cc13bgpos'); ?>;background-repeat:<?php echo $params->get('cc13bgrep'); ?>;background-size:<?php echo $params->get('cc13bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel13'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel14')): ?><li style="background: <?php echo $params->get('cc14bgk'); ?>; <?php if($params->get('cc14bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc14bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc14bgatt'); ?>;background-position:<?php echo $params->get('cc14bgpos'); ?>;background-repeat:<?php echo $params->get('cc14bgrep'); ?>;background-size:<?php echo $params->get('cc14bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel14'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel15')): ?><li style="background: <?php echo $params->get('cc15bgk'); ?>; <?php if($params->get('cc15bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc15bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc15bgatt'); ?>;background-position:<?php echo $params->get('cc15bgpos'); ?>;background-repeat:<?php echo $params->get('cc15bgrep'); ?>;background-size:<?php echo $params->get('cc15bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel15'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel16')): ?><li style="background: <?php echo $params->get('cc16bgk'); ?>; <?php if($params->get('cc16bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc16bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc16bgatt'); ?>;background-position:<?php echo $params->get('cc16bgpos'); ?>;background-repeat:<?php echo $params->get('cc16bgrep'); ?>;background-size:<?php echo $params->get('cc16bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel16'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel17')): ?><li style="background: <?php echo $params->get('cc17bgk'); ?>; <?php if($params->get('cc17bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc17bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc17bgatt'); ?>;background-position:<?php echo $params->get('cc17bgpos'); ?>;background-repeat:<?php echo $params->get('cc17bgrep'); ?>;background-size:<?php echo $params->get('cc17bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel17'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel18')): ?><li style="background: <?php echo $params->get('cc18bgk'); ?>; <?php if($params->get('cc18bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc18bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc18bgatt'); ?>;background-position:<?php echo $params->get('cc18bgpos'); ?>;background-repeat:<?php echo $params->get('cc18bgrep'); ?>;background-size:<?php echo $params->get('cc18bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel18'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel19')): ?><li style="background: <?php echo $params->get('cc19bgk'); ?>; <?php if($params->get('cc19bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc19bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc19bgatt'); ?>;background-position:<?php echo $params->get('cc19bgpos'); ?>;background-repeat:<?php echo $params->get('cc19bgrep'); ?>;background-size:<?php echo $params->get('cc19bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel19'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel20')): ?><li style="background: <?php echo $params->get('cc20bgk'); ?>; <?php if($params->get('cc20bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc20bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc20bgatt'); ?>;background-position:<?php echo $params->get('cc20bgpos'); ?>;background-repeat:<?php echo $params->get('cc20bgrep'); ?>;background-size:<?php echo $params->get('cc20bgsiz'); ?>;"><div style="width: <?php echo $params->get('cwidth'); ?>;height: <?php echo $params->get('cheight'); ?>;position: relative;z-index: 1;"><span class="litextbx<?php echo $module->id; ?>"><?php echo $params->get('carousel20'); ?></span></div></li><?php endif; ?>
    
 </ul>
</div>


<?php if ($jsrandombx==1) : ?>
<script type="text/javascript">
	var ul = document.querySelector('.bxslider');
	for (var i = ul.children.length; i >= 0; i--) {
    	ul.appendChild(ul.children[Math.random() * i | 0]);
	}
</script> 
<?php endif; ?>

<script type="text/javascript">

jQuery(document).ready(function(){
jQuery('#bxslider<?php echo $module->id; ?>').bxSlider({
  
  // GENERAL
mode: '<?php echo $params->get('bxmode'); ?>',
slideSelector: '',
infiniteLoop: <?php echo $params->get('bxinfloop'); ?>,
hideControlOnEnd: true,
speed: <?php echo $params->get('bxspeed'); ?>,
easing: <?php if ($jqueryeas==0) : ?>null<?php endif; ?><?php if ($jqueryeas==1) : ?>'<?php echo $params->get('bxeasing'); ?>'<?php endif; ?>,
slideMargin: <?php echo $params->get('bxmargin'); ?>,
startSlide: 0,
randomStart: false,
captions: false,
ticker: <?php echo $params->get('bxcticker'); ?>,
tickerHover: <?php echo $params->get('bxctickhr'); ?>,
adaptiveHeight: <?php echo $params->get('bxadheight'); ?>,
adaptiveHeightSpeed: <?php echo $params->get('bxadhspeed'); ?>,
video: false,
useCSS: false,
preloadImages: '<?php echo $params->get('bxploadimg'); ?>',
responsive: <?php echo $params->get('bxresp'); ?>,
slideZIndex: 50,
wrapperClass: 'bx-wrapper<?php echo $module->id; ?>',

// TOUCH
touchEnabled: <?php echo $params->get('bxtouch'); ?>,
swipeThreshold: 50,
oneToOneTouch: true,
preventDefaultSwipeX: true,
preventDefaultSwipeY: false,

// ACCESSIBILITY
ariaLive: true,
ariaHidden: true,

// KEYBOARD
keyboardEnabled: <?php echo $params->get('bxkeyb'); ?>,

// PAGER
pager: <?php echo $params->get('bxpager'); ?>,
pagerType: '<?php echo $params->get('bxpagertp'); ?>',
pagerShortSeparator: ' <?php echo $params->get('bxpagertps'); ?> ',
pagerSelector: null,
buildPager: null,
pagerCustom: null,

// CONTROLS
controls: <?php echo $params->get('bxcontrols'); ?>,
nextText: '<?php echo $params->get('bxnext'); ?>',
prevText: '<?php echo $params->get('bxprev'); ?>',
nextSelector: null,
prevSelector: null,
autoControls: false,
startText: 'Start',
stopText: 'Stop',
autoControlsCombine: false,
autoControlsSelector: null,

// AUTO
auto: <?php echo $params->get('bxauto'); ?>,
pause: <?php echo $params->get('bxpause'); ?>,
autoStart: true,
autoDirection: '<?php echo $params->get('bxautodir'); ?>',
stopAutoOnClick: false,
autoHover: <?php echo $params->get('bxautohov'); ?>,
autoDelay: <?php echo $params->get('bxautodl'); ?>,
autoSlideForOnePage: false,

// CAROUSEL
minSlides: <?php echo $params->get('bxminsl'); ?>,
maxSlides: <?php echo $params->get('bxmaxsl'); ?>,
moveSlides: <?php echo $params->get('bxmovesl'); ?>,
slideWidth: <?php echo $params->get('bxslwidth'); ?>,
shrinkItems: <?php echo $params->get('bxshrink'); ?>,

// CALLBACKS
onSliderLoad: function() { return true; },
onSlideBefore: function() { return true; },
onSlideAfter: function() { return true; },
onSlideNext: function() { return true; },
onSlidePrev: function() { return true; },
onSliderResize: function() { return true; },
onAutoChange: function() { return true; }
	});
 });
</script>


