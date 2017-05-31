<?php /* Smarty version 2.6.18, created on 2016-03-30 22:08:39
         compiled from user/index.tpl */ ?>
<head>
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
</head>
<table border='1' align='center' width=800 >
	<tr>
		<th>id</th>
		<th>name</th>
		<th>password</th>
	</tr>


	<?php unset($this->_sections['user']);
$this->_sections['user']['name'] = 'user';
$this->_sections['user']['loop'] = is_array($_loop=$this->_tpl_vars['user']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['user']['show'] = true;
$this->_sections['user']['max'] = $this->_sections['user']['loop'];
$this->_sections['user']['step'] = 1;
$this->_sections['user']['start'] = $this->_sections['user']['step'] > 0 ? 0 : $this->_sections['user']['loop']-1;
if ($this->_sections['user']['show']) {
    $this->_sections['user']['total'] = $this->_sections['user']['loop'];
    if ($this->_sections['user']['total'] == 0)
        $this->_sections['user']['show'] = false;
} else
    $this->_sections['user']['total'] = 0;
if ($this->_sections['user']['show']):

            for ($this->_sections['user']['index'] = $this->_sections['user']['start'], $this->_sections['user']['iteration'] = 1;
                 $this->_sections['user']['iteration'] <= $this->_sections['user']['total'];
                 $this->_sections['user']['index'] += $this->_sections['user']['step'], $this->_sections['user']['iteration']++):
$this->_sections['user']['rownum'] = $this->_sections['user']['iteration'];
$this->_sections['user']['index_prev'] = $this->_sections['user']['index'] - $this->_sections['user']['step'];
$this->_sections['user']['index_next'] = $this->_sections['user']['index'] + $this->_sections['user']['step'];
$this->_sections['user']['first']      = ($this->_sections['user']['iteration'] == 1);
$this->_sections['user']['last']       = ($this->_sections['user']['iteration'] == $this->_sections['user']['total']);
?>
		<tr>
			<td><?php echo $this->_tpl_vars['user'][$this->_sections['user']['index']]['id']; ?>
</td>
			<td><?php echo $this->_tpl_vars['user'][$this->_sections['user']['index']]['name']; ?>
</td>
			<td><?php echo $this->_tpl_vars['user'][$this->_sections['user']['index']]['password']; ?>
</td>
		</tr>
	<?php endfor; endif; ?>

	<tr>
		<td align='right' colspan='3'><?php echo $this->_tpl_vars['fpage']; ?>
</td>

	</tr>
</table>