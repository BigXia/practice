
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>送餐</title>
	        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
		<meta http-equiv="refresh" content="30" />
		<link rel="stylesheet" type="text/css" href="../css/deliver_response.css"></link>
	</head>
<?php
	require("deliver_response_class.php");
	if($order_Count==0){
		echo "暂时没有匹配的订单";
	}else{
		for($ii=0;$ii<$order_Count;$ii++){		//不能用$i计数,与下面的$i会产生冲突，导致出错
			list($a,$b,$c,$d,$e,$f,$g,$h,$i,$j,$k,$l,$m,$n)=$valid_Record_Array[$ii];
				
			$str="<body>
			<table>
				<tr>
					<th>送餐地址:</th>
					<td>$b</td>
					<td>$c</td>
					<td>$d</td>
					<td>$e</td>
				</tr>
			</table>
			<table>
				<tr>
					<th>点餐信息:</th>
					<td>$f</td>
					<td>$g</td>
					<td>$h</td>
					<td>$i</td>
				</tr>
			</table>
			<table>
				<tr>
					<th>手机号码:</th>
					<td>$j</td>
				</tr>
			</table>
			<table>
				<tr>
					<th>应收金额:</th>
					<td>$m (元)餐费</td>
					<td>+</td>
					<td>$n (角)酬劳</td>
				</tr>
			</table>";
		echo $str.'<br /><br />';
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
