<?php
	include "init.inc.php";
	include "page.class.php";

	if(!$smarty->isCached("index.tpl",$_SERVER['REQUEST_URI'])){

	$smarty -> assign("arr",array("os"=>"Linux","webserver"=>"Nginx","db"=>"MySQL","language"=>"PHP"));

	$pdo = new PDO("mysql:host=localhost;dbname=sfc","root","46683e97ffd7");

	$page = new Page(5,5);

	$stmt = $pdo -> prepare("select id,name,password from users");

	$stmt -> execute();

	$users = $stmt -> fetchAll(PDO::FETCH_ASSOC);

	//	print_r($users);

	$smarty -> assign("fpage",$page->fpage());

	$smarty -> assign("users",$users);

	}

	$smarty -> assign("time",date("Y-m-d H:i:s"));	

	$smarty -> display("index.tpl",$_SERVER['REQUEST_URI']);

	//	$smarty -> clearAllCache( );
