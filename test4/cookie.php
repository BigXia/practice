<?php
	//�ж��Ƿ��ǵ�¼�ģ�����ǵ�¼�Ĳſ���ͨ��$_COOKIE['isLongin'] = 1
//	if(!(isset($_COOKIE['isLogin']) && $_COOKIE['isLogin']==1)){
	if($i=1){
		//	header("Location:lo");
		echo "����û�е�½�����ȵ�½!";
		echo '<script>setTimeout(\'location="login.php"\',3000)</script>';
	}
