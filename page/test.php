<head>
	<meta http-equiv="content" content="text/html;charset=utf-8" />
</head>

<?php

try{
	$dsn = "mysql:host=localhost;dbname=shunfengcan";
	$pdo = new PDO($dsn,"root","12345");
	$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	$pdo->setAttribute(PDO::ATTR_AUTOCOMMIT,0);
}catch(PDOException $e){
	echo $e->getMessage();
}

try {
	$stmt = $pdo -> prepare("insert into test (timestamp) values (?)");

	$stmt -> execute(array('h'));
/*
	$stmt->bindParam(1,$name);

	$name = 'aaaa';
		
	$stmt -> execute();
	$stmt -> execute();
*/
/*	
	var_dump($stmt);
	foreach($stmt as $arr){
		print_r($arr);
	}
*/
} catch(PDOException $e) {
	echo "".$e->getMessage();
}
echo "Yes";
