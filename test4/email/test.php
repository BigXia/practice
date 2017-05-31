<?php

include "conn.inc.php";
try {
	$stmt = $pdo -> prepare("insert into users (name,password) values('ldp','66666')");	
	
	$stmt -> execute();
	echo "success";

	
} catch (PDOException $e) {
	echo "错误".$e->getMessage();
}

