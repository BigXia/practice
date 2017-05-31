	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	</head>
<?php

	include "TopSdk.php";
	date_default_timezone_set('Asia/Shanghai'); 

/*	$httpdns = new HttpdnsGetRequest;
	$client = new ClusterTopClient("4272","0ebbcccfee18d7ad1aebc5b135ffa906");
	$client->gatewayUrl = "http://api.daily.taobao.net/router/rest";
	var_dump($client->execute($httpdns,"6100e23657fb0b2d0c78568e55a3031134be9a3a5d4b3a365753805"));
*/

//发送短信
	$c = new TopClient;
$appkey="23318375";
$c->appkey = $appkey;
$secret="ac501577245b388cedeb6ada5642d776";
$c->secretKey = $secret;
$req = new AlibabaAliqinFcSmsNumSendRequest;
$req->setExtend("123456");
$req->setSmsType("normal");
$req->setSmsFreeSignName("注册验证");
$req->setSmsParam("{\"code\":\"1234\",\"product\":\"(海燕，今晚约吗? ——刘恒)\"}");
$req->setRecNum("15594809957");
$req->setSmsTemplateCode("SMS_5031254");
$resp = $c->execute($req);
var_dump($resp);


?>
