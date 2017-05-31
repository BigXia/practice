<?php
	//判断是否是登录的，如果是登录的才可以通过$_COOKIE['isLongin'] = 1
//	if(!(isset($_COOKIE['isLogin']) && $_COOKIE['isLogin']==1)){
	if($i=1){
		//	header("Location:lo");
		echo "您还没有登陆，请先登陆!";
		echo '<script>setTimeout(\'location="login.php"\',3000)</script>';
	}
