
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
//定义跳转页面

$user_Exist_Title="该用户已存在，请直接登陆";
$user_Register_Valid_Title="注册成功，请登陆";
	$user_Login_Forward = '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>注册</title>
	        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
		<meta http-equiv="refresh" content="300" />
		<link rel="stylesheet" type="text/css" href="../css/order_deliver.css"></link>

		<!-- javascript脚本  -->
		<script type="text/javascript">
			function myFunction_clear0(){
				input=document.getElementsByName("building_house");
			    	input[0].value="";
			}
			function myFunction_clear1(){
				input=document.getElementsByName("phone_number");
				input[0].value="";
			}
			function myFunction_clear2(){
				input=document.getElementsByName("qq_mail");
				input[0].value="";
			}
			function myFunction_clear3(){
                                input=document.getElementsByName("password");
                                input[0].value="";
                        }
			function myFunction_valid(){
				alert("警告!")
			}
		</script>
	</head>
	<body>
		<div>
			<h4 align="center">

';
	$user_Login_Back = '</h4>
				<form action="./login_response.php" method="post">
						<p>
							<div align="center">
								<div>&nbsp;</div>  <!-- 空一行 -->
                                                        	<span>用户帐号</span><br />

								<!--  11个字节  -->
	              <input type="text" class="clear" name="phone_number" id="" maxlength="11" value="手机号码：" onclick="myFunction_clear1()" />

								<div class = "space"></div>

								<div>&nbsp;</div>	
								<span>用户密码</span><br />
								<input type="text" class="clear" value="请输入密码：" name="password" onclick="myFunction_clear3()" />
							</div>

							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div align="center">
								<input type="reset"   class="jump_button" value="找回密码">
							<input type="reset"   class="jump_button" value="重新填写" />
								<input type="submit"  class="jump_button" value="一键登陆" />
							</div>
						</p>
				</form>
		</div>
		<div class="footer">
			<span><p>免责声明：顺风餐仅提供信息服务，不参与餐品递送。</p></span>
			<div>&nbsp;</div>
		</div>

	</body>
</html>


	</body>
</html>
';

	require("register_response_class.php");
	
	//	$shunObj_Register -> test();
	$if_Exist = $shunObj_Register -> if_Exist();
	if($if_Exist){
		echo $user_Login_Forward.$user_Exist_Title.$user_Login_Back;
	}else if($shunObj_Register -> valid()){		//判断注册是否成功
		echo $user_Login_Forward.$user_Register_Valid_Title.$user_Login_Back;	//若true，显示登陆页面
	}else{
		echo "请返回核对信息";			//失败false,提示用户重新填写注册信息
	}
		
	echo '<br />';
	
//	echo "<br />".$_POST["phone_number"];
	
?>
	
	</body>
</html>


