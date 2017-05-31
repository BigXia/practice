<form action="<{$url}>/insert" method="post" onsubmit="return confirm('请确认添加记录')">
	name:<input type='text' name='name' value='' /><br>
	password:<input type='password' name='password' value='' /><br>
	repassword:<input type='password' name='repassword' value='' /><br>
	<input type='text' size='6' name='code' onkeyup="if(this.value!=this.value.toUpperCase()) this.value=this.value.toUpperCase()" ><img onclick="this.src='<{$url}>/code/'+Math.random() " src="<{$url}>/code">
	<input type='submit' name='sub' value='添加用户' /><br>

</form>
