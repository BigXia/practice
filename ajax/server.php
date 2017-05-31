<?php

	$title=$_POST['title'];
	$content=$_POST['content'];
	$time=Date("Y-m-d H:i:s");

	$fp=@fopen("msg.txt","a");
	fwrite($fp,"在($time)时候，有一篇文章被发表，标题是：{$title},内容是：{$content}<br>\n");
	fclose($fp); 
	
	echo "success";
?>
	<h1>www</h1>
