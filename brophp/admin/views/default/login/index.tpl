<html>
	<head>
		<title>用户登录</title>
	</head>
	<body>
		<form action="<{$url}>/login" method='post'>
		<table border='1' width='300' align='center'>
			<caption><h1>用户登陆</h1></caption>
			
			<tr>
				<th>用户名称：</th><td><input type='text' size='20' name='username' /></td>

			</tr>	
                        
                        <tr>    
                                <th>用户密码：</th><td><input type='password' size='20' name='password' /></td>

                        </tr>
                        
                        <tr>    
                                <th align='center' colspan='2'><input type='submit' value='登 录'></th>

                        </tr>

		</table>
		</form>
	</body>
</html>
