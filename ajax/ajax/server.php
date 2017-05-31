<?php

	$title=$_POST['title'];
	$content=$_POST['content'];
	$time=Date("Y-m-d H:m:s");

	$fp=fopen("./msg.txt","a");
	fwrite($fp,"{$time} 发表评论，标题：{$title}，内容：{$content}<br>\n");
	
	fclose();

	echo "Test";
