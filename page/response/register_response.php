<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
        <head>
                <title>注册</title>
                <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
                <meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
                <meta http-equiv="refresh" content="300" />
	</head>

	<body>
<?php
	

	require("register_response_class.php");
	$prefix = '<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'; 	//网页提醒的前缀代码，
	
	//	$shunObj_Register -> test();

	$reg_Phone = "/^[1][358][0-9]{9}$/";
	$match_Phone = preg_match($reg_Phone,$shunObj_Register->phone_Number);		//正则匹配手机号码
	$reg_Mail = "/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/";
	$match_Mail = preg_match($reg_Mail,$shunObj_Register->qq_Mail);			//正则匹配邮箱
	$reg_Password = "/[a-zA-Z\d]{6,20}/";
	$match_Password = preg_match($reg_Password,$shunObj_Register->password);	//正则匹配密码
	$reg_House = "/[\d]{3,4}/";
	$match_House = preg_match($reg_House,$shunObj_Register->building_House);	//正则匹配宿舍门牌号
	if(!$match_Phone){
		echo $prefix."请正确输入11位手机号码";
	}else if($shunObj_Register -> if_Exist()){		//判断帐号是否存在
		echo $prefix."帐号已存在，请返回登陆。";
	}else if(!$match_Mail){
                echo $prefix."请正确输入邮箱。";
        }else if(!$match_Password){
                echo $prefix."密码 请设置6至20位 数字/字母。";
        }else if(!$match_House){
		echo $prefix."宿舍门牌号 请输入3至4位数字。";
	}else if($shunObj_Register -> valid()){		//判断注册是否成功
		echo $prefix."帐号（即手机号）注册成功，请返回登陆。";	//若true，显示登陆页面
	}else{
		echo $prefix."请输入正确的送餐地址。";			//失败false,提示用户重新填写注册信息
	}
		
	echo '<br />';
	
//	echo "<br />".$_POST["phone_number"];
	
?>
	
	</body>
</html>


