<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>注册</title>
	        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
		<meta http-equiv="refresh" content="3" />
		<link rel="stylesheet" type="text/css" href="css/order_deliver.css"></link>

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
		<div id = "menu">
			<table>
				<tr>	
					<td class="td"><a href="./register.php">注册</a></td>
					<td class="td"><a href="./order.php">点餐</a></td>
					<td class="td"><a href="./deliver.php">送餐</a></td>
				</tr>
			</table>
		</div>
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		aaa<br />
		<div>
			<h4 align="center">注册</h4>
				<form action="./response/register_response.php" method="post">
						<p>

							<div>&nbsp;</div>

							<span>我的地址：（请认真填写，点餐要用哦）</span><br />

                                                        <select class="select" name="school">  <!--  12个字节  -->
                                                                <option>----请选择----</option>
                                                                <option selected>西安理工大学</option>
                                                        </select>

                                                        <select class="select" name="school_area">     <!--  8个字节 -->
                                                                <option>----请选择----</option>
                                                                <option selected>金花校区</option>
                                                                <option>曲江校区</option>
                                                        </select>

							<div class = "space"></div>

                                                        <select class="select" name="building">        <!--  4个字节 -->
                                                                <option>----请选择----</option>
                                                                <option>西一</option>
                                                                <option>西二</option>
                                                                <option>西三</option>
                                                                <option>西四</option>
                                                                <option>西五</option>
								<option>西六</option>
								<option>西七</option>
                                                        </select>

							
                                                        <!--  3个字节 -->
        <input type="text" class="clear" name="building_house" id="" maxlength="4" value="宿舍门牌号：" onclick="myFunction_clear0()"/>

							<div>&nbsp;</div>  <!-- 空一行 -->
                                                        <span>手机登陆：</span><br />

                                                        <!--  11个字节  -->
              <input type="text" class="clear" name="phone_number" id="" maxlength="11" value="手机号码：" onclick="myFunction_clear1()" />

                                                        <div class = "space"></div>

                                      	<!--            <div>&nbsp;</div>
                                                        <span>用户密码：(请妥善保管)</span><br />
                                                        <input type="text" class="clear" value="请设置密码：" name="password" onclick="myFunction_cl
ear3()" />
					-->

							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div align="center">
					<!--			<a href="./find_password.php"><input type="button" class="jump_button" value="找回密码"/>
					-->
								<a href="./login.php"><input type="reset"   class="jump_button" value="登&nbsp;&nbsp;&nbsp;&nbsp;陆" /></a>
								<input type="submit"  class="jump_button" value="一键注册" />
							</div>
						</p>
				</form>
		</div>

	</body>
</html>


	</body>
</html>
