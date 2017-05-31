<meta http-equiv="content-type" content="text/html;charset=utf-8">
<{$start=0}>
<{$end=15}>


<{for $var=$start to $end step 3 max=3}>
	 <{$var }><br>
<{forelse}>
	条件不成立，没有循环<br>
<{/for}>


<{$var=0}>
<{while $var lt 100}>
	<{$var++}><br>
<{/while}>
