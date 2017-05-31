<head>
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
</head>
<table border='1' align='center' width=800 >
	<tr>
		<th>id</th>
		<th>name</th>
		<th>password</th>
	</tr>


	<{section name='user' loop=$user}>
		<tr>
			<td><{$user[user].id}></td>
			<td><{$user[user].name}></td>
			<td><{$user[user].password}></td>
		</tr>
	<{/section}>

	<tr>
		<td align='right' colspan='3'><{$fpage}></td>

	</tr>
</table>
