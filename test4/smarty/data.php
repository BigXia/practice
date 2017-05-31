<?php

include "smarty.php";

$smarty = new Smarty();

//连接数据库

$tit = "test";
$cont = "This is a test!";

//分配变量(varname,varvalue) 只有字符串才能作为数组的下标
$smarty -> assign("title",$tit);
$smarty -> assign("content",$cont);
$smarty -> assign("test","test变量");

var_dump($smarty);

//显示模板
$smarty -> display("demo.html");
