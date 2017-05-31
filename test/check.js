function check_mobile(tel){
	var tel=mobile.replace(/^\s*|\s*$/g,'');
	var length=tel.length;
	if (length==0)
	{
		alert('手机号码不能为空...');
		$('#Submit').attr('disabled','disabled');
		return;
	}
	$a=preg_match('/^((1[3|4|5|8])[0-9]{9})$/',tel);
	if ($a)
	{
		$('#Submit').attr('disabled','');
		return;
	}
	else{
		alert('手机号码格式不正确请重新输入...');
		$('#Submit').attr('disabled','dosabled');
		return;
	}

}

function check_password(password){
	var password=password.replace(/^\s*|\s*$/g,'');
	var length=password.length;
	if (length==0)
	{
		alert('密码不能为空...')
		$('#Submit').attr('disabled','disabled');
		return;
	}
}

function check_conform_password(p2){
	var p1=$('#password').val();
	var p2=$('#conform_password').val();
	if (p2!=p1)
	{
		alert('两次输入密码不一致...');
		$('#Submit').attr('disabled','disabled');
		return;
	}
	else{
		$('#Submit').attr('disabled','');
		return;
	}
}
