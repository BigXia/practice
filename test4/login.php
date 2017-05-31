<?php
	if(isset($_POST['dosubmit'])){
		$pdo = new PDO("mysql:host=localhost;dbname=shunfengcan","root","12345");
		$stmt = $pdo-> prepare();
	}
?>


<meta http-equiv="Content-type:content" content="text/html;charset=utf-8" />
<h3>ÓÃ»§µÇÂ¼</h3>
<form action="login.php" method="post">
	username:<input type="text" name="username" value="" /><br />
	password:<input type="password" name="password" value="" /><br />
<input type="submit" name="dosubmit" value="µÇÂ¼"><br />

</form>

