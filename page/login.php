<?php

	if(count($_COOKIE)){
	echo $cookie_Exist = '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>登陆</title>
	        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
		<meta http-equiv="refresh" content="300" />
		<link rel="stylesheet" type="text/css" href="css/order_deliver.css"></link>

		<!-- javascript脚本  -->
		<script type="text/javascript">
			function myFunction_clear1(){
				input=document.getElementsByName("phone_number");
				input[0].value="";
			}
			function myFunction_clear3(){
                                input=document.getElementsByName("password");
                                input[0].value="";
                        }
		</script>
	</head>
	<body>
		<div>
			<h4 align="center">登陆</h4>
				<form action="./login_response.php" method="post">
						<p>
							<div align="center">
								<div>&nbsp;</div>  <!-- 空一行 -->
                                                        	<span>用户帐号</span><br />

								<!--  11个字节  -->
	              <input type="text" class="clear" name="phone_number" id="" maxlength="11" value="'.$_COOKIE[phone_number].'" onclick="myFunction_clear1()" />

								<div class = "space"></div>

								<div>&nbsp;</div>	
								<span>用户密码</span><br />
								<input type="password" class="clear" value="'.$_COOKIE[password].'" name="password" onclick="myFunction_clear3()" />
							</div>

							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div align="center">
						<!--		<input type="reset"   class="jump_button" value="找回密码"> 	-->
								<input type="submit"  class="jump_button" value="一键登陆" />
							</div>
						</p>
				</form>
		</div>

	</body>
</html>


	</body>
</html>
';
}else{
	echo $cookie_Not_Exist = '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>登陆</title>
	        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
		<meta http-equiv="refresh" content="300" />
		<link rel="stylesheet" type="text/css" href="css/order_deliver.css"></link>

		<!-- javascript脚本  -->
		<script type="text/javascript">
			function myFunction_clear1(){
				input=document.getElementsByName("phone_number");
				input[0].value="";
			}
			function myFunction_clear3(){
                                input=document.getElementsByName("password");
                                input[0].value="";
                        }
		</script>
	</head>
	<body>
		<div>
			<h4 align="center">登陆</h4>
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
								<input type="password" class="clear" value="" name="password" onclick="myFunction_clear3()" />
							</div>

							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div align="center">
						<!--		<input type="reset"   class="jump_button" value="找回密码">	-->
								<input type="submit"  class="jump_button" value="一键登陆" />
							</div>
						</p>
				</form>
		</div>

	</body>
</html>


	</body>
</html>
';
}
