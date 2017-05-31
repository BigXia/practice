<meta http-equiv="content-type" content="text/html;charset=utf-8">

<{foreach $arr as $key=>$value}>

	<{$key}>=><{$value}><br>
	
<{foreachelse}>
	数组不存在或者数组为空

<{/foreach}>
