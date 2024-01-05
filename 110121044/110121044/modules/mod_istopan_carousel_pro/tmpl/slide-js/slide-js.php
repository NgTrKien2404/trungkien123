<?php
/**
* @version		1.2
* @module		Custom Carousel Pro
* Copyright (C) 2017 Istopan.gr All rights reserved.
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined("_JEXEC") or die("Restricted access");
$doc = JFactory::getDocument();
$jqueryen = $params->get('jqueryen');
if ($jqueryen=='1')
{
	JHtml::_('jquery.framework');
}
$cjsloader = $params->get('cjsloader');
if ($cjsloader=='1')
{
	$doc->addScript('modules/mod_istopan_carousel_pro/assets/lsPreloader.js', 'text/javascript');
}
$doc->addScript('modules/mod_istopan_carousel_pro/assets/slider.js', 'text/javascript');
$cheight = $params->get('cheight');
$cwidth = $params->get('cwidth');
$tbposition = $params->get('tbposition');
$cbheight = $params->get('cbheight');
$cbwidth = $params->get('cbwidth');
$jsrandom = $params->get('jsrandom');
$carfsc = $params->get('carfsc');
$cbspeed = $params->get('cbspeed');
$cbdelay = $params->get('cbdelay');
$jsauto = $params->get('jsauto');
$jsphover = $params->get('jsphover');
$jsnav = $params->get('jsnav');
$jspag = $params->get('jspag');
$cpgbg = $params->get('cpgbg');
$cpgabg = $params->get('cpgabg');
$cpghbg = $params->get('cpghbg');
$cpgwidth = $params->get('cpgwidth');
$cpgstyle = $params->get('cpgstyle');
$cbddir = $params->get('cbddir');
$cmskenbl = $params->get('cmskenbl');
$litextsd = $params->get('litextsd');
$cmskbr = $params->get('cmskbr');
$cmskbs = $params->get('cmskbs');
$cjsborder = $params->get('cjsborder');
?>
  
<style type="text/css">
.jslide<?php echo $module->id; ?> {
  border: <?php echo $params->get('cjsborder'); ?>;
  box-shadow: <?php echo $params->get('cjsshadow'); ?>;
	
}
.slider-container {
  overflow: hidden;
  position: relative;
  margin: 0; padding: 0;
}
.slider<?php echo $module->id; ?> {
  margin: 0; padding: 0;
  background: <?php echo $params->get('cbgnd'); ?> !important;
  list-style: none !important;
  overflow: hidden ;
  
}
.slider<?php echo $module->id; ?> li {
  float: left;
  <?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>
  margin-top: <?php echo $params->get('tposition'); ?> !important;
  padding:0px!important;
}

.slider<?php echo $module->id; ?> li img {
  display: block;
  /*width:100%;*/
}
.slider-buttons<?php echo $module->id; ?> {
  position: absolute;
  width: <?php echo $params->get('cbwidth'); ?> !important;
  height: <?php echo $params->get('cbheight'); ?> !important;
  top: <?php echo $params->get('tbposition'); ?> !important;
  margin-top: -20px;
  background: <?php echo $params->get('cbbgcolor'); ?> !important;
  vertical-align: middle;
  cursor: pointer;
  z-index:4;
  color: <?php echo $params->get('cbcolor'); ?> !important;
  border: <?php echo $params->get('cbborder'); ?> !important;
  border-radius: <?php echo $params->get('cbradius'); ?> !important;
  text-align: center;
}
.slider-buttons<?php echo $module->id; ?>:hover {
  	border: <?php echo $params->get('cbborder'); ?> !important;
	background:<?php echo $params->get('cbhbgcolor'); ?> !important;
	color: <?php echo $params->get('cbhcolor'); ?> !important;
	border-radius: <?php echo $params->get('cbradius'); ?> !important;
}
.slider-buttons<?php echo $module->id; ?> span {
  font-size: <?php echo $params->get('cbfsize'); ?>;
  font-weight: normal;
  line-height:<?php echo $params->get('cblheight'); ?>;
  
}
.next {
  right: 0;
}
.next span {
  /*padding-left: 16px;*/
}
.prev {
  left: 0;
}
.prev span {
  /*padding-left: 12px;*/
}
.pagination-container {
  position: absolute;
  z-index: 4;
  bottom: 8px;

  width: 100%;
  text-align: center;
  margin: 0;
  padding: 0;
}
.dot {
  background: <?php echo $params->get('cpgbg'); ?>;
  width: <?php echo $params->get('cpgwidth'); ?>;
  height: <?php echo $params->get('cpgwidth'); ?>;
  border-radius: <?php echo $params->get('cpgstyle'); ?>;
  display: inline-block !important;
  cursor: pointer;
  padding:0px !important;
}
.dot:not(:last-of-type) {
  margin-right: 8px;
}
.dot:hover {
  background: <?php echo $params->get('cpghbg'); ?>;
}
.dot.active {
background: <?php echo $params->get('cpgabg'); ?>;
  cursor: initial;
}
.litext<?php echo $module->id; ?>   {
	<?php if($params->get('cmskbg')): ?>background: <?php echo $params->get('cmskbg'); ?>;<?php endif; ?>
	<?php if($params->get('cmskwd')): ?>width:<?php echo $params->get('cmskwd'); ?>;<?php endif; ?>
	<?php if($params->get('cmskhg')): ?>height: <?php echo $params->get('cmskhg'); ?>;<?php endif; ?>
	<?php if($params->get('cmskpt')): ?>top: <?php echo $params->get('cmskpt'); ?>;<?php endif; ?>
	<?php if($params->get('cmskpb')): ?>bottom: <?php echo $params->get('cmskpb'); ?>;<?php endif; ?>
	<?php if($params->get('cmskpr')): ?>right: <?php echo $params->get('cmskpr'); ?>;<?php endif; ?>
	<?php if($params->get('cmskpl')): ?>left: <?php echo $params->get('cmskpl'); ?>;<?php endif; ?>
	<?php if($params->get('litextsd')): ?>text-shadow:<?php echo $params->get('litextsd'); ?>;<?php endif; ?>
	<?php if($params->get('cmskpd')): ?>padding: <?php echo $params->get('cmskpd'); ?>;<?php endif; ?>
	<?php if($params->get('cmskbs')): ?>box-shadow: <?php echo $params->get('cmskbs'); ?>;<?php endif; ?>
	<?php if($params->get('cmskbr')): ?>border-radius: <?php echo $params->get('cmskbr'); ?>;<?php endif; ?>
	<?php if($params->get('cmskbcl')): ?>color: <?php echo $params->get('cmskbcl'); ?>;<?php endif; ?>
	position: absolute;
	z-index: 2;
	overflow-y: auto;
	}
	
