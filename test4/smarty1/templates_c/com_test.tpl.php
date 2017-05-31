<html>
	<head>
		<title><?php echo $this->tpl_vars["title"]; ?></title>
	</head>
	<body>


	<table border="1" align="center" width="800">
		<?php foreach($this->tpl_vars["users"] as $this->tpl_vars["user"]) { ?>
			<tr>
				<?php foreach($this->tpl_vars["user"] as $this->tpl_vars["u"]) { ?>
					<?php if($this->tpl_vars["u"]=="1") { ?>
						<td bgcolor="green">
					<?php } elseif($this->tpl_vars["u"]=="2") { ?>
						<td bgcolor="red">
					<?php } else { ?>	
						<td>
					<?php } ?>
						<?php echo $this->tpl_vars["u"]; ?>
					</td>
				<?php } ?>
			</tr>
		<?php } ?>
	</table>


		<center>#####<?php echo $this->tpl_vars["author"]; ?>######</center>
	</body>
</html>

