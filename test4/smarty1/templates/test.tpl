<{include 'header.tpl'}>

	<table border="1" align="center" width="800">
		<{loop $users $user}>
			<tr>
				<{loop $user $u  }>
					<{if $u=="1"}>
						<td bgcolor="green">
					<{elseif $u=="2"}>
						<td bgcolor="red">
					<{else}>	
						<td>
					<{/if}>
						<{$u}>
					</td>
				<{/loop}>
			</tr>
		<{/loop}>
	</table>


<{include 'footer.tpl'}>