<?php if($params->get('cccode')): ?><?php echo $params->get('cccode'); ?><?php endif; ?>

</style>

<div class="jslide<?php echo $module->id; ?> <?php if ($params->get('moduleclass_sfx')) echo ' ' . $params->get('moduleclass_sfx'); ?>" style=" <?php if ($carfsc==1) : ?>width:100% !important<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?><?php endif; ?>;margin: 0; padding: 0;">
 <ul id="<?php echo $module->id; ?>" class="slider<?php echo $module->id; ?>">
 
<?php if($params->get('carousel1')): ?><li style="background: <?php echo $params->get('cc1bgk'); ?>; <?php if($params->get('cc1bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc1bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc1bgatt'); ?>;background-position:<?php echo $params->get('cc1bgpos'); ?>;background-repeat:<?php echo $params->get('cc1bgrep'); ?>;background-size:<?php echo $params->get('cc1bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel1'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel2')): ?><li style="background: <?php echo $params->get('cc2bgk'); ?>; <?php if($params->get('cc2bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc2bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc2bgatt'); ?>;background-position:<?php echo $params->get('cc2bgpos'); ?>;background-repeat:<?php echo $params->get('cc2bgrep'); ?>;background-size:<?php echo $params->get('cc2bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel2'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel3')): ?><li style="background: <?php echo $params->get('cc3bgk'); ?>; <?php if($params->get('cc3bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc3bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc3bgatt'); ?>;background-position:<?php echo $params->get('cc3bgpos'); ?>;background-repeat:<?php echo $params->get('cc3bgrep'); ?>;background-size:<?php echo $params->get('cc3bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel3'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel4')): ?><li style="background: <?php echo $params->get('cc4bgk'); ?>; <?php if($params->get('cc4bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc4bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc4bgatt'); ?>;background-position:<?php echo $params->get('cc4bgpos'); ?>;background-repeat:<?php echo $params->get('cc4bgrep'); ?>;background-size:<?php echo $params->get('cc4bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel4'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel5')): ?><li style="background: <?php echo $params->get('cc5bgk'); ?>; <?php if($params->get('cc5bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc5bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc5bgatt'); ?>;background-position:<?php echo $params->get('cc5bgpos'); ?>;background-repeat:<?php echo $params->get('cc5bgrep'); ?>;background-size:<?php echo $params->get('cc5bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel5'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel6')): ?><li style="background: <?php echo $params->get('cc6bgk'); ?>; <?php if($params->get('cc6bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc6bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc6bgatt'); ?>;background-position:<?php echo $params->get('cc6bgpos'); ?>;background-repeat:<?php echo $params->get('cc6bgrep'); ?>;background-size:<?php echo $params->get('cc6bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel6'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel7')): ?><li style="background: <?php echo $params->get('cc7bgk'); ?>; <?php if($params->get('cc7bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc7bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc7bgatt'); ?>;background-position:<?php echo $params->get('cc7bgpos'); ?>;background-repeat:<?php echo $params->get('cc7bgrep'); ?>;background-size:<?php echo $params->get('cc7bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel7'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel8')): ?><li style="background: <?php echo $params->get('cc8bgk'); ?>; <?php if($params->get('cc8bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc8bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc8bgatt'); ?>;background-position:<?php echo $params->get('cc8bgpos'); ?>;background-repeat:<?php echo $params->get('cc8bgrep'); ?>;background-size:<?php echo $params->get('cc8bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel8'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel9')): ?><li style="background: <?php echo $params->get('cc9bgk'); ?>; <?php if($params->get('cc9bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc9bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc9bgatt'); ?>;background-position:<?php echo $params->get('cc9bgpos'); ?>;background-repeat:<?php echo $params->get('cc9bgrep'); ?>;background-size:<?php echo $params->get('cc9bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel9'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel10')): ?><li style="background: <?php echo $params->get('cc10bgk'); ?>; <?php if($params->get('cc10bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc10bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc10bgatt'); ?>;background-position:<?php echo $params->get('cc10bgpos'); ?>;background-repeat:<?php echo $params->get('cc10bgrep'); ?>;background-size:<?php echo $params->get('cc10bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel10'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel11')): ?><li style="background: <?php echo $params->get('cc11bgk'); ?>; <?php if($params->get('cc11bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc11bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc11bgatt'); ?>;background-position:<?php echo $params->get('cc11bgpos'); ?>;background-repeat:<?php echo $params->get('cc11bgrep'); ?>;background-size:<?php echo $params->get('cc11bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel11'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel12')): ?><li style="background: <?php echo $params->get('cc12bgk'); ?>; <?php if($params->get('cc12bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc12bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc12bgatt'); ?>;background-position:<?php echo $params->get('cc12bgpos'); ?>;background-repeat:<?php echo $params->get('cc12bgrep'); ?>;background-size:<?php echo $params->get('cc12bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel12'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel13')): ?><li style="background: <?php echo $params->get('cc13bgk'); ?>; <?php if($params->get('cc13bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc13bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc13bgatt'); ?>;background-position:<?php echo $params->get('cc13bgpos'); ?>;background-repeat:<?php echo $params->get('cc13bgrep'); ?>;background-size:<?php echo $params->get('cc13bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel13'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel14')): ?><li style="background: <?php echo $params->get('cc14bgk'); ?>; <?php if($params->get('cc14bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc14bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc14bgatt'); ?>;background-position:<?php echo $params->get('cc14bgpos'); ?>;background-repeat:<?php echo $params->get('cc14bgrep'); ?>;background-size:<?php echo $params->get('cc14bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel14'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel15')): ?><li style="background: <?php echo $params->get('cc15bgk'); ?>; <?php if($params->get('cc15bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc15bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc15bgatt'); ?>;background-position:<?php echo $params->get('cc15bgpos'); ?>;background-repeat:<?php echo $params->get('cc15bgrep'); ?>;background-size:<?php echo $params->get('cc15bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel15'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel16')): ?><li style="background: <?php echo $params->get('cc16bgk'); ?>; <?php if($params->get('cc16bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc16bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc16bgatt'); ?>;background-position:<?php echo $params->get('cc16bgpos'); ?>;background-repeat:<?php echo $params->get('cc16bgrep'); ?>;background-size:<?php echo $params->get('cc16bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel16'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel17')): ?><li style="background: <?php echo $params->get('cc17bgk'); ?>; <?php if($params->get('cc17bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc17bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc17bgatt'); ?>;background-position:<?php echo $params->get('cc17bgpos'); ?>;background-repeat:<?php echo $params->get('cc17bgrep'); ?>;background-size:<?php echo $params->get('cc17bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel17'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel18')): ?><li style="background: <?php echo $params->get('cc18bgk'); ?>; <?php if($params->get('cc18bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc18bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc18bgatt'); ?>;background-position:<?php echo $params->get('cc18bgpos'); ?>;background-repeat:<?php echo $params->get('cc18bgrep'); ?>;background-size:<?php echo $params->get('cc18bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel18'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel19')): ?><li style="background: <?php echo $params->get('cc19bgk'); ?>; <?php if($params->get('cc19bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc19bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc19bgatt'); ?>;background-position:<?php echo $params->get('cc19bgpos'); ?>;background-repeat:<?php echo $params->get('cc19bgrep'); ?>;background-size:<?php echo $params->get('cc19bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel19'); ?></span></div></li><?php endif; ?>

