<?php /* Smarty version 2.6.18, created on 2016-04-03 10:16:12
         compiled from index/menu.tpl */ ?>
<html>
	<head>
		<title></title>
	</head>

	<body>
		<ul>
			<?php if ($_GET['pd'] == 'two'): ?>
				2<br>
				2<br>
				2<br>
				<?php echo $_GET['pd']; ?>

			<?php elseif ($_GET['pd'] == 'three'): ?>
				3<br>
				3<br>
				3<br>
				<?php echo $_GET['pd']; ?>

			<?php elseif ($_GET['pd'] == 'four'): ?>
				4<br>
				4<br>
				4<br>
				<?php echo $_GET['pd']; ?>

			<?php elseif ($_GET['pd'] == 'five'): ?>
				5<br>
				5<br>
				5<br>
				<?php echo $_GET['pd']; ?>

			<?php elseif ($_GET['pd'] == 'six'): ?>
				6<br>
				6<br>
				6<br>
				<?php echo $_GET['pd']; ?>

			<?php elseif ($_GET['pd'] == 'seven'): ?>
				7<br>
				7<br>
				7<br>
				<?php echo $_GET['pd']; ?>

			<?php else: ?>
				<li> <h3>分类管理</h3>
				     <ul>
					<li><a href="<?php echo $this->_tpl_vars['app']; ?>
/cat/add" target='right'>添加分类</a></li>
					<li><a href="<?php echo $this->_tpl_vars['app']; ?>
/cat/index" target='right'>编辑分类</a></li>
				     </ul>
				</li>

                                <li> <h3>商品管理</h3>
                                     <ul>
                                        <li><a href="<?php echo $this->_tpl_vars['app']; ?>
/goods/add" target='right'>添加商品</a></li>
                                        <li><a href="<?php echo $this->_tpl_vars['app']; ?>
/goods/index" target='right'>编辑商品</a></li>
                                     </ul>
                                </li>

                                <li> <h3>用户管理</h3>
                                     <ul>
                                        <li><a href="<?php echo $this->_tpl_vars['app']; ?>
/user/add" target='right'>添加用户</a></li>
                                        <li><a href="<?php echo $this->_tpl_vars['app']; ?>
/user/index" target='right'>编辑用户</a></li>
                                     </ul>
                                </li>
			<?php endif; ?>
		</ul>
	</body>
</html>
