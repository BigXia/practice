<?php
require("5-1.php");
//$access_token = "nFX6GFsspSLBKJLgMQ3kj1YM8_FchRE7vE2ZOIlmfiCOQntZKnBwuOen2GCBpFHBYS4QLGX9fGoVfA36tftME2sRiYsKPzgGQKU-ygU7x8cgy_1tlQ4n1mhSumwQEGy6PK6rdTdo8O8GROuGE3Hiag";
$openid = "oabbcsjHFMz6qjW3FUIj2pCBd5kQ";
/*
$data = '{
    "touser":"'.$openid.'",
    "msgtype":"text",
    "text":
    {
         "content":"Hello World"
    }
}';
$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=".$access_token;
$result = https_request($url,$data);
var_dump($result);

function https_request($url,$data)
{
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url); 
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($curl, CURLOPT_POST, 1);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $result = curl_exec($curl);
    if (curl_errno($curl)) {
       return 'Errno'.curl_error($curl);
    }
    curl_close($curl);
    return $result;
}

$access_token = "NU7Kr6v9L9TQaqm5NE3OTPctTZx797Wxw4Snd2WL2HHBqLCiXlDVOw2l-Se0I-WmOLLniAYLAwzhbYhXNjbLc_KAA092cxkmpj5FpuqNO0IL7bB0Exz5s5qC9Umypy-rz2y441W9qgfnmNtIZWSjSQ";
$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=".$access_token;
$openid = "oLVPpjqs9BhvzwPj5A-vTYAX3GLc";
*/
//发送图文
$data = '{
    "touser": "'.$openid.'", 
    "msgtype": "news", 
    "news": {
        "articles": [
            {
                "title": "深圳天气预报", 
                "description": "", 
                "picurl": "", 
                "url": ""
            }, 
            {
                "title": "12月04日 周三 13℃~23℃ 多云 微风", 
                "description": "", 
                "picurl": "http://discuz.comli.com/weixin/weather/d01.jpg", 
                "url": ""
            }, 
            {
                "title": "12月05日 周四 16℃~24℃ 晴 微风", 
                "description": "", 
                "picurl": "http://discuz.comli.com/weixin/weather/d00.jpg", 
                "url": ""
            }, 
            {
                "title": "12月06日 周五 16℃~24℃ 多云 微风", 
                "description": "", 
                "picurl": "http://discuz.comli.com/weixin/weather/d01.jpg", 
                "url": ""
            }
        ]
    }
}';
$result = https_request($url,$data);

