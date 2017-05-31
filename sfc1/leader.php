<?php
	//从头开始的公用部分
	$html = file_get_contents("public.php");
	echo $html;
?>

<div id="leader_logo">logo图像</div>
<div id="leader_notice">公告</div>
<div id="leader_comment">留言评论</div>

<?php
	//尾部的公用部分
	echo "</body></html>"; 
?>
