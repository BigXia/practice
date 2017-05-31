<form action="<{$url}>/del" method="post" onsubmit="return confirm('确定删除？')">
<table border='1' width='800' align='center'>
	<{section name='one' loop=$users}>
                <tr>
			<td><input type='checkbox' name='id[]' value="<{$users[one].id}>"></td>
			<td><{$url}></td>
                        <td><{$users[one].id}></td>
                        <td><{$users[one].name}></td>
                        <td><{$users[one].password}></td>
			<td><a onclick="return confirm('确定要删除吗？')" href="<{$url}>/del/id/<{$users[one].id}>">删除</a></td>
                </tr>
        <{/section}>

</table>
        <center><input type='submit' value='删除'></center><br>
</form>
