<?php

$data=0.0131;
for($i=1;$i<100;$i++){
	$data*=1.1;
	if($data>0.1){
		echo $data.'<br>';
		echo $i;
		exit;
	}
	
}
