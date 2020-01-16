package com.six.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopComment;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopLike;
import com.six.pojo.ShopSellUser;

@Repository
public interface ShopIndexMapper {
	
	//根据category_id查询shopGoodsCategory
	public List<ShopGoodsCategory> selectShopGoodsCategoryByCategoryId(@Param("category_id") Integer category_id);
	

	//根据name、category1_id、category1_id、category1_id、currentPageNo、pageSize分页模糊查询shopGoods
	public List<ShopGoods> selectShopGoods(@Param("name") String name, 
										  @Param("category1_id") Integer category1_id, 
										  @Param("category2_id") Integer category2_id, 
										  @Param("category3_id") Integer category3_id, 
										  @Param("orderName") String orderName, 
										  @Param("highOrLow") String highOrLow, 
										  @Param("currentPageNo") Integer currentPageNo,  
										  @Param("pageSize") Integer pageSize);
	
	//得到查询到的所有商品数
	public List<ShopGoods> getShopGoodsCount(@Param("name") String name, 
								 			 @Param("category1_id") Integer category1_id, 
								 			 @Param("category2_id") Integer category2_id, 
								 			 @Param("category3_id") Integer category3_id);
	
	//根据id查询商品
	public ShopGoods selectGoodsById(@Param("id") Integer id);
	
	//根据id查询卖家
	public ShopSellUser selectSellById(@Param("id") Integer id);
	
	//根据id查询商品类型
	public ShopGoodsCategory selectShopGoodsCategoryById(@Param("id") Integer id);

	//根据goods_id查询shopComment
	public List<ShopComment> selectShopCommentById(@Param("goods_id") Integer goods_id);
	
	//根据ShopComment中的buy_id查询shopBuyUser
	public ShopBuyUser selectShopBuyUserByBuyId(@Param("goods_id") Integer buy_id);
	
	//根据buy_id和comment_id查询Like
	public ShopLike selectShopLikeByBuyIdAndCommentId(@Param("buy_id") Integer buy_id, @Param("comment_id") Integer comment_id);
}
