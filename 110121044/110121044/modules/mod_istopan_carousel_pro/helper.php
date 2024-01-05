<?php
/**
* @version		1.2
* @module		Custom Carousel Pro
* Copyright (C) 2017 Istopan.gr All rights reserved.
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/


defined("_JEXEC") or die("Restricted access");

class ModIstopan_carousel_proHelper
{
	/**
	 * Get the item
	 *
	 * @return  object	The item.
	 */
	public static function getItem()
	{
		$input = JFactory::getApplication()->input;
		
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
	}
}
