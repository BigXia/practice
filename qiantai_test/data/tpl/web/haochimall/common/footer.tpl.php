<?php defined('IN_IA') or exit('Access Denied');?>	<div id="footer">
		<span class="pull-left">
			<p><?php  if(empty($_W['setting']['copyright']['footerleft'])) { ?>Powered by <a href="http://www.songkc.cn"><b>送快餐</b></a> v<?php echo IMS_VERSION;?> &copy; 2014 <a href="http://www.songkc.cn">www.songkc.cn</a><?php  } else { ?><?php  echo $_W['setting']['copyright']['footerleft'];?><?php  } ?></p>
		</span>
		<span class="pull-right">
			<p><?php  if(empty($_W['setting']['copyright']['footerright'])) { ?><a href="http://www.hfyefan.com">关于叶凡</a>&nbsp;&nbsp;<a href="http://www.songkc.cn">送快餐首页</a><?php  } else { ?><?php  echo $_W['setting']['copyright']['footerright'];?><?php  } ?>&nbsp;&nbsp;<?php  echo $_W['setting']['copyright']['statcode'];?></p>
		</span>
	</div>
	<div class="emotions" style="display:none;"></div>
</body>
</html>