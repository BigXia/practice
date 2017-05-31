<?php
/*
    方倍工作室 http://www.cnblogs.com/txw1958/
    CopyRight 2013 www.doucube.com  All Rights Reserved
*/

define("TOKEN", "weixin");
$wechatObj = new wechatCallbackapiTest();
if (isset($_GET['echostr'])) {
    $wechatObj->valid();
}else{
    $wechatObj->responseMsg();
}

class wechatCallbackapiTest
{
    public function valid()   //这是个判断是否有效的函数，那么用什么参数判断的呢,这个参数有什么意义？
    {
        $echoStr = $_GET["echostr"];
        if($this->checkSignature()){    //用$this->$function 来调用另一个函数——检验签名函数
            echo $echoStr;
            exit;
        }
    }

    private function checkSignature()	//校验签名
    {
        $signature = $_GET["signature"];   //signature是谁给出的，微信公众号服务器转过来的，还是微信客户端给的？
        $timestamp = $_GET["timestamp"];   //时间戳：从1970年1月1日，以天为单位开始算起
        $nonce = $_GET["nonce"];           //??

        $token = TOKEN;	                   //开头有这么一句：define("TOKEN","weixin")
        $tmpArr = array($token, $timestamp, $nonce);  //？临时数组
        sort($tmpArr);				//排序，这是在干嘛？
        $tmpStr = implode( $tmpArr );		//？？implode:内曝
        $tmpStr = sha1( $tmpStr );

        if( $tmpStr == $signature ){
            return true;
        }else{
            return false;
        }
    }

    public function responseMsg()		//响应消息函数
    {
        $postStr = $GLOBALS["HTTP_RAW_POST_DATA"];	//$GLOBALS:囊括了所有的"超全局数组"

        if (!empty($postStr)){
            $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
            $fromUsername = $postObj->FromUserName;
            $toUsername = $postObj->ToUserName;
            $keyword = trim($postObj->Content);
            $time = time();
            $textTpl = "<xml>
                        <ToUserName><![CDATA[%s]]></ToUserName>
                        <FromUserName><![CDATA[%s]]></FromUserName>
                        <CreateTime>%s</CreateTime>
                        <MsgType><![CDATA[%s]]></MsgType>
                        <Content><![CDATA[%s]]></Content>
                        <FuncFlag>0</FuncFlag>
                        </xml>";
            if($keyword == "?" || $keyword == "？")	//keyword:关键词
            {
                $msgType = "text";			//消息类型
                $contentStr = date("Y-m-d H:i:s",time()); //内容字符串
                $resultStr = sprintf($textTpl, $fromUsername, $toUsername, $time, $msgType, $contentStr);
                echo $resultStr;
            }
        }else{
            echo "";
            exit;
        }
    }
}
?>
