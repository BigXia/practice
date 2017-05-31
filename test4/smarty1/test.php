<?php

include "smarty.class.php";

$smarty = new Smarty();

$pdo = new PDO("mysql:host=localhost;dbname=sfc","root","46683e97ffd7");

$stmt = $pdo -> prepare("select id,uid,title,ptime,mbody from email order by id");

$stmt -> execute();

$data = $stmt -> fetchAll(PDO::FETCH_ASSOC);

$smarty -> assign("users",$data);
$smarty -> assign("title","this is a demo");
$smarty -> assign("author","feng and meizi");

$smarty -> display("test.tpl");
