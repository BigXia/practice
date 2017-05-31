<?php defined('IN_IA') or exit('Access Denied');?><?php  include $this->template('common/header', TEMPLATE_INCLUDEPATH);?>
<ul class="nav nav-tabs">
	<li><a href="<?php  echo create_url('site/module', array('do' => 'manage', 'name' => 'timeaxis'));?>">活动管理</a></li>
	<li class="active"><a href="<?php  echo create_url('site/module', array('do' => 'list', 'name' => 'timeaxis'));?>">活动列表</a></li>
</ul>
<div class="main">
	<div class="search">
		<table class="table table-bordered tb">
			<div class="sub-item" id="table-list">
				<form action="" method="post" onsubmit="">
					<div class="sub-content">
						<table class="table table-hover2">
							<thead class="navbar-inner">
								<tr>
									<th style="width:40px;" class="row-first"></th>
									<th style="width:200px;">活动名称</th>
									<th class="width:200px;">活动地址</th>
									<th style="width:150px;">创建时间</th>
									<th style="width:110px;">操作</th>
								</tr>
							</thead>
							<tbody>
								<?php  if(is_array($timelist)) { foreach($timelist as $row) { ?>
								<tr>
									<td class="row-first"><input type="checkbox" name="select[]" value="<?php  echo $row['id'];?>" /></td>
									<td>
										<div class="mainContent">
											<div class="nickname" style="text-align:left;"><?php  echo $row['id'];?>、<?php  echo substr($row['title'],0,69);?></div>
										</div>
									</td>
									<td style="text-align:left;"><?php  echo create_url('mobile/module', array('name'=>'timeaxis','do'=>'index','weid' => $_W['weid'], 'tid' => $row['id']));?></td>
									<td style="text-align:left;"><?php  echo date('Y-m-d <br /> h:i:s', $row['time']);?></td>
									<td style="text-align: left;">
										<a href="<?php  echo create_url('site/module', array('do' => 'manage', 'name' => 'timeaxis', 'id' => $row['id']))?>">修改</a>
										<a href="<?php  echo create_url('site/module', array('do' => 'deltime', 'name' => 'timeaxis', 'id' => $row['id']))?>">删除</a>
									</td>
								</tr>
								<?php  } } ?>
							</tbody>
						</table>
						<table class="table">
							<tr>
								<td style="width:40px;" class="row-first"><input type="checkbox" onclick="selectall(this, 'select');" /></td>
								<td colspan="4">
									<a class="btn btn-primary" href="site.php?act=module&name=timeaxis&do=manage&weid=<?php  echo $_W['weid'];?>">创建活动</a>
									<?php  if($timelist != '') { ?>
									<input type="submit" name="delete" value="删除选中" class="btn btn-primary" />
									<?php  } ?>
									<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
								</td>
							</tr>
						</table>
					</div>
					</form>
					<?php  echo $pager;?>
				</div>
		</table>
	</div>
</div>
<?php  include $this->template('common/footer', TEMPLATE_INCLUDEPATH);?>		