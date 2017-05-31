<?php
	include "conn.inc.php";

if(!(isset($_SESSION['isLogin']) && $_SESSION['isLogin']===1)){
        header("Location:login.php");
}

echo "你好：".$_SESSION['name']." <a href='logout.php'>退出</a><br />";

if($_SESSION['id'] == 1){
	echo "你是老大!<br />";
}
 

$stmt = $pdo -> prepare("select id,uid,title,ptime from email where uid=?");

$stmt -> execute(array($_SESSION['id']));

echo "你有".$stmt->rowCount()."邮件!<br />";
echo "<table border=1>";
echo "<tr><td>ID</td><td>title</td><td>time</td></tr>";
	while(list($id,$title,$ptime) = $stmt->fetch(PDO::FETCH_NUM)){
		echo "<tr>";
		echo "<td>".$id."</td>";
		echo "<td>".$title."</td>";
		echo "<td>".date("Y-m-d H:i",$ptime)."</td>";
		echo "</tr>";
	}
	
echo "</table>";