<?php if($params->get('carousel20')): ?><li style="background: <?php echo $params->get('cc20bgk'); ?>; <?php if($params->get('cc20bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc20bgimg'); ?>')<?php endif; ?>; background-attachment:<?php echo $params->get('cc20bgatt'); ?>;background-position:<?php echo $params->get('cc20bgpos'); ?>;background-repeat:<?php echo $params->get('cc20bgrep'); ?>;background-size:<?php echo $params->get('cc20bgsiz'); ?>;"><div style="<?php if ($carfsc==1) : ?>width:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>width: <?php echo $params->get('cwidth'); ?>;<?php endif; ?><?php if ($carfsc==1) : ?>height:100% !important;<?php endif; ?><?php if ($carfsc==0) : ?>height: <?php echo $params->get('cheight'); ?>;<?php endif; ?>position: relative;z-index: 1;"><span class="litext<?php echo $module->id; ?>"><?php echo $params->get('carousel20'); ?></span></div></li><?php endif; ?>
    
 </ul>
</div>

<?php if ($cjsloader==1) : ?>
	<script type="text/javascript">
	jQuery.noConflict();
 	jQuery(".jslide<?php echo $module->id; ?> <?php if ($params->get('moduleclass_sfx')) echo ' ' . $params->get('moduleclass_sfx'); ?>").lsPreloader({

// background color
backgroundColor:  "<?php echo $params->get('lbbgcolor'); ?>", 

// background image
backgroundImage:  "<?php if($params->get('lbbgimg')): ?><?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('lbbgimg'); ?><?php endif; ?>",   

// repeat | no-repeat | repeat-x | repeat-y
backgroundRepeat: "<?php echo $params->get('lbbgrpt'); ?>", 

// display your logo     
logoImage:      "",   

// display progress bar
progressShow:   <?php echo $params->get('lbprbar'); ?>, 

// progress bar color
progressColor:    "<?php echo $params->get('lbprbarclr'); ?>",

// progress bar height
progressHeight:   "<?php echo $params->get('lbprbarhg'); ?>", 

// top | center | bottom
progressPosition: "<?php echo $params->get('lbprbarps'); ?>", 

// display percentage
percentShow:    <?php echo $params->get('lbprcnt'); ?>,      

// font family
percentFontFamily:  "", 

// font size
percentFontSize:  "<?php echo $params->get('lbprcntsz'); ?>",  

// choose an animation type
// fade | hide | slideUp | slideDown | slideLeft | slideRight  
animationComplete:  "fade",

// minimum time of execution in seconds
minimumTime:    .5,          

// callbacks       
onStart:      function(){}, 
onComplete:     function(){}

});

	</script>
