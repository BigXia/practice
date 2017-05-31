<?php
	//全局可以使用的通用函数声明在这个文件中.

	function myfun($value) {
		if(strlen($value)>20){
			return false;
		}else{
			return true;
		}
	}

	function test($value) {
		return $value*$value;
	}
