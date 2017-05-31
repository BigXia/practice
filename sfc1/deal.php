<?php
	//从头开始的公用部分
	$html = file_get_contents("public.php");
	echo $html;
?>

<div id="deal_header">
	<div class="deal_header_col">点餐单</div>
	<div class="deal_header_col">送餐单</div>
</div>


	
<?php
	//尾部的公用部分
	echo "</body></html>"; 
?>
