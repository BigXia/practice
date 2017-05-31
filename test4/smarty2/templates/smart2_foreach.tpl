<meta http-equiv="content-type" content="text/html;charset=utf-8">

<{$arr["os"]}></br>

<{foreach name="one" from=$arr item="value" key="k"}>

	<{$k}>=><{$value}><br>

<{foreachelse}>

	数组为空或者数组不存在
	
<{/foreach}>

