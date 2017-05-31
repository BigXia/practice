<html>
	<head>
		<meta http-equiv = "content-type" charset = utf-8 />
		<script>
			var name = "刘恒";
			document.write("hi");
		</script>
	</head>
	<body>
		<img id = "tu" src = "./1.jpg" height=100 /><br />
		<select name="sel" onchange="test(this)">
			<option value="51.jpg">one</option>
			<option value="2.jpg">two</option>
			<option value="3.jpg">three</option>
			<option value="4.jpg">four</option>
		</select>
		
	</body>
</html>
<script>
	var tu = document.getElementById("tu");
	function test(obj){
	//	alert(obj.selectedIndex);
		var index = obj.selectedIndex;
		tu.src = obj.options[index].value;
	}
</script>
