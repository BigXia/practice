<?php defined('IN_IA') or exit('Access Denied');?><div class="list-item img-rounded">
            <div>
                <a href="<?php  echo $this->createMobileUrl('detail', array('id' => $item['id']))?>"><img src="<?php  echo $_W['attachurl'];?><?php  echo $item['thumb'];?>"></a>
                <span class="title"><a href="<?php  echo $this->createMobileUrl('detail', array('id' => $item['id']))?>"><?php  echo $item['title'];?></a><?php  if($item['type'] == '2') { ?>(虚拟)<?php  } ?></span>

            </div>
            <span class="sold">
                <span class="soldnum pull-left">已售<?php  echo $item['sales'];?>件</span>
                <span class="price pull-right"><?php  echo $item['marketprice'];?>元</span>
            </span>
            <!--	<div class="add-cart" onclick="order.add(<?php  echo $item['id'];?>)"><i class="icon-shopping-cart"></i> 添加到购物车</div>-->
        </div>