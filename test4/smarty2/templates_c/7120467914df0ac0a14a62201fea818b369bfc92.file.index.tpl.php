<?php /* Smarty version Smarty-3.1.17, created on 2016-03-25 15:30:22
         compiled from "/home/wwwroot/sfc/domain/sfc/web/test1/smarty2/templates/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:124919677356f095728e93c6-92497188%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7120467914df0ac0a14a62201fea818b369bfc92' => 
    array (
      0 => '/home/wwwroot/sfc/domain/sfc/web/test1/smarty2/templates/index.tpl',
      1 => 1458891006,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '124919677356f095728e93c6-92497188',
  'function' => 
  array (
    'demo' => 
    array (
      'parameter' => 
      array (
        'a' => 11,
        'b' => 22,
        'c' => 33,
      ),
      'compiled' => '',
    ),
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_56f0957292ba16_86375570',
  'variables' => 
  array (
    'users' => 0,
    'fpage' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_56f0957292ba16_86375570')) {function content_56f0957292ba16_86375570($_smarty_tpl) {?><meta http-equiv="content-type" content="text/html;charset=utf-8">
<table border=1>
	<caption>用户表<caption>

	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>PSWORD</th>



	</tr>
	<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']["u"])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']["u"]);
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['name'] = "u";
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['users']->value) ? count($_loop) : max(0, (int) $_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']["u"]['total']);
?>
		<tr>
			<td><?php echo $_smarty_tpl->tpl_vars['users']->value[$_smarty_tpl->getVariable('smarty')->value['section']['u']['index']]['id'];?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['users']->value[$_smarty_tpl->getVariable('smarty')->value['section']['u']['index']]['name'];?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['users']->value[$_smarty_tpl->getVariable('smarty')->value['section']['u']['index']]['password'];?>
</td>
		
		</tr>
	<?php endfor; else: ?>
		数组为空或不存在
	<?php endif; ?>

	<tr>
		<td colspan="3" align="right"><?php echo $_smarty_tpl->tpl_vars['fpage']->value;?>
</td>

	</tr>

</table>
<?php }} ?>
