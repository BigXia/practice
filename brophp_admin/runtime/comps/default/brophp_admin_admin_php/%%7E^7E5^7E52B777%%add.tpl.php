<?php /* Smarty version 2.6.18, created on 2016-04-03 10:45:28
         compiled from goods/add.tpl */ ?>


<html>
	<head></head>
	<body>
<h1>添加商品</h1>
<form action="<?php echo $this->_tpl_vars['url']; ?>
/insert" method="post">
	商品名称： <input type="text" name="name" value="" /><br>
	商品价格：<input type="text" name="price" value="" /><br>
	商品数量: <input type="text" name="num" value="" /> <br>
	商品图片：<input type="file" name="uppic" value="" /><br>
	商品介绍：<textarea name="desn" cols="40" rows="8"></textarea> <br>

	<input type="submit" value="添加商品"><br> 
</form>
	</body>

</html>