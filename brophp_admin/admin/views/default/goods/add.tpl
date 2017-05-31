

<html>
	<head></head>
	<body>
<h1>添加商品</h1>
<form action="<{$url}>/insert" method="post">
	商品名称： <input type="text" name="name" value="" /><br>
	商品价格：<input type="text" name="price" value="" /><br>
	商品数量: <input type="text" name="num" value="" /> <br>
	商品图片：<input type="file" name="uppic" value="" /><br>
	商品介绍：<textarea name="desn" cols="40" rows="8"></textarea> <br>

	<input type="submit" value="添加商品"><br> 
</form>
	</body>

</html>
