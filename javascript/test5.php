<html>
<head>
<script type="text/javascript">
function getValue()
  {
  var x=document.getElementById("myHeader")
  alert(x.name)
  }
</script>
</head>
<body>

<h1 id="myHeader" name="This is a test" onclick="getValue()">This is a header</h1>
<p>Click on the header to alert its value</p>

</body>
</html>
