<html>
<body>
	<script type="text/javascript">

	function IsNull(){    
    	var str = document.getElementById('str').value.trim();    
    	if(str.length==0){    
        	alert('对不起，文本框不能为空或者为空格!');//请将“文本框”改成你需要验证的属性名称!    
    	}    
	</script>

	<input type="text" id="str" onclick="IsNull()"/>
	
</body> 
