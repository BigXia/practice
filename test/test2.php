<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<?php
	$timestamp_test = time();
	mysql_connect('localhost', 'root', '12345');
	mysql_select_db("shunfengcan");
	$school = '西安理工大学';

	$sql="select * from ".$table." where username='$user'";
	$sql = "select * from order_deliver where timestamp_order < '$timestamp_test'-900 and school= '$school'";
	$result = mysql_query($sql);
	echo $result."<br />";
	$record_Count = mysql_affected_rows()."<br />";
	echo $record_Count;
	for($i = 0;$i < $record_Count;$i++){
		mysql_data_seek($result,$i);
		print_r(mysql_fetch_row($result));
		echo '<br />';
	}

	mysql_close();
?> 
