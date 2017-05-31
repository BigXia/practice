<?php
	$username = 'liuheng';
	$password = '12345';

	setCookie("username",$username,time()+24*60*60);
	setCookie("password",$password,time()+24*60*60);
	

	echo "保存成功!";
?>
