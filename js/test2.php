<html>
	<head>
		<meta http-equiv='content-type' content='text/html;charset=utf-8' /> 
	</head>

	<body>
		<script>
			document.write('<ul>');
			for(var i=0;i<20;i++){
				document.write('<li>');
				document.write('<input type="checkbox" name="ids[]" value="'+i+'" />aaaaaaaaaaa');
				document.write('</li>');
			}
				document.write('</ul>');
		</script>

		<a href="javascript:sall()">全选</a>
		<a href="javascript:fall()">反选</a>
		<a href="javascript:nall()">全不选</a>
		<a href="javascript:plan()">玩玩</a>

		<script>
			var cnames=document.getElementsByName('ids[]');
			alert(cnames[5].checked='true'); 

			function sall(){
				for(var i=0;i<cnames.length;i++){
					cnames[i].checked='true';	
				}
				
			}	
	
			function fall(){
				for(var i=0;i<cnames.length;i++){
					if(cnames[i].checked){
						cnames[i].checked='';
					}else{
						cnames[i].checked='true';	
					}

				}
			}
		
			function nall(){
				for(var i=0;i<cnames.length;i++){
					cnames[i].checked='';	
				}
			}
	
			function plan(){
				var count=1;
				for(var i=0;i<cnames.length;i++){
					if(i==count){
						cnames[i].checked='';
                                        }else{
					cnames[i].checked='true';
					}
					count++;
				}
			}
		</script>
	</body>
</html>
