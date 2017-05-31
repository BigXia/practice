<html>
	<head>
		<meta http-equiv='content-type' content='text/html;charset=utf-8' />
	<script>
		#alink {
			width:400px;
		}
	</script>
	</head>

	<body>
		<div>This is a test about js!</div>

		<div id='one'>
		</div>

		<div name='two'>

		</div>

		<a id='alink' href='http://www.baidu.com' target='_blank' title='this is a test'>test</a>

		<script>
			var aobj=document.getElementById("alink");
			aobj.href='http://www.koedou.com';
			aobj.innerHTML='<b>brother</b>';

			aobj.style.backgroundColor='red';
			aobj.style.fontSize='3cm';

			alert(aobj.style.width);
		</script>
	</body>
</html>
