<html>
	<head>
		<style>
input[type=checkbox] {
	visibility: hidden;
}

.checkboxTwo {
	width: 120px;
	height: 40px;
	background: #333;
	margin: 20px 60px;
 
	border-radius: 50px;
	position: relative;
}
.checkboxTwo:before {
	content: '';
	position: absolute;
	top: 19px;
	left: 14px;
	height: 2px;
	width: 90px;
	background: #111;
}
.checkboxTwo label {
	display: block;
	width: 22px;
	height: 22px;
	border-radius: 50%;
 
	-webkit-transition: all .5s ease;
	-moz-transition: all .5s ease;
	-o-transition: all .5s ease;
	-ms-transition: all .5s ease;
	transition: all .5s ease;
	cursor: pointer;
	position: absolute;
	top: 9px;
	z-index: 1;
	left: 12px;
	background: #ddd;
}
.checkboxTwo input[type=checkbox]:checked + label {
	left: 84px;
	background: #26ca28;
}			
		</style>
	</head>
	<body>
		<section>
  <!-- Checbox Two -->
  <h3>Checkbox Two</h3>
  	<div class="checkboxTwo">
  		<input type="checkbox" value="1" id="checkboxTwoInput" name="" />
	  	<label for="checkboxTwoInput"></label>
  	</div>
</section>
	</body>
</html>
