<dfasdkfjsdfksadf....ead>
	<meta http-equiv="refresh" content="300" />
</head>

<?php

$link = mysql_connect("localhost","root","12345");

//选择默认数据库
mysql_select_db("shunfengcan");

/*
$sql = "create table users(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
phone_number int(11),
qq_mail varchar(20),
password varchar(20),
school char(12),
school_area char(8),
building char(4),
building_house char(3),
timestamp_login char(10)
)";
*/
$sql = "update order_deliver set user_id_deliver=22 where order_id=73 and user_id_deliver is null";

$result = mysql_query($sql); //只要放一个正常有sql语句就可以执行

var_dump($result);
print_r($arr = mysql_fetch_row($result));
echo $count = mysql_affected_rows();
if($count){
	echo 'yes';
}else{
	echo 'no';
}

print_r($arr);
echo '<br />';
list($test) = $arr;
echo $test;
echo '<br />';

//关闭数据库

mysql_close();
