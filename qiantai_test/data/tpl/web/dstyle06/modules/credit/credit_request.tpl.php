<?php defined('IN_IA') or exit('Access Denied');?><?php  include $this->template('common/header', TEMPLATE_INCLUDEPATH);?>
<ul class="nav nav-tabs">
	<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo create_url('site/module/reservation', array('name' => 'hotel', 'op' => 'display'));?>">管理</a></li>
</ul>
<?php  if($operation == 'display') { ?>
<div class="main">
	<div style="padding:15px;">
		<table class="table table-hover">
			<thead class="navbar-inner">
				<tr>
					<th style="width:100px;">姓名</th>
					<th style="width:100px;">手机</th>
					<th style="width:100px;">时间</th>
					<th style="width:100px;">剩余积分</th>
					<th style="min-width:150px;">奖品名称</th>
					<th style="width:50px;">价格</th>
					<th style="width:100px;">消耗积分</th>
					<th style="text-align:right; min-width:60px;">操作</th>
				</tr>
			</thead>
			<tbody>
				<?php  if(is_array($list)) { foreach($list as $item) { ?>
				<tr>
					<td><?php  echo $fans[$item['from_user']]['realname'];?></td>
					<td><?php  echo $fans[$item['from_user']]['mobile'];?></td>
					<td><?php  echo date('Y-m-d H:i:s', $item['createtime'])?></td>
					<td><?php  echo $fans[$item['from_user']]['credit1'];?></td>
					<td><?php  echo $item['title'];?></td>
					<td><?php  echo $item['price'];?></td>
					<td><?php  echo $item['credit_cost'];?></td>
					<td style="text-align:right;">
						<a href="<?php  echo create_url('site/module/award', array('name' => 'credit', 'id' => $item['id'], 'op' => 'delete'))?>" onclick="return confirm('此操作不可恢复，确认删除？');return false;" title="删除" class="btn btn-small"><i class="icon-remove"></i></a>
					</td>
				</tr>
				<?php  } } ?>
			</tbody>
			<!--tr>
				<td colspan="8">
					<input name="token" type="hidden" value="<?php  echo $_W['token'];?>" />
					<input type="submit" class="btn btn-primary" name="submit" value="提交" />
				</td>
			</tr-->
		</table>
	</div>
</div>
<?php  } ?>
<?php  include $this->template('common/footer', TEMPLATE_INCLUDEPATH);?>
