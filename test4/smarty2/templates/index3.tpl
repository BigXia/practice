<meta http-equiv="content-type" content="text/html;charset=utf-8">
<{$var}><br>
<{$var|capitalize:true}><br>
<{$var|upper}><br>
<{$var|cat:"test test!<br>"|cat:"test<br>"}><br>

<{$smarty.now}><br>
<{$smarty.now|date_format:"%Y-%m-%d "}><br>

<{$var2|default:"数据库中没有数据！"}><br>
<{$var|regex_replace:"/\d/":"#"}><br>
<{$var|truncate:10:"..."}><br>
<{$var3|truncate:10:"..."}><br>

<{fontstyle($var)}><br>
<{fontstyle($var,5,"red")}><br>
<{$var|mystyle:7:""}><br>
<{$var|mystyle:7:"blue"}><br>
<{$var|h}><br>
