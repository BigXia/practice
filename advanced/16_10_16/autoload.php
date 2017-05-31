<?php


function __autoload($class){
	require_once($class.'_manager.php');
}

$e = new employee('刘恒', '男');
$e -> get_name();

$m = new manager('李曼', '女', '客服');
$m -> get_name();

