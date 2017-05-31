<?php
	$a[]=array('a','b','c');
	$a[]=array('d','e','f');
	$b = $a;
	print_r($b[0][2]);
	echo '<br />';
	print_r(array_values($b));
	echo '<br />'.count(array_values($b)).'<br />';
	print_r(array_keys($b));
	echo '<br />'.count(array_keys($b)).'<br />';
	$i=0;
	for($i=0;$i<2;$i++){
		list($aa,$bb) = $b[$i];
		echo $aa.'<br />';
		echo $bb.'<br />';
		echo $c.'<br />';
	}
?>
