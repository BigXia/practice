<html>
	<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<style>
			.hidden-input {
    opacity: 0;
    position: absolute;
    z-index: -1;
}

input[type=checkbox]+span {
    /* your style goes here */
    display: inline-block;
    height: 1em;
    width: 1em;
    border-radius: 4px;
    background-color: gray;        
}

/* active style goes here */
input[type=checkbox]:checked+span {
    background-color: red;
}

		</style>
	</head>
	<body>
		<form action="test15.php" method="post">
			<label>
    <input type="checkbox" class="hidden-input" name="a"/>
    <span></span>
    记住我
</label>

	<label>
    <input type="checkbox" class="hidden-input" name="b"/>
    <span class="your style about checkbox"></span>
    记住我
</label>

	<label>
    <input type="checkbox" class="hidden-input" name="c"/>
    <span class="your style about checkbox"></span>
    记住我
			</label>
	<input type="submit">
		</form>

	</body>
</html>
