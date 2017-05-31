<?php

include "config.php";

//	$pdo->exec("create trigger tg2 after insert on user for each row insert into email (title) value('test')");

$str="create trigger tg2 after insert on user for each row insert into email (title) value('".$_POST['name']."')";

$pdo->exec($str);

echo $str."<br>";

$stmt = $pdo->prepare("insert into user (username) value ('pdo')");


$stmt -> execute();

$pdo->exec("drop trigger tg2");

echo "yes"."<br>";
print_r($_POST);

echo "hello";
