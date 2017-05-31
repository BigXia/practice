<?php
	//从头开始的公用部分
	$html = file_get_contents("public.php");
	echo $html;
?>

	<iframe id="order_left" src="info/order/left.php"></iframe>

	<iframe id="order_right" src="info/order/right.php"></iframe>

	
<?php
	//尾部的公用部分
	echo "</body></html>"; 
?>
