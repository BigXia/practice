<?php

        //获得已经有的session_id()
/*
        $sid = !empty($_GET[session_name()]) ? $_GET[session_name()] : '';
	if(!$sid==""){
		session_name($sid);
	}
*/
        //用已经有的session_id(),开启会话
        session_start();

	unset($_SESSION['username']);   
	
	$_SESSION = array();

	session_destroy();

	if(isset($_COOKIE[session_name()])){
		setCookie(session_name(),'',time()-3600,"/");
	}
	
	print_r($_SESSION);

	include("link.php");
