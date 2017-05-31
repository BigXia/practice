<?php

//处理登录
if(isset($_POST['dosubmit'])){
	include "conn.inc.php";
	//验证用户名与密码
	try {
		$stmt = $pdo -> prepare("select id,name,password from users where name=? and password=?");
		$stmt -> execute(array($_POST['username'],$_POST['password']));

      		if($stmt -> rowCount() > 0){
                	//将用户信息一次性放到session中
                	$_SESSION=$stmt->fetch(PDO::FETCH_ASSOC);

                	//加登录标记
                	$_SESSION['isLogin'] = 1;

			header("Location:index.php");	
        	} else {
                	echo "登录失败！<br />";
        	}
		
		
	} catch (PDOException $e){
	        echo "错误".$e->getMessage();
		
	}

}


?>


<form action="login.php" method="post">
	username:<input type="text" name="username" value="" /><br />
	password:<input type="password" name="password" value="" /><br />

	<input type="submit" name="dosubmit" value="login" /><br />
</form>
