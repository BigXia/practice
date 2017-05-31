<meta http-equiv="refresh" content="">
<?php
	//获得已经有的session_id()
/*
	$sid = !empty($_GET[session_name()]) ? $_GET[session_name()] : '';
	if ( !$sid == ''){
		session_id($sid);
	}
*/
	//用已经有的session_id(),开启会话
	session_start();

	//定义session数组——超全局
	$_SESSION['username'] = 'meizi';
	$_SESSION['age'] = '18';
	$_SESSION['sex'] = 'nv';

	$_SESSION['lx']['email'] = 'mz@qq.com';
	$_SESSION['lx']['phone'] = '119';
	
	echo session_name()."=".session_id();	

	include("link.php");
