<?php /* Smarty version 2.6.18, created on 2016-03-31 11:27:31
         compiled from user/add.tpl */ ?>
<form action="<?php echo $this->_tpl_vars['url']; ?>
/insert" method="post" onsubmit="return confirm('请确认添加记录')">
	name:<input type='text' name='name' value='' /><br>
	password:<input type='password' name='password' value='' /><br>
	repassword:<input type='password' name='repassword' value='' /><br>
	<input type='text' size='6' name='code' onkeyup="if(this.value!=this.value.toUpperCase()) this.value=this.value.toUpperCase()" ><img onclick="this.src='<?php echo $this->_tpl_vars['url']; ?>
/code/'+Math.random() " src="<?php echo $this->_tpl_vars['url']; ?>
/code">
	<input type='submit' name='sub' value='添加用户' /><br>

</form>