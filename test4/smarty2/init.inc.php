<?php

	define("ROOT",dirname(__FILE__).'/');

        include ROOT."libs/Smarty.class.php";

	$smarty = new Smarty;

	$smarty -> setTemplateDir(ROOT."templates/");
	$smarty -> setCompileDir(ROOT."templates_c/");
	//指定配置文件所在的目录
	$smarty -> setConfigDir(ROOT."configs/");
        $smarty -> auto_literal = false;
	
	//添加一个插件的目录
	$smarty -> addPluginsDir(ROOT."myplugins/");

	//缓存位置
	$smarty -> setCacheDir(ROOT."cache/");	

	//缓存时间
	$smarty -> cache_lifetime=10;
  
	//开启缓存的功能
	$smarty -> caching=true;

	
	$smarty -> left_delimiter = "<{";
	$smarty -> right_delimiter = "}>";

	//可以让定界符号使用空格
	$smarty -> auto_literal = false;
