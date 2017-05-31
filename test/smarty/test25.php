<?php
	//包含模板引擎类
	include("smarty.class.php");
	//创建模板引擎类的对象
	$smarty = new Smarty();
	//连接数据库

	//执行sql语句

	//这是从数据库获取的动态数据，需要在模板中显示 
	$tit = "This is a test";
	$cont = "This is the content........";
	$hel = "nihao";
	//第一个，向模板中分配变量
	$smarty->assign("title",$tit);
	$smarty->assign("content",$cont);
	$smarty->assign("hello",$hel);
	var_dump($smarty);
	//加载指定模板，并显示
	$smarty->display("demo.php");
