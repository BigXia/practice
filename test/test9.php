<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<?php
	mysql_connect("localhost","root","12345");
	mysql_select_db("shunfengcan");
	$sql = "select * from order_deliver";
	$result = mysql_query($sql);
	mysql_data_seek($result,3);
	$arr = mysql_fetch_row($result);
	print_r($arr);
	mysql_close();
?>
