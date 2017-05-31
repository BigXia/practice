<?php
	$str = '15594809957';
	$reg = "/1/";

	echo $str."<br />";
//	echo preg_replace($reg,'0',$str.'<br />');
//	print_r(preg_split($reg,$str));
	echo '<br />';
	$match = preg_match($reg,$str);
	echo $match."<br />";
	if($match){
		echo "yes";
	}else{
		echo "no";
	}
