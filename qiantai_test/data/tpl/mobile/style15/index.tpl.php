<?php defined('IN_IA') or exit('Access Denied');?><?php  include template('header', TEMPLATE_INCLUDEPATH);?>
<?php  include template('slide', TEMPLATE_INCLUDEPATH);?>
<style>
body{
font:<?php  echo $_W['styles']['fontsize'];?> <?php  echo $_W['styles']['fontfamily'];?>;
color:<?php  echo $_W['styles']['fontcolor'];?>;
padding:0;
margin:0;
background-image:url('<?php  if(empty($_W['styles']['indexbgimg'])) { ?>./themes/mobile/style15/images/bg_index.jpg<?php  } else { ?><?php  echo $_W['styles']['indexbgimg'];?><?php  } ?>');
background-size:cover;
background-color:<?php  if(empty($_W['styles']['indexbgcolor'])) { ?>#F9F9F9<?php  } else { ?><?php  echo $_W['styles']['indexbgcolor'];?><?php  } ?>;
<?php  echo $_W['styles']['indexbgextra'];?>
}
a{color:<?php  echo $_W['styles']['linkcolor'];?>; text-decoration:none;}
<?php  echo $_W['styles']['css'];?>
.box{width:100%; overflow:hidden; position:absolute; bottom:0; height:85px; background:rgba(0, 0, 0, 0.4); border-top:1px rgba(0, 0, 0, 0.1) solid;}
.box .box-item{float:left;text-align:center;display:block;text-decoration:none;outline:none;width:<?php  echo (100/4).'%';?>;height:75px;position:relative; color:#FFF;padding:5px 0;}
.box .box-item i{display:inline-block;width:50px;height:50px;line-height:50px;font-size:30px;color:#000; overflow: hidden; background:rgba(255, 255, 255, 0.8); border:1px #FFF solid;}
.box .box-item span{color:<?php  echo $_W['styles']['fontnavcolor'];?>;display:block;font-size:14px; position:absolute; bottom:5px; width:100%;}
.box .slide-nav{width:100%; height:85px; overflow:hidden; float:left; position:relative;}
#footer{color:#FFF;}
/*ÖØ¶¨Òå*/
.main{overflow:hidden;}
.box_swipe > ol{background-color:transparent; padding-right:0; text-align:center; margin-top:0; position:absolute; top:0; right:10px;}
</style>
<div class="box" id="box">
		<ul>
		<?php  $num = 0;?>
		<?php  if(is_array($navs)) { foreach($navs as $nav) { ?>
		<?php  if($num%4 == 0 && $num != 0) { ?></li><?php  } ?>
		<?php  if($num%4 == 0 || $num == 0) { ?><li class="slide-nav"><?php  } ?>
		<a href="<?php  echo $nav['url'];?>" class="box-item">
			<?php  if(!empty($nav['icon'])) { ?>
			<i style="background:url(<?php  echo $_W['attachurl'];?><?php  echo $nav['icon'];?>) no-repeat;background-size:cover;" class="img-circle"></i>
			<?php  } else { ?>
			<i class="<?php  echo $nav['css']['icon']['icon'];?> img-circle" style="<?php  echo $nav['css']['icon']['style'];?>"></i>
			<?php  } ?>
			<span style="<?php  echo $nav['css']['name'];?>"><?php  echo $nav['name'];?></span>
		</a>
		<?php  $num++;?>
		<?php  } } ?>
		</ul>
</div>
<script>
$(function() {
	new Swipe($('#box')[0], {
		speed:500,
		auto:5000
	});

	$(".main").height($(window).height());
});
</script>
<?php  $footer_off = 1;?>
<?php  include template('footer', TEMPLATE_INCLUDEPATH);?>