<html>
	<head>
		<meta http-equiv="refresh" content="30" />
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<script>
			function limit_Count(max_Count){
				var demo=document.getElementsByTagName("input");
				function check(){
					var checked_Count=0;
					for(var i=0;i<demo.length;i++){
						if(demo[i].checked)
						{
							checked_Count++;
						}
						if(checked_Count>max_Count){
							return false;
						}
					}
					return true;
				}
				for(var i=0;i<demo.length;i++){
					demo[i].onclick=function(){
						if(!check()){
							alert("最多选择"+max_Count+"个");
							this.checked=false;
						}	
					}
				}
			}
		</script>
	</head>
	<body>
		<form action="./test15.php" method="post">
			<div>
				<label><input type="checkbox" name="a" value="aa" onclick="limit_Count(3)"/>a</label></br>
				<label><input type="checkbox" name="a" value="bb" onclick="limit_Count(3)"/>b</label></br>
				<label><input type="checkbox" name="a" value="cc" onclick="limit_Count(3)"/>c</label></br>
				<label><input type="checkbox" name="a" value="dd" onclick="limit_Count(3)"/>d</label></br>
				<label><input type="checkbox" name="a" value="ee" onclick="limit_Count(3)"/>e</label></br>
				<label><input type="checkbox" name="a" value="ff" onclick="limit_Count(3)"/>f</label></br>
				<label><input type="checkbox" name="a" value="gg" onclick="limit_Count(3)"/>g</label></br>
				<input type="submit" />
			</div>
		</form>
	</body>
</html>