function https_request($url, $data = null){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}
/*
$access_token = "NU7Kr6v9L9TQaqm5NE3OTPctTZx797Wxw4Snd2WL2HHBqLCiXlDVOw2l-Se0I-WmOLLniAYLAwzhbYhXNjbLc_KAA092cxkmpj5FpuqNO0IL7bB0Exz5s5qC9Umypy-rz2y441W9qgfnmNtIZWSjSQ";
$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=".$access_token;
$openid = "oLVPpjqs9BhvzwPj5A-vTYAX3GLc";

//发送音乐
$data = '{
    "touser": "'.$openid.'", 
    "msgtype": "music", 
    "music": {
        "title": "最炫民族风", 
        "description": "凤凰传奇", 
        "musicurl": "http://122.228.226.40/music/zxmzf.mp3", 
        "hqmusicurl": "http://122.228.226.40/music/zxmzf.mp3", 
        "thumb_media_id": "b8as-GpA_EFqVoPY7vPT3fpVZBWJb27K77De2dc_0FZml-UExlTMP7IVMz89uh3W"
    }
}';
$result = https_request($url,$data);
var_dump($result);

function https_request($url, $data = null){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}

$access_token = "NU7Kr6v9L9TQaqm5NE3OTPctTZx797Wxw4Snd2WL2HHBqLCiXlDVOw2l-Se0I-WmOLLniAYLAwzhbYhXNjbLc_KAA092cxkmpj5FpuqNO0IL7bB0Exz5s5qC9Umypy-rz2y441W9qgfnmNtIZWSjSQ";
$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=".$access_token;
$openid = "oLVPpjqs9BhvzwPj5A-vTYAX3GLc";

//发送图片
$data = '{
    "touser":"'.$openid.'",
    "msgtype":"image",
    "image":
    {
      "media_id":"jViS8sQUXIh6rTdkz2qUOD5pvChYpp50i9rsLR4YnCm-pqdpiHhz6xbN2KAboScV"
    }
}';
$result = https_request($url,$data);
var_dump($result);

function https_request($url, $data = null){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}

$access_token = "NU7Kr6v9L9TQaqm5NE3OTPctTZx797Wxw4Snd2WL2HHBqLCiXlDVOw2l-Se0I-WmOLLniAYLAwzhbYhXNjbLc_KAA092cxkmpj5FpuqNO0IL7bB0Exz5s5qC9Umypy-rz2y441W9qgfnmNtIZWSjSQ";
$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=".$access_token;
$openid = "oLVPpjqs9BhvzwPj5A-vTYAX3GLc";

//发送语音
$data = '
{
    "touser": "'.$openid.'", 
    "msgtype": "voice", 
    "voice": {
        "media_id": "gAn8fV1hQB8mtLf6X2YTN-3ySaBMlzvbCLAzFUhPQDRVrWA1o9tRCnzxa4bEzUiM"
    }
}';
$result = https_request($url,$data);
var_dump($result);

function https_request($url, $data = null){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}

$access_token = "NU7Kr6v9L9TQaqm5NE3OTPctTZx797Wxw4Snd2WL2HHBqLCiXlDVOw2l-Se0I-WmOLLniAYLAwzhbYhXNjbLc_KAA092cxkmpj5FpuqNO0IL7bB0Exz5s5qC9Umypy-rz2y441W9qgfnmNtIZWSjSQ";
$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=".$access_token;
$openid = "oLVPpjqs9BhvzwPj5A-vTYAX3GLc";

//发送视频
$data = '{
    "touser": "'.$openid.'", 
    "msgtype": "video", 
    "video": {
        "media_id": "zbpy8wXj2UtIKB_56QUddCYLmWPLVeHoKqE94h2-nB9weSU65nVKTpE909Mvi8b5", 
        "thumb_media_id": "b8as-GpA_EFqVoPY7vPT3fpVZBWJb27K77De2dc_0FZml-UExlTMP7IVMz89uh3W"
    }
}';
$result = https_request($url,$data);
var_dump($result);

function https_request($url, $data = null){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}

下面介绍使用消息接口与客服接口相结合的方式，来回复用户。
首先，我们在消息接口中收到文本消息的时候，获取OpenID，相关代码如下：
//调用客服接口回复
$access_token = "nFX6GFsspSLBKJLgMQ3kj1YM8_FchRE7vE2ZOIlmfiCOQntZKnBwuOen2GCBpFHBYS4QLGX9fGoVfA36tftME2sRiYsKPzgGQKU-ygU7x8cgy_1tlQ4n1mhSumwQEGy6PK6rdTdo8O8GROuGE3Hiag";
$url = "https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=".$access_token;
$openid = $object->FromUserName;
然后向该OpenID发送客服消息，这里可以同时发送文本消息和音乐消息，相关代码如下：
//发送最炫民族风的介绍
$data = '{
    "touser":"'.$openid.'",
    "msgtype":"text",
    "text":
    {
         "content":"《最炫民族风》是凤凰传奇演唱的歌曲，是其第三张专辑《最炫民族风》的主打歌，于2009年5月27日全亚洲同步发行，2012年3月起在世界范围内走红。其彩铃下载量超过5000万。"
    }
}';
$this->https_request($url,$data);

//发送最炫民族风的音乐
$data = '{
    "touser": "'.$openid.'", 
    "msgtype": "music", 
    "music": {
        "title": "最炫民族风", 
        "description": "凤凰传奇", 
        "musicurl": "http://122.228.226.40/music/zxmzf.mp3", 
        "hqmusicurl": "http://122.228.226.40/music/zxmzf.mp3", 
        "thumb_media_id": "jVyS3KRGXvfeLHcnFVDSx07LeFhff-qwH0tVxRyU5RMBtC3aC14ta5HlGb6eK0_d"
    }
}';
$this->https_request($url,$data);
发送完客服消息之后，还可以继续使用消息接口回复，相关代码如下：
$contentStr = "以上是为您找到的关于 ".$object->Content." 的内容";
if (is_array($contentStr)){
    $resultStr = $this->transmitNews($object, $contentStr);
}else{
    $resultStr = $this->transmitText($object, $contentStr);
}
return $resultStr;
*/
