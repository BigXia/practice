<?php /* Smarty version 2.6.18, created on 2016-03-30 12:40:17
         compiled from user/index.tpl */ ?>
<form action="<?php echo $this->_tpl_vars['url']; ?>
/del" method="post" onsubmit="return confirm('确定删除？')">
<table border='1' width='800' align='center'>
	<?php unset($this->_sections['one']);
$this->_sections['one']['name'] = 'one';
$this->_sections['one']['loop'] = is_array($_loop=$this->_tpl_vars['users']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['one']['show'] = true;
$this->_sections['one']['max'] = $this->_sections['one']['loop'];
$this->_sections['one']['step'] = 1;
$this->_sections['one']['start'] = $this->_sections['one']['step'] > 0 ? 0 : $this->_sections['one']['loop']-1;
if ($this->_sections['one']['show']) {
    $this->_sections['one']['total'] = $this->_sections['one']['loop'];
    if ($this->_sections['one']['total'] == 0)
        $this->_sections['one']['show'] = false;
} else
    $this->_sections['one']['total'] = 0;
if ($this->_sections['one']['show']):

            for ($this->_sections['one']['index'] = $this->_sections['one']['start'], $this->_sections['one']['iteration'] = 1;
                 $this->_sections['one']['iteration'] <= $this->_sections['one']['total'];
                 $this->_sections['one']['index'] += $this->_sections['one']['step'], $this->_sections['one']['iteration']++):
$this->_sections['one']['rownum'] = $this->_sections['one']['iteration'];
$this->_sections['one']['index_prev'] = $this->_sections['one']['index'] - $this->_sections['one']['step'];
$this->_sections['one']['index_next'] = $this->_sections['one']['index'] + $this->_sections['one']['step'];
$this->_sections['one']['first']      = ($this->_sections['one']['iteration'] == 1);
$this->_sections['one']['last']       = ($this->_sections['one']['iteration'] == $this->_sections['one']['total']);
?>
                <tr>
			<td><input type='checkbox' name='id[]' value="<?php echo $this->_tpl_vars['users'][$this->_sections['one']['index']]['id']; ?>
"></td>
			<td><?php echo $this->_tpl_vars['url']; ?>
</td>
                        <td><?php echo $this->_tpl_vars['users'][$this->_sections['one']['index']]['id']; ?>
</td>
                        <td><?php echo $this->_tpl_vars['users'][$this->_sections['one']['index']]['name']; ?>
</td>
                        <td><?php echo $this->_tpl_vars['users'][$this->_sections['one']['index']]['password']; ?>
</td>
			<td><a onclick="return confirm('确定要删除吗？')" href="<?php echo $this->_tpl_vars['url']; ?>
/del/id/<?php echo $this->_tpl_vars['users'][$this->_sections['one']['index']]['id']; ?>
">删除</a></td>
                </tr>
        <?php endfor; endif; ?>

</table>
        <center><input type='submit' value='删除'></center><br>
</form>