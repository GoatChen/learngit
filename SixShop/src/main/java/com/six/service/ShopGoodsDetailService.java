package com.six.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.ShopAddress;
import com.six.pojo.ShopComment;
import com.six.pojo.ShopLike;

public interface ShopGoodsDetailService {

	//根据buy_id和comment_id更新ShopLike的isLike
	public Integer updateShopLikeByBuyIdAndCommentId(Integer isLike, Integer buy_id, Integer comment_id);

	//根据id更新ShopComment的likeNum（likeNum+1）
	public Integer updateShopCommentAddById(Integer id);

	//根据id更新ShopComment的likeNum（likeNum-1）
	public Integer updateShopCommentSubById(Integer id);

	//根据id查询ShopComment
	public ShopComment selectShopCommentById(Integer id);
	
	//插入一条ShopLike数据
	public Integer insertShopLike(Integer isLike, Integer buy_id, Integer comment_id, Integer createdBy, Date creationDate);

	//根据buy_id获取ShopAddress列表
	public List<ShopAddress> selectShopAddressByBuyId(Integer buy_id);

	//插入一条ShopOrder数据
	public Integer insertShopOrder(String code, String phone, String name, 
								   String address, Integer goodsNum, float totalPrice, 
								   Integer isSend, Integer isReceive, Integer afterSell,  
								   Integer goods_id, Integer buy_id, Integer sell_id, 
								   Integer createdBy, Date creationDate);

	//根据id查询ShopAddress
	public ShopAddress selectShopAddressById(Integer id);
}
