<?php

/*
//域名
$pattern = "/(http|https|ftps)?(\:\/\/)?(www)?(\.\w*)?(\.\w*)(\.com|\.cn)/";

$str = 'http://www.baidu.com';
*/


//邮箱
$pattern = "/(\w*)@(\w*)\.(com|cn)/i";
$str = "15594809956@aili.Cn";

if(preg_match($pattern,$str)){
	echo "Yes!";
} else {
	echo "No!";
}
