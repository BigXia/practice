
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>送餐</title>
	        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
		<meta http-equiv="refresh" content="300" />
		<link rel="stylesheet" type="text/css" href="../css/deliver_response.css"></link>
	</head>
<?php
	$prefix = '<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	require("deliver_response_class.php");
	if($shunObj_Deliver->if_Expire()){
		echo $prefix."接单过于频繁，请稍后再试"; 
	}
	else if($order_Count==0){
		echo $prefix."暂时没有匹配的订单";
	}else{
		echo "<body><h4 align='center'>送餐信息</h4>";
		for($count=0;$count<$order_Count;$count++){		//不能用$i计数,与下面的$i会产生冲突，导致出错
			list($a,$b,$c,$d,$e,$f,$g,$h,$i,$j,$k,$l)=$valid_Record_Array[$count];
			
			echo "接到第 $l 张点餐订单"."<br />";
			if($shunObj_Deliver->mysql_Write_Deliver($l)){
				echo $str='
				<div>
					送餐地址:'.$a.'、'.$b.'、'.$c.'、'.$d.'
				</div>
				<div>
					点餐信息:'.$e.'、'.$f.'、'.$g.'、'.$h.'
				</div>
				<div>
					手机号码:'.$i.'
				</div>
				<div>
					应收金额:'.$j. '(元)餐费&nbsp;&nbsp;+&nbsp;&nbsp;'.$k.' (角)酬劳
				</div>
				<br /><br />
				';
			}else{
				echo '接收订单失败，订单可能已经被其他同学抢走了';
			}
		}
	}
/*
	if($shunObj_Deliver->valid()){
		echo yes;
	}else{
		echo no;
	}
	print_r($valid_Record_Array);
	echo '<br />'.$order_Count;
*/
?>
	</body>
</html>
