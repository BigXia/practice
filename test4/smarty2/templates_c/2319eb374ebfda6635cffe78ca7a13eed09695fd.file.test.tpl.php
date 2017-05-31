<?php /* Smarty version Smarty-3.1.17, created on 2016-03-20 18:33:00
         compiled from "./templates/test.tpl" */ ?>
<?php /*%%SmartyHeaderCode:25084757656ee594722ec64-99474986%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2319eb374ebfda6635cffe78ca7a13eed09695fd' => 
    array (
      0 => './templates/test.tpl',
      1 => 1458469977,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '25084757656ee594722ec64-99474986',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_56ee59472723f4_00156460',
  'variables' => 
  array (
    'title' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_56ee59472723f4_00156460')) {function content_56ee59472723f4_00156460($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("public/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<html>
	<head>
		<title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
	</head>

	<body>
		<?php echo $_smarty_tpl->tpl_vars['content']->value;?>
 <br>
		<?php echo $_smarty_tpl->tpl_vars['content']->value;?>
 <br>
		<?php echo $_smarty_tpl->tpl_vars['content']->value;?>
 <br>
		<?php echo $_smarty_tpl->tpl_vars['content']->value;?>
 <br>
		<?php echo $_smarty_tpl->tpl_vars['content']->value;?>
 <br>
		<?php echo $_smarty_tpl->tpl_vars['content']->value;?>
 <br>

		<img src = "./test.jpg" width=300></img>
	</body>
</html>

<?php echo $_smarty_tpl->getSubTemplate ("public/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
