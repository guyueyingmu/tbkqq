<script>
$(function (){
    var aa = $(".goods-list li").innerWidth();
    $(".goods-list li img").css('height',aa*0.655);
})
</script>
 <volist name="items_list" id="item" key="i" mod="4"> 
		<li>        
		<a class="goods-a" href="{:U('brand/item',array('id'=>$item['id']))}" target="_self">            
		<img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}">
		
		</a>        
		<a isconvert="1" data-itemid="{$item.num_iid}" target="_self">			
		<h3>{$item.title}</h3>            
		<div class="list-price buy">                
		<span class="price-new">
		<i>￥</i>{$item.coupon_price}
		</span>
		<i class="del">￥{$item.price}</i>                
		<span class="good-btn">去抢购</span>            
		</div>        
		</a>    
		</li> 
		
</volist>