<?php endif; ?>


<?php if ($carfsc==1) : ?>
	<script type="text/javascript">
		jQuery.noConflict();
		jQuery(document).ready(function($){
 		// Defining a function to set size for #hero 
    		function fullscreen(){
        		jQuery('.slider<?php echo $module->id; ?>').css({
            width: jQuery(window).width(),
            height: jQuery(window).height()
        });
    }
  
    fullscreen();

  // Run the function in case of window resize
  jQuery(window).resize(function() {
       fullscreen();         
    });

});
</script>
<?php endif; ?>

<?php if ($jsrandom==1) : ?>
<script type="text/javascript">
	var ul = document.querySelector('.slider<?php echo $module->id; ?>');
	for (var i = ul.children.length; i >= 0; i--) {
    	ul.appendChild(ul.children[Math.random() * i | 0]);
	}
</script>
<?php endif; ?>

<script type="text/javascript">
   	jQuery.noConflict();
	jQuery(window).on("load", function() {
      jQuery(".slider<?php echo $module->id; ?>").slider({
	// animation speed
  speed: <?php echo $cbspeed;?>,

  // animation delay
  delay: <?php echo $cbdelay;?>,

  // autoplay
  autoplay: <?php echo $jsauto;?>,

  // pause on hover
  pauseonhover: <?php echo $jsphover;?>,

  // shows navigation
  navigation: <?php echo $jsnav;?>,

  // shows pagination
  pagination: <?php echo $jspag;?>,

  // initial slide
  initialslide: 1,

  // width/height
  width: '<?php if ($carfsc==1) : ?>100%<?php endif; ?><?php if ($carfsc==0) : ?><?php echo $params->get('cwidth'); ?>;<?php endif; ?>',
  height: '<?php if ($carfsc==1) : ?>100%<?php endif; ?><?php if ($carfsc==0) : ?><?php echo $params->get('cheight'); ?>;<?php endif; ?>',

  // left or right
  direction: '<?php echo $cbddir;?>',

  // is responsive
  responsive: true,

  // custom navigation buttons
  buttons: {
    prev: "<div class='prev slider-buttons<?php echo $module->id; ?>'><span>&#8249;</span></div>",
    next: "<div class='next slider-buttons<?php echo $module->id; ?>'><span>&#8250;</span></div>"
  }
 	});
 });
</script>


