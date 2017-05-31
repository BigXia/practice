<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
        <head>
                <title>点餐</title>
                <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
                <meta http-equiv="content-type" content="text/html;charset=utf-8"></meta>
                <meta http-equiv="refresh" content="300" />
	</head>

	<body>
<?php
	 //js代码,将js写在body体内，在js中定义并调用函数，才能在"提交后"自动弹出警告框。
	echo '<script type="text/javascript">
                function success(){
                        alert("订单发布成功，若15分钟内无人接单，订单将失效。")
                }
		function fail(){
			alert("请核对信息后提交。")
		}';
	require("order_response_class.php");
	if($shunObj_Order->valid()){
		echo 'success()';
	}else{
		echo 'fail()';
	}
	//	echo 'setTimeout("window.history.go(-1)",3000)';
	echo '</script>';

	//手动返回上一页
	//echo '<a href="javascript:history.back(-1)">返回上一页</a>';	
	//自动返回上一页，可以实现，但后续有些小bug.
	// echo '<script language="javascript">setTimeout("window.history.go(-1)",300)</script>';
?>
	
	</body>
</html>

<?php

