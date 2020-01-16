package com.six.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopComment;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopLike;
import com.six.pojo.ShopSellUser;

public interface ShopIndexService {
	//根据category_id查询shopGoodsCategory
	public List<ShopGoodsCategory> selectShopGoodsCategoryByCategoryId(Integer category_id);
	
	//根据name、category1_id、category1_id、category1_id、currentPageNo、pageSize分页模糊查询shopGoods
	public List<ShopGoods> selectShopGoods(String name, Integer category1_id, Integer category2_id, Integer category3_id, 
										   String orderName, String highOrLow, 
										   Integer currentPageNo, Integer pageSize);
	
	//得到查询到的所有商品数
	public List<ShopGoods>  getShopGoodsCount(String name, 
								 			  Integer category1_id, 
								 			  Integer category2_id, 
								 			  Integer category3_id);

	//根据id查询商品
	public ShopGoods selectGoodsById(Integer id);
	
	//根据id查询卖家
	public ShopSellUser selectSellById(Integer id);

	//根据id查询商品类型
	public ShopGoodsCategory selectShopGoodsCategoryById(Integer id);

	//根据goods_id查询shopComment
	public List<ShopComment> selectShopCommentById(Integer goods_id);

	//根据ShopComment中的buy_id查询shopBuyUser
	public ShopBuyUser selectShopBuyUserByBuyId(Integer buy_id);

	//根据buy_id和comment_id查询Like
	public ShopLike selectShopLikeByBuyIdAndCommentId(Integer buy_id, Integer comment_id);
	
}
