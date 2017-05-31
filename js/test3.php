<html>
	<head>
		<meta http-equiv='content-type' content='text/html;charset=utf-8' /> 
	</head>

	<body>
		<input type='text' name='username' value='zhangsan'>

		<script>
			var names=document.getElementsByName('username')[0];

			alert(names[0].length);
		</script>
	</body>
</html>
