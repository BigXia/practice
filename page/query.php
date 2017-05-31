
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
        <head>
                <title>过去一天</title>
                <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
                <meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
                <meta http-equiv="refresh" content="300" />
	</head>
	<body>
<?php 
	require("./response/order_deliver_getinfo_class.php");

	$prefix = '<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	//根据判断情况输出<body>	</body> 信息
	if($shunObj_Cookie_Login -> check_Password()){		//判断cookie信息
		// $arr = $shunObj_Cookie_Login -> mysql_Read_Order();

		// school,school_area,building,building_house,phone_number,qq_mail
		// list($a,$b,$c,$d,$e,$f) = $arr;
		setCookie("phone_number","$_COOKIE[phone_number]",time()+60*60*24*30*6);
                setCookie("password","$_COOKIE[password]",time()+60*60*24*30*6);
                setCookie("user_id","$_COOKIE[user_id]",time()+60*60*24*30*6);
		$time_Now = time();
		//查询过去一天本用户的点餐与送餐记录,与下面的变量$a---$h一一对应
		$sql = "select phone_number_order,timestamp_order,phone_number_deliver,timestamp_deliver,hall,kitchen,dish,dish_size from order_deliver where timestamp_order > ($time_Now - 60*60*24) and (phone_number_order = '$_COOKIE[phone_number]' or phone_number_deliver = '$_COOKIE[phone_number]')";
		$result = $shunObj_Cookie_Login -> mysql_Query($sql);
		//	echo mysql_affected_rows();
		echo $body1 = '<h4 align="center">过去一天</h4>';
		for($count = 0;$count < mysql_affected_rows();$count++){
			$arr = mysql_fetch_row($result);
			list($a,$b,$c,$d,$e,$f,$g,$h) = $arr;
			//	print_r($arr);
			echo $body2 = '
				<div>
					点餐帐号：'.$a.'	<br />
					点餐时间：'.date("H:i:s",$b).'	<br />
					送餐帐号：'.$c.'	<br />
					接单时间：'.date("H:i:s",$d).'	<br />
				</div>
				<div>
					点餐信息：'.$e.'、'.$f.'&nbsp;的&nbsp;'.$h.'&nbsp;'.$g.'	<br /><br />
				</div>
			';
		}
}else if($shunObj_Cookie_Login -> if_Exist()){
	echo $prefix."请返回登陆";
}else{
	echo $prefix."请返回注册";
}

?>

	</body>
</html>
