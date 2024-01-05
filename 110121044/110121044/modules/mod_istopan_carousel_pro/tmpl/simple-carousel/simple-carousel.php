<?php
/**
* @version		1.2
* @module		Custom Carousel Pro
* Copyright (C) 2017 Istopan.gr All rights reserved.
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined("_JEXEC") or die("Restricted access");
$doc = JFactory::getDocument();
$cjsloaders = $params->get('cjsloaders');
if ($cjsloaders=='1')
{
	$doc->addScript('modules/mod_istopan_carousel_pro/assets/lsPreloader.js', 'text/javascript');
}
$jsrandoms = $params->get('jsrandoms');
?>

  <style type="text/css">
    .carouselbox<?php echo $module->id; ?> {
      width: <?php echo $params->get('cwidth'); ?>;
	  height: <?php echo $params->get('cheight'); ?>;
      border: <?php echo $params->get('cborder'); ?>;
      box-shadow: <?php echo $params->get('cbshadow'); ?>;
	  background: <?php echo $params->get('cbgnd'); ?>;
	  position: relative;
      margin: 0;
      overflow: hidden; 
    }
   .active<?php echo $module->id; ?> .buttons<?php echo $module->id; ?> {
	  z-index: 10;
	  position: relative;
	  padding: <?php echo $params->get('cnpadding'); ?>;
      background: <?php echo $params->get('cnback'); ?>;
	  text-align: <?php echo $params->get('cnbalign'); ?>;
	  top:<?php echo $params->get('cntop'); ?>;
    }
   .active<?php echo $module->id; ?> li {
	  position: absolute;
	  opacity: 0;
	  transform: scale(0);
	  transition: 1s;
      top: <?php echo $params->get('tposition'); ?>;
	  height: <?php echo $params->get('cheight'); ?>;
	  background-repeat:no-repeat !important;
	  background-size:cover !important;
	  background-attachment: fixed !important;
	  background-position:center center !important;
    }
   .active<?php echo $module->id; ?> li.current {
	  opacity: 1;
	  transform: scale(1);
	  transition: 1s;
      top: <?php echo $params->get('tposition'); ?>;
	  border:none;
	  
    }
   .carouselbox<?php echo $module->id; ?> button { 
	  visibility: hidden;
	  border: <?php echo $params->get('cbborder'); ?>;
	  background: <?php echo $params->get('cbbgcolor'); ?>;
	  color: <?php echo $params->get('cbcolor'); ?>;
	  border-radius: <?php echo $params->get('cbradius'); ?>;
	  margin: <?php echo $params->get('cbbmargin'); ?>;
	  padding: <?php echo $params->get('cbbpadding'); ?>;
	}
	.carouselbox<?php echo $module->id; ?> button:focus,  .carouselbox<?php echo $module->id; ?> button:hover{
	border: <?php echo $params->get('cbborder'); ?> !important;
	background:<?php echo $params->get('cbhbgcolor'); ?> !important;
	color: <?php echo $params->get('cbhcolor'); ?> !important;
	border-radius: <?php echo $params->get('cbradius'); ?> !important;
	}
   .carouselbox<?php echo $module->id; ?> .content p {margin:0}
   .carouselbox<?php echo $module->id; ?> .content {
      margin: 0;
      padding: 0;
}
  .carouselbox<?php echo $module->id; ?> .content li {
	margin: 0;
	padding: 0;
	width: 100%;
	list-style: none;
	z-index: 2;
}
  .active<?php echo $module->id; ?> button {
	visibility: visible;
}
  .carouselbox<?php echo $module->id; ?> .next {
	  float: <?php echo $params->get('crbfloat'); ?>;
	  font-size: <?php echo $params->get('cbfsize'); ?>;
	  line-height:<?php echo $params->get('cblheight'); ?>;
}
  .carouselbox<?php echo $module->id; ?> .prev {
	  float: <?php echo $params->get('clbfloat'); ?>;
	  font-size: <?php echo $params->get('cbfsize'); ?>;
	  line-height:<?php echo $params->get('cblheight'); ?>;
	  
}
  .carouselbox<?php echo $module->id; ?> .offscreen {
	position: absolute;
	left: -2000px;
}

	<?php if($params->get('cccode')): ?><?php echo $params->get('cccode'); ?><?php endif; ?>
  </style>
  

<div id="custom-carousel" class="carouselbox<?php echo $module->id; ?> <?php if ($params->get('moduleclass_sfx')) echo ' ' . $params->get('moduleclass_sfx'); ?>">
  <div class="buttons<?php echo $module->id; ?>">
    <button class="prev">
       ◀ <span class="offscreen">Previous</span>
    </button>
    <button class="next">
      <span class="offscreen">Next</span> ▶ 
    </button>
  </div>
  <ul class="content">
    <?php if($params->get('carousel1')): ?><li style="background: <?php echo $params->get('cc1bgk'); ?>; <?php if($params->get('cc1bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc1bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel1'); ?></li><?php endif; ?>
    <?php if($params->get('carousel2')): ?><li style="background: <?php echo $params->get('cc2bgk'); ?>; <?php if($params->get('cc2bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc2bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel2'); ?></li><?php endif; ?>
    <?php if($params->get('carousel3')): ?><li style="background: <?php echo $params->get('cc3bgk'); ?>; <?php if($params->get('cc3bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc3bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel3'); ?></li><?php endif; ?>
    <?php if($params->get('carousel4')): ?><li style="background: <?php echo $params->get('cc4bgk'); ?>; <?php if($params->get('cc4bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc4bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel4'); ?></li><?php endif; ?>
    <?php if($params->get('carousel5')): ?><li style="background: <?php echo $params->get('cc5bgk'); ?>; <?php if($params->get('cc5bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc5bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel5'); ?></li><?php endif; ?>
    <?php if($params->get('carousel6')): ?><li style="background: <?php echo $params->get('cc6bgk'); ?>; <?php if($params->get('cc6bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc6bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel6'); ?></li><?php endif; ?>
    <?php if($params->get('carousel7')): ?><li style="background: <?php echo $params->get('cc7bgk'); ?>; <?php if($params->get('cc7bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc7bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel7'); ?></li><?php endif; ?>
    <?php if($params->get('carousel8')): ?><li style="background: <?php echo $params->get('cc8bgk'); ?>; <?php if($params->get('cc8bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc8bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel8'); ?></li><?php endif; ?>
    <?php if($params->get('carousel9')): ?><li style="background: <?php echo $params->get('cc9bgk'); ?>; <?php if($params->get('cc9bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc9bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel9'); ?></li><?php endif; ?>
    <?php if($params->get('carousel10')): ?><li style="background: <?php echo $params->get('cc10bgk'); ?>; <?php if($params->get('cc10bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc10bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel10'); ?></li><?php endif; ?>
    <?php if($params->get('carousel11')): ?><li style="background: <?php echo $params->get('cc11bgk'); ?>; <?php if($params->get('cc11bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc11bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel11'); ?></li><?php endif; ?>
    <?php if($params->get('carousel12')): ?><li style="background: <?php echo $params->get('cc12bgk'); ?>; <?php if($params->get('cc12bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc12bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel12'); ?></li><?php endif; ?>
    <?php if($params->get('carousel13')): ?><li style="background: <?php echo $params->get('cc13bgk'); ?>; <?php if($params->get('cc13bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc13bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel13'); ?></li><?php endif; ?>
    <?php if($params->get('carousel14')): ?><li style="background: <?php echo $params->get('cc14bgk'); ?>; <?php if($params->get('cc14bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc14bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel14'); ?></li><?php endif; ?>
    <?php if($params->get('carousel15')): ?><li style="background: <?php echo $params->get('cc15bgk'); ?>; <?php if($params->get('cc15bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc15bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel15'); ?></li><?php endif; ?>
    <?php if($params->get('carousel16')): ?><li style="background: <?php echo $params->get('cc16bgk'); ?>; <?php if($params->get('cc16bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc16bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel16'); ?></li><?php endif; ?>
    <?php if($params->get('carousel17')): ?><li style="background: <?php echo $params->get('cc17bgk'); ?>; <?php if($params->get('cc17bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc17bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel17'); ?></li><?php endif; ?>
    <?php if($params->get('carousel18')): ?><li style="background: <?php echo $params->get('cc18bgk'); ?>; <?php if($params->get('cc18bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc18bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel18'); ?></li><?php endif; ?>
    <?php if($params->get('carousel19')): ?><li style="background: <?php echo $params->get('cc19bgk'); ?>; <?php if($params->get('cc19bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc19bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel19'); ?></li><?php endif; ?>
    <?php if($params->get('carousel20')): ?><li style="background: <?php echo $params->get('cc20bgk'); ?>; <?php if($params->get('cc20bgimg')): ?> background-image: url('<?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('cc20bgimg'); ?>')<?php endif; ?>"><?php echo $params->get('carousel20'); ?></li><?php endif; ?>
              


  </ul>
</div>

<?php if ($cjsloaders==1) : ?>
	<script type="text/javascript">
	jQuery.noConflict();
 	jQuery(".carouselbox<?php echo $module->id; ?> <?php if ($params->get('moduleclass_sfx')) echo ' ' . $params->get('moduleclass_sfx'); ?>").lsPreloader({

// background color
backgroundColor:  "<?php echo $params->get('lbbgcolors'); ?>", 

// background image
backgroundImage:  "<?php if($params->get('lbbgimgs')): ?><?php echo $mosConfig_live_site; ?>images/<?php echo $params->get('lbbgimgs'); ?><?php endif; ?>",   

// repeat | no-repeat | repeat-x | repeat-y
backgroundRepeat: "<?php echo $params->get('lbbgrpts'); ?>", 

// display your logo     
logoImage:      "",   

// display progress bar
progressShow:   <?php echo $params->get('lbprbars'); ?>, 

// progress bar color
progressColor:    "<?php echo $params->get('lbprbarclrs'); ?>",

// progress bar height
progressHeight:   "<?php echo $params->get('lbprbarhgs'); ?>", 

// top | center | bottom
progressPosition: "<?php echo $params->get('lbprbarpss'); ?>", 

// display percentage
percentShow:    <?php echo $params->get('lbprcnts'); ?>,      

// font family
percentFontFamily:  "", 

// font size
percentFontSize:  "<?php echo $params->get('lbprcntszs'); ?>",  

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

<?php if ($jsrandoms==1) : ?>
<script type="text/javascript">
	var ul = document.querySelector('.content');
	for (var i = ul.children.length; i >= 0; i--) {
    	ul.appendChild(ul.children[Math.random() * i | 0]);
	}
</script>
<?php endif; ?>

<script type="text/javascript">

carousel = (function(){

  if (!document.querySelector || 
      !('classList' in document.body)) {
    return false;
  }

  // Read necessary elements from the DOM once
  var box = document.querySelector('.carouselbox<?php echo $module->id; ?>');
  var next = box.querySelector('.next');
  var prev = box.querySelector('.prev');

  // Define the global counter, the items and the 
  // current item 
  var counter = 0;
  var items = box.querySelectorAll('.content li');
  var amount = items.length;
  var current = items[0];

  box.classList.add('active<?php echo $module->id; ?>');

  // navigate through the carousel

  function navigate(direction) {

    // hide the old current list item 
    current.classList.remove('current');
    
    // calculate th new position
    counter = counter + direction;

    // if the previous one was chosen
    // and the counter is less than 0 
    // make the counter the last element,
    // thus looping the carousel
    if (direction === -1 && 
        counter < 0) { 
      counter = amount - 1; 
    }

    // if the next button was clicked and there 
    // is no items element, set the counter 
    // to 0
    if (direction === 1 && 
        !items[counter]) { 
      counter = 0;
    }

    // set new current element 
    // and add CSS class
    current = items[counter];
    current.classList.add('current');
  }

  // add event handlers to buttons
  next.addEventListener('click', function(ev) {
    navigate(1);
  });
  prev.addEventListener('click', function(ev) {
    navigate(-1);
  });

  // show the first element 
  // (when direction is 0 counter doesn't change)
  navigate(0);

})();

  
</script>
