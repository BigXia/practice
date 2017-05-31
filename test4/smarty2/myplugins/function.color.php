<?php
	
	/**
	 * 颜色控件
	 * 
	 * @param $name 控件name
	 * @param $value 选中值
	 * <{color name='titlecolor' value='FF00FF'}>
	 */
	function smarty_function_color($args, $smarty) {

		$name = $args['name'];
		$value = !empty($args['value']) ? $args['value'] : '000000';
	
		if(!defined('COLOR_INIT')) {
			define('COLOR_INIT', 1);
			$str= '<script src="./js/jscolor/jscolor.js"></script>';
   			
		}
		$str .= '<input class="color" style="width:48px;height:16px;overfrom:hidden" name="'.$name.'" value="'.$value.'" />';
	
		return $str;
	}

