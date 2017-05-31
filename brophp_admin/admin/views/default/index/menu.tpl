<html>
	<head>
		<title></title>
	</head>

	<body>
		<ul>
			<{if $smarty.get.pd eq 'two'}>
				2<br>
				2<br>
				2<br>
				<{$smarty.get.pd}>
			<{elseif $smarty.get.pd eq 'three'}>
				3<br>
				3<br>
				3<br>
				<{$smarty.get.pd}>
			<{elseif $smarty.get.pd eq 'four'}>
				4<br>
				4<br>
				4<br>
				<{$smarty.get.pd}>
			<{elseif $smarty.get.pd eq 'five'}>
				5<br>
				5<br>
				5<br>
				<{$smarty.get.pd}>
			<{elseif $smarty.get.pd eq 'six'}>
				6<br>
				6<br>
				6<br>
				<{$smarty.get.pd}>
			<{elseif $smarty.get.pd eq 'seven'}>
				7<br>
				7<br>
				7<br>
				<{$smarty.get.pd}>
			<{else}>
				<li> <h3>分类管理</h3>
				     <ul>
					<li><a href="<{$app}>/cat/add" target='right'>添加分类</a></li>
					<li><a href="<{$app}>/cat/index" target='right'>编辑分类</a></li>
				     </ul>
				</li>

                                <li> <h3>商品管理</h3>
                                     <ul>
                                        <li><a href="<{$app}>/goods/add" target='right'>添加商品</a></li>
                                        <li><a href="<{$app}>/goods/index" target='right'>编辑商品</a></li>
                                     </ul>
                                </li>

                                <li> <h3>用户管理</h3>
                                     <ul>
                                        <li><a href="<{$app}>/user/add" target='right'>添加用户</a></li>
                                        <li><a href="<{$app}>/user/index" target='right'>编辑用户</a></li>
                                     </ul>
                                </li>
			<{/if}>
		</ul>
	</body>
</html>

