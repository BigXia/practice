<html>
	<head>
		<title><{block name="one"}>this is a title<{/block}></title>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
	</head>
	<body>
		<{block name="two"}>this is a content......<{/block}>

		<br>

		<{block name="three"}> test <{/block}><br>
		<{block name="four"}> hello <{/block}><br>
		<{block name="five"}> demo <{/block}><br>
		<{block name="six"}> abc <{$smarty.block.child}> xyz <{/block}><br>
	</body>
</html>
