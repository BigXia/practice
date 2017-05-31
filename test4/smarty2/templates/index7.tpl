<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
	</head>
	<body>

		asdfjl<br>
		<{capture name="one"}>
		1111111111<br>		
		1111111111<br>		
		1111111111<br>		
		1111111111<br>		
		1111111111<br>
		<{/capture}>

		<{capture name="two"}>
		2222222222222<br>
		2222222222222<br>
		2222222222222<br>
		2222222222222<br>
		2222222222222<br>
		2222222222222<br>
		<{/capture}>

		--------------<br>
		
		<{$smarty.capture.two}>
		<{$smarty.capture.one}>
		<{$smarty.capture.two}>
	</body>
</html>
