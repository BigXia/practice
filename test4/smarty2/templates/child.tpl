
<{extends 'parent.tpl'}>

<{block name="one"}>

	这是一个标题

<{/block}>


<{block name="two"}>

	这是内容

<{/block}>

<{block name="three" append}>

	demo	

<{/block}>

<{block name="four" prepend}>

	world

<{/block}>

<{block name="five"}>

	this is <{$smarty.block.parent}>  hello;

<{/block}>

<{block name="six"}>

	你好

<{/block}>
