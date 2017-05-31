<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>登陆</title>
	        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
		<meta http-equiv="refresh" content="300" />
		<link rel="stylesheet" type="text/css" href="../css/order_deliver.css"></link>

	</head>
	<body>
		<div>
<?php
	require("response/login_response_class.php");
	//	if($shunObj_Login -> if_Exist()){ 	//判断用户是否存在
	//	echo "用户已经存在,请登陆";
	//	}else
	$prefix = '<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	if($shunObj_Login -> check_Password()){	//核对密码
		$phone_Number_Cookie = $shunObj_Login -> phone_Number;
		$password_Cookie = $shunObj_Login -> password;
		$user_Id = $shunObj_Login -> mysql_Read_Login();	//以数组形式获取user_id
		setCookie("phone_number","$phone_Number_Cookie",time()+60*60*24*30*6);
		setCookie("password","$password_Cookie",time()+60*60*24*30*6);
		setCookie("user_id","$user_Id[0]",time()+60*60*24*30*6);
		echo $prefix."欢迎来到顺风餐,请返回点餐、或者送餐。";
	}else if($shunObj_Login -> if_Exist()){
		echo $prefix."登陆失败,请检查帐号或密码,";
	}else{
		echo $prefix."帐号不存在，请返回注册";
	}
	
	


?>

	</body>
</html>


	</body>
</html>
