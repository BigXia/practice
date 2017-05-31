<{$var}><br>
<{assign var="one" value="hello world"}><br>

<{$one}><br>
<{$one}><br>
<{$one}><br>

<{$three="aaaaaaaa"}>

<{$three}><br>

<{$four[]=1}>
<{$four[]=2}>

<{$four[0]}><br>
<{$four[1]}><br>

<{$five.aa.bb=10}>
<{$five.aa.bb}><br>

<{append var="four" value="555555555" index="cc"}>

<{$four.cc}>
