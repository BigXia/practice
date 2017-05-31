<?php /* Smarty version 2.6.18, created on 2016-03-31 17:21:07
         compiled from index/index.tpl */ ?>
<html>
	<head>
		<title>管理平台</title>
	</head>

	<frameset rows='100,*' >
		<frame src="<?php echo $this->_tpl_vars['url']; ?>
/top" name='top' scrolling='no' />

		<frameset cols='150,*'>
			<frame src="<?php echo $this->_tpl_vars['url']; ?>
/menu" name='left'/>
			<frame src="<?php echo $this->_tpl_vars['url']; ?>
/main" name='right' />
		</frameset>
	</frameset>
</html>