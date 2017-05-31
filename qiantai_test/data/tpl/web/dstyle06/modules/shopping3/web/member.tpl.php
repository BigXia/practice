<?php defined('IN_IA') or exit('Access Denied');?><?php  include $this->template('common/header', TEMPLATE_INCLUDEPATH);?>
<script language='javascript' src='./source/modules/izcmoney/template/style/jquery.gcjs.js'></script>
<script language='javascript' src='./source/modules/izcmoney/template/style/jquery.form.js'></script>
<script language='javascript' src='./source/modules/izcmoney/template/style/tooltipbox.js'></script>
<link href="./source/modules/izcmoney/template/style/common.css" rel="stylesheet"/>
<script type="text/javascript">
$(function(){
	$('div.make-switch').on('switch-change', function (e, data) {
		var id = $(this).attr('id');
		var sid = '#s'+id;
		var status = $(sid).val();
		$.post(location.href, {'id': id,'status':status,'op':'change'}, function(dat){
			location.reload();
		});
	});
});
</script>
<div class="main">
	<ul class="nav nav-tabs">
		<li class="active"><a href="javascript:;">会员管理</a></li>
	</ul>
	<div class="search">
		<form action="site.php" method="get">
		<input type="hidden" name="act" value="entry" />
		<input type="hidden" name="do" value="manage" />
		<input type="hidden" name="eid" value="<?php  echo $_GPC['eid'];?>" />
		<table class="table table-bordered tb">
			<tbody>
				<tr>
					<th>姓名</th>
					<td>
						<input class="span6" name="keywords" id="" type="text" value="<?php  echo $_GPC['keywords'];?>">
					</td>
				</tr>
				<tr>
					<th>手机号</th>
					<td>
						<input class="span6" name="keywords1" id="" type="text" value="<?php  echo $_GPC['keywords1'];?>">
					</td>
				</tr>
				<tr>
				 <tr class="search-submit">
					<td colspan="2"><button class="btn btn-primary pull-left span2" style='margin-left:95px;'><i class="icon-search icon-large"></i> 搜索</button></td>
				 </tr>
			</tbody>
		</table>
		</form>
	</div>
	<div style="padding:15px;">
		<table class="table table-hover">
			<thead class="navbar-inner">
				<tr>
					<th style="width:200px;">姓名</th>
					<th style="width:200px;">手机</th>
					<th style="">会员id</th>
					<th style="">性别</th>
					<th>创建时间</th>
					<th>登陆次数</th>
					<th style="min-width:60px;">状态</th>
				</tr>
			</thead>
			<tbody>
				<?php  if(is_array($list)) { foreach($list as $row) { ?>
				<tr>
					<td><?php  echo $row['username'];?> </td>
					<td><?php  echo $row['phone'];?> </td>
					<td><?php  echo $row['from_user'];?></td>
					<td><?php  if($row['sex']==0) { ?>女<?php  } else if($row['sex']==1) { ?>男<?php  } ?></td>
					<td><?php  echo $row['crteate_time'];?></td>
					<td><?php  echo $row['login_time'];?></td>
					<td>
						<div class="make-switch" data-on-label="正常" data-off-label="黑名单" id='<?php  echo $row['id'];?>'>
							<input type="checkbox" value="<?php  echo $row['status'];?>" <?php  if($row['status']==1) { ?>checked="checked"<?php  } ?> id = 's<?php  echo $row['id'];?>' />
						</div>
					</td>
				</tr>
				<?php  } } ?>
					<tr>
 				<td colspan="7">

</td>
			</tr>
			</tbody>
		</table>
		<?php  echo $pager;?>
	</div>

</div>

<?php  include $this->template('common/footer', TEMPLATE_INCLUDEPATH);?>