
<?php
	//"头"代码
	$html = file_get_contents("public.php");
	echo $html;

	//"中间"代码
	$html = file_get_contents("info/left.php");
	echo $html;

	//"尾"代码
	echo "</body></html>";
