<?php
	//从头开始的公用部分
	$html = file_get_contents("public.php");
	echo $html;
?>

<div id="my_header">
	<div id="my_img_pos">
		<div id="my_img"></div>
	</div>

	<div id="my_tip_pos">
		<div id="my_tip">您还没有登陆哦。</div>
	</div>

	<div id="my_login_pos">
		<div id="my_login">马上登陆</div>
	</div>
</div>

<div id="my_body">
	<div id="my_body_col"></div>

	<div class="my_opt">点餐单</div>

	<div class="my_body_space"></div>

	<div class="my_opt">送餐单</div>

	<div class="my_body_space"></div>

	<div class="my_opt">待评价</div>

	<div class="my_body_space"></div>

	<div class="my_opt">催&nbsp;&nbsp;&nbsp;&nbsp;单</div>
</div>





	
<?php
	//尾部的公用部分
	echo "</body></html>"; 
?>
