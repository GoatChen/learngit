package com.six.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.six.pojo.ShopAddress;
import com.six.pojo.ShopComment;
import com.six.pojo.ShopLike;

@Repository
public interface ShopGoodsDetailMapper {

	//根据buy_id和comment_id更新ShopLike的isLike
	public Integer updateShopLikeByBuyIdAndCommentId(@Param("isLike") Integer isLike, @Param("buy_id") Integer buy_id, @Param("comment_id") Integer comment_id);
	
	//根据id更新ShopComment的likeNum（likeNum+1）
	public Integer updateShopCommentAddById(@Param("id") Integer id);

	//根据id更新ShopComment的likeNum（likeNum-1）
	public Integer updateShopCommentSubById(@Param("id") Integer id);
	
	//根据id查询ShopComment
	public ShopComment selectShopCommentById(@Param("id") Integer id);

	//插入一条ShopLike数据
	public Integer insertShopLike(@Param("isLike") Integer isLike, @Param("buy_id") Integer buy_id, @Param("comment_id") Integer comment_id, @Param("createdBy") Integer createdBy, @Param("creationDate") Date creationDate);

	//根据buy_id获取ShopAddress列表
	public List<ShopAddress> selectShopAddressByBuyId(@Param("buy_id") Integer buy_id);
	
	//插入一条ShopOrder数据
	public Integer insertShopOrder(@Param("code") String code, @Param("phone") String phone, @Param("name") String name, 
								   @Param("address") String address, @Param("goodsNum") Integer goodsNum, @Param("totalPrice") float totalPrice, 
								   @Param("isSend") Integer isSend, @Param("isReceive") Integer isReceive, @Param("afterSell") Integer afterSell,  
								   @Param("goods_id") Integer goods_id, @Param("buy_id") Integer buy_id, @Param("sell_id") Integer sell_id, 
								   @Param("createdBy") Integer createdBy, @Param("creationDate") Date creationDate);
	
	//根据id查询ShopAddress
	public ShopAddress selectShopAddressById(@Param("id") Integer id);
	
}
