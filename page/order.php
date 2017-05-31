<?php 
	//输出页面头信息
	echo $head = '
		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
        <head>
                <title>点餐</title>
                <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
                <meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
                <meta http-equiv="refresh" content="3000" />
                <link rel="stylesheet" type="text/css" href="css/order_deliver.css"></link>
		<script src="./javascript/order.js"></script>

                <!-- javascript脚本  -->
                <script type="text/javascript">
                        function myFunction_clear0(){
                                input=document.getElementsByName("building_house");
                                input[0].value="";
                        }
                        function myFunction_clear1(){
                                input=document.getElementsByName("phone_number_order");
                                input[0].value="";
                        }
                        function myFunction_clear2(){
                                input=document.getElementsByName("qq_mail_order");
                                input[0].value="";
                        }
                </script>
        </head>
';

	require("./response/order_deliver_getinfo_class.php");
	$prefix = '<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';

	//根据判断情况输出<body>	</body> 信息
	if(1){
//	if($shunObj_Cookie_Login -> check_Password()){		//判断cookie信息

		$arr = $shunObj_Cookie_Login -> mysql_Read_Order();

		//school,school_area,building,building_house,phone_number,qq_mail
		list($a,$b,$c,$d,$e,$f) = $arr;
		setCookie("phone_number","$_COOKIE[phone_number]",time()+60*60*24*30*6);
                setCookie("password","$_COOKIE[password]",time()+60*60*24*30*6);
                setCookie("user_id","$_COOKIE[user_id]",time()+60*60*24*30*6);
		echo $body = '
	<body>
		<div>
			<h4 align="center">点&nbsp;&nbsp;餐</h4>
				<form action="./response/order_response.php" target="_blank" method="post">
						<p>
							<div>&nbsp;</div>

							<div><span>送餐地址：</span><div>
							<input class="clear" value="'.$a.'" readonly name="school">	<!--  12个字节  -->

							<input class="clear" value="'.$b.'" readonly name="school_area">	<!--  8个字节 -->

							<div class="space"></div>

							<input class="clear" value="'.$c.'" readonly name="building">	<!--  4个字节 -->

							<!--  3个字节 -->
	<input type="text" class="clear" id="" maxlength="3" value="'.$d.'" readonly name="building_house"/>


							<div>&nbsp;</div>
							<span>点餐信息：</span>&nbsp;&nbsp;<span><a href="./class.php">（查看品类）</a></span><br />

						<script>
							province_City("hall","kitchen","dish","dish_size","price");
						</script>
						<!--
							<select name="hall">
								<option>----餐&nbsp;&nbsp;厅----</option>
								<option>一楼餐厅</option>
								<option>二楼餐厅</option>
								<option>民族餐厅</option>

							</select>

							<select name="kitchen">	
								<option>----档&nbsp;&nbsp;口----</option>
								<option>王大娘</option>
								<option>驴提子面</option>
								<option>川湘人家</option>
							</select>

							<div class="space"></div>						
	
							<select name="dish">
								<option>----品&nbsp;&nbsp;类----<option>
								<option>干拌</option>
								<option>西红柿鸡蛋面</option>
								<option>油泼面</option>
								<option>杂酱面</option>
								<option></option>
							</select>

							<select name="dish_size">
								<option>----大/小----</option>
								<option>大份</option>
								<option>小份</option>
							</select>

							<div>&nbsp;</div>	
							<span>应付金额:</span><br />
							
							<input type="text" class="price" value="0" readonly name="price" />

						-->
							<input type="text" class="price_tip_unit" value="元（餐费）" readonly>

							<!-- 2个字节 -->
							<select class="price_tip" name="tip">
								<option selected>10</option>
								<option>15</option>
								<option>20</option>								
							</select>			
							<span>
							<input type="text" class="price_tip_unit"  value="角（小费）" readonly>
							</span>

							<div>&nbsp;</div>  
                                                        <span>联系方式：</span><br />

                                        
              <input type="text" class="clear" id="" maxlength="11" value="'.$e.'" readonly " name="phone_number_order" />

                                                        
                  <input type="text" class="clear" id="" maxlength="30" value="'.$f.'" readonly name="qq_mail_order" />


							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div align="center">
								<input type="reset"   class="jump_button" value="重新填写"/>
								<input type="submit"  class="jump_button" value="提交订单"/>
							</div>
						</p>
				</form>
		</div>
		<div class="footer">
			<span><p>免责声明：顺风餐仅提供信息服务，不参与餐品递送。</p></span>
			<div>&nbsp;</div>
		</div>

	</body>
';
}else if($shunObj_Cookie_Login -> if_Exist()){
	echo $prefix."请返回登陆";
}else{
	echo $prefix."请返回注册、或者登陆";
}

//输出尾信息，关闭html标签
echo $tail = '</html>';
