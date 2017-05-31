<?php /* Smarty version 2.6.18, created on 2016-03-28 17:11:55
         compiled from user/mod.tpl */ ?>
<form action='<?php echo $this->_tpl_vars['url']; ?>
/update' method='post'>
	<input type='hidden' name='id' value='<?php echo $this->_tpl_vars['id']; ?>
'>
        name:<input type='text' name='name' value='<?php echo $this->_tpl_vars['name']; ?>
'><br>
        passwrod:<input type='text' name='password' value='<?php echo $this->_tpl_vars['password']; ?>
'><br>
        <input type='submit' value='修改用户'><br>
</form>