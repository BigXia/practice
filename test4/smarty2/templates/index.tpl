<meta http-equiv="content-type" content="text/html;charset=utf-8">
<table border=1>
	<caption>用户表(<{nocache}><{$time}><{/nocache}>)<caption>

	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>PSWORD</th>



	</tr>
	<{section name="u" loop=$users}>
		<tr>
			<td><{$users[u].id}></td>
			<td><{$users[u].name}></td>
			<td><{$users[u].password}></td>
		
		</tr>
	<{sectionelse}>
		数组为空或不存在
	<{/section}>

	<tr>
		<td colspan="3" align="right"><{$fpage}></td>

	</tr>

</table>
