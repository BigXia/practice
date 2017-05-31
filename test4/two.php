<?php

        //获得已经有的session_id()

/*
        $sid = !empty($_GET[session_name()]) ? $_GET[session_name()] : '';
	if ( !$sid==""){
		session_id($sid);
	}
*/
        //用已经有的session_id(),开启会话
        session_start();
	
	echo '<br />';
	print_r($_SESSION);
	echo '<br />';

	echo $_SESSION['username'];
	
	echo session_name().' = '.session_id();

	include("link.php");
