<html>
	<head>
		<style>
input[type=checkbox] {
	visibility: hidden;
}
.checkboxFour {
	width: 40px;
	height: 40px;
	background: #ddd;
	margin: 20px 90px;
 
	border-radius: 100%;
	position: relative;
	-webkit-box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
	-moz-box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
	box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
}
.checkboxFour label {
	display: block;
	width: 30px;
	height: 30px;
	border-radius: 100px;
 
	-webkit-transition: all .5s ease;
	-moz-transition: all .5s ease;
	-o-transition: all .5s ease;
	-ms-transition: all .5s ease;
	transition: all .5s ease;
	cursor: pointer;
	position: absolute;
	top: 5px;
	left: 5px;
	z-index: 1;
 
	background: #333;
 
	-webkit-box-shadow:inset 0px 1px 3px rgba(0,0,0,0.5);
	-moz-box-shadow:inset 0px 1px 3px rgba(0,0,0,0.5);
	box-shadow:inset 0px 1px 3px rgba(0,0,0,0.5);
}
.checkboxFour input[type=checkbox]:checked + label {
	background: #26ca28;
}

		</style>
	</head>
	<body>
<section>
  <!-- Checbox Four -->
  <h3>Checkbox Four</h3>
  	<div class="checkboxFour">
		<label for="checkboxFourInput">
  			<input type="checkbox" value="1" id="checkboxFourInput" name="" />a
	  	</label>
  	</div>
</section>
<section>
	<div class="checkboxFour">
                <input type="checkbox" value="1" id="checkboxFourInput" name="" />
                <label for="checkboxFourInput">hi</label>
        </div>
	</body>
</section>
</html>
