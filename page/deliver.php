<?php
	echo $head = '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>送餐</title>
	        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
		<meta http-equiv="refresh" content="3" />
		<link rel="stylesheet" type="text/css" href="css/order_deliver.css"></link>
		<script src="./javascript/deliver.js"></script>
		<script>
                        function limit_Count(max_Count){
                                var demo=document.getElementsByTagName("input");
                                function check(){
                                        var checked_Count=0;
                                        for(var i=0;i<demo.length;i++){
                                                if(demo[i].checked)
                                                {
                                                        checked_Count++;
                                                }
                                                if(checked_Count>max_Count){
                                                        return false;
                                                }
                                        }
                                        return true;
                                }
                                for(var i=0;i<demo.length;i++){
                                        demo[i].onclick=function(){
                                                if(!check()){
                                                        alert("最多选择"+max_Count+"个");
                                                        this.checked=false;
                                                }       
                                        }
                                }
                        }
                </script>
	</head>
';

	require("./response/order_deliver_getinfo_class.php");
	$prefix = '<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';

        //根据判断情况输出<body>        </body> 信息
        if($shunObj_Cookie_Login -> check_Password()){          //判断cookie信息
                $arr = $shunObj_Cookie_Login -> mysql_Read_Order();

                //school,school_area,building,building_house,phone_number,qq_mail
                list($a,$b,$c,$d,$e,$f) = $arr;
		setCookie("phone_number","$_COOKIE[phone_number]",time()+60*60*24*30*6);	//重置cookie信息
                setCookie("password","$_COOKIE[password]",time()+60*60*24*30*6);
                setCookie("user_id","$_COOKIE[user_id]",time()+60*60*24*30*6);
		echo $body = '
	<body>
		<div>
				<form action="./response/deliver_response.php" method="post">
						<p>
							<div class="order_Hint">
								<br />
        							<label>
				 					<input type="checkbox" onclick=limit_Count(3) name="a"/>
									<span></span>
									记住我<br />
								</label>
                                                                <label>
                                                                        <input type="checkbox" onclick=limit_Count(3) name="a"/>
                                                                        <span></span>
                                                                        记住我<br />
                                                                </label>
                                                                <label>
                                                                        <input type="checkbox" onclick=limit_Count(3) name="a"/>
                                                                        <span></span>
                                                                        记住我<br />
                                                                </label>
                                                                <label>
                                                                        <input type="checkbox" onclick=limit_Count(3) name="a"/>
                                                                        <span></span>
                                                                        记住我<br />
                                                                </label>
                                                                <label>
                                                                        <input type="checkbox" onclick=limit_Count(3) name="a"/>
                                                                        <span></span>
                                                                        记住我<br />
                                                                </label>
                                                                <label>
                                                                        <input type="checkbox" onclick=limit_Count(3) name="a"/>
                                                                        <span></span>
                                                                        记住我<br />
                                                                </label>
                                                                <label>
                                                                        <input type="checkbox" onclick=limit_Count(3) name="a"/>
                                                                        <span></span>
                                                                        记住我<br />
                                                                </label>
								<br /><br /><br /><br /><br /><br />
                        				</div>

                                                        <div>&nbsp;</div>
							<div>
								<div>
                                                        		<div class="half"><span>我所在的餐厅：</span></div>
									<div class="half"><span>将顺路送餐到：</span></div>
								<div>
								<select class="select" name="hall">
									<option>----请选择----</option>
									<option>一食堂</option>
									<option>二食堂</option>
									<option>民族餐厅</option>
								</select>
				<!--
                                                <script>
                                                        province_City("hall","kitchen");
                                                </script>
				-->

                                                        	<select class="select" name="building">
                                                                	<option>西六</option>
                                                               		<option>西七</option>
                                                                	<option>西二</option>
                                                                	<option>西三</option>
                                                        	</select>
							</div>

				<!--
                                                        <input type="text" class="clear" value="'.$a.'" readonly name="school">

                                                        <input type="text" class="clear" value="'.$b.'" readonly name="school_area">

                                                        <div class="space"></div>

                                                        <input type="text" class="clear" value="'.$c.'" readonly name="building">
				-->

                                                        <div>&nbsp;</div>  <!-- 空一行 -->
                                                        <span>联系方式：</span><br />

                                                        <!--  11个字节  -->
                                                        <input type="text" class="clear" id="" maxlength="11" value="'.$e.'" readonly name="phone_number_deliver" />

                                                        <!--  20个字节  -->
                                                        <input type="text" class="clear" id="" maxlength="30" value="'.$f.'" readonly name="qq_mail_deliver" />

                                                        <div>&nbsp;</div>
                                                        <div align="center">
                                                                <input type="reset"  class="jump_button" value="重新填写"/>
                                                                <input type="submit"  class="jump_button" value="我选好了"/>
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

echo $tail = '</html>';
