<?php
//echo count("");

echo strlen("hello")."<br />";
echo strlen("100000")."<br />";

$str = "abcdefghijklmn";

echo $str{0};
echo $str[1];
echo $str[2];
echo $str[3];
echo $str[4];

echo "<br />";

$s = "";
for($i = 0;$i<strlen($str);$i++){
	if($i%2 ==0){
		$s .= $str{$i};
	}
}
echo $s;
