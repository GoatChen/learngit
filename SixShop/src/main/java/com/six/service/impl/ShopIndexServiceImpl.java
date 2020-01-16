package com.six.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.ShopIndexMapper;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopComment;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopLike;
import com.six.pojo.ShopSellUser;
import com.six.service.ShopIndexService;

@Service
public class ShopIndexServiceImpl implements ShopIndexService {
	
	@Autowired
	private ShopIndexMapper shopIndexMapper;

	//根据category_id查询shopGoodsCategory
	@Override
	public List<ShopGoodsCategory> selectShopGoodsCategoryByCategoryId(Integer category_id) {
		List<ShopGoodsCategory> shopGoodsCategory2List = shopIndexMapper.selectShopGoodsCategoryByCategoryId(category_id);
		if(shopGoodsCategory2List != null) {
			return shopGoodsCategory2List;
		}
		else {
			return null;
		}
	}

	//根据name、category1_id、category1_id、category1_id、currentPageNo、pageSize分页模糊查询shopGoods
	@Override
	public List<ShopGoods> selectShopGoods(String name, Integer category1_id, Integer category2_id, Integer category3_id,
			String orderName, String highOrLow, Integer currentPageNo, Integer pageSize) {
		List<ShopGoods> shopGoodsList = shopIndexMapper.selectShopGoods(name, category1_id, category2_id, category3_id, orderName, highOrLow, currentPageNo, pageSize);
		if(shopGoodsList != null) {
			return shopGoodsList;
		}
		else {
			return null;
		}
	}

	//得到查询到的所有商品数
	@Override
	public List<ShopGoods> getShopGoodsCount(String name, Integer category1_id, Integer category2_id, Integer category3_id) {
		List<ShopGoods> shopGoodsList = shopIndexMapper.getShopGoodsCount(name, category1_id, category2_id, category3_id);
		if(shopGoodsList != null) {
			return shopGoodsList;
		}
		else {
			return null;
		}
	}

	//根据id查询商品
	@Override
	public ShopGoods selectGoodsById(Integer id) {
		ShopGoods shopGoods = shopIndexMapper.selectGoodsById(id);
		if(shopGoods != null) {
			return shopGoods;
		}
		else {
			return null;
		}
	}

	//根据id查询卖家
	@Override
	public ShopSellUser selectSellById(Integer id) {
		ShopSellUser shopSellUser = shopIndexMapper.selectSellById(id);
		if(shopSellUser != null) {
			return shopSellUser;
		}
		else {
			return null;
		}
	}

	//根据id查询商品类型
	@Override
	public ShopGoodsCategory selectShopGoodsCategoryById(Integer id) {
		ShopGoodsCategory shopGoodsCategory = shopIndexMapper.selectShopGoodsCategoryById(id);
		if(shopGoodsCategory != null) {
			return shopGoodsCategory;
		}
		else {
			return null;
		}
	}
	

	//根据goods_id查询shopComment
	@Override
	public List<ShopComment> selectShopCommentById(Integer goods_id) {
		List<ShopComment> shopCommentsList = shopIndexMapper.selectShopCommentById(goods_id);
		if(shopCommentsList != null) {
			return shopCommentsList;
		}
		else {
			return null;
		}
	}

	//根据ShopComment中的buy_id查询shopBuyUser
	@Override
	public ShopBuyUser selectShopBuyUserByBuyId(Integer buy_id) {
		ShopBuyUser shopBuyUser = shopIndexMapper.selectShopBuyUserByBuyId(buy_id);
		if(shopBuyUser != null) {
			return shopBuyUser;
		}
		else {
			return null;
		}
	}

	//根据buy_id和comment_id查询Like
	@Override
	public ShopLike selectShopLikeByBuyIdAndCommentId(Integer buy_id, Integer comment_id) {
		ShopLike shopLike = shopIndexMapper.selectShopLikeByBuyIdAndCommentId(buy_id, comment_id);
		if(shopLike != null) {
			return shopLike;
		}
		else {
			return null;
		}
	}

}
