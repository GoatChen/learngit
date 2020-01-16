package com.six.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.ShopGoodsDetailMapper;
import com.six.pojo.ShopAddress;
import com.six.pojo.ShopComment;
import com.six.service.ShopGoodsDetailService;

@Service
public class ShopGoodsDetailServiceImpl implements ShopGoodsDetailService {
	
	@Autowired
	private ShopGoodsDetailMapper shopGoodsDetailMapper;

	//根据buy_id和comment_id更新ShopLike的isLike
	@Override
	public Integer updateShopLikeByBuyIdAndCommentId(Integer isLike, Integer buy_id, Integer comment_id) {
		Integer flag = 0;
		flag = shopGoodsDetailMapper.updateShopLikeByBuyIdAndCommentId(isLike, buy_id, comment_id);
		return flag;
	}

	//根据id更新ShopComment的likeNum（likeNum+1）
	@Override
	public Integer updateShopCommentAddById(Integer id) {
		Integer flag = 0;
		flag = shopGoodsDetailMapper.updateShopCommentAddById(id);
		return flag;
	}

	//根据id更新ShopComment的likeNum（likeNum-1）
	@Override
	public Integer updateShopCommentSubById(Integer id) {
		Integer flag = 0;
		flag = shopGoodsDetailMapper.updateShopCommentSubById(id);
		return flag;
	}

	//根据id查询ShopComment
	@Override
	public ShopComment selectShopCommentById(Integer id) {
		ShopComment shopComment = shopGoodsDetailMapper.selectShopCommentById(id);
		if(shopComment != null) {
			return shopComment;
		}
		else {
			return null;
		}
	}

	//插入一条ShopLike数据
	@Override
	public Integer insertShopLike(Integer isLike, Integer buy_id, Integer comment_id, Integer createdBy,
			Date creationDate) {
		Integer flag = 0;
		flag = shopGoodsDetailMapper.insertShopLike(isLike, buy_id, comment_id, createdBy, creationDate);
		return flag;
	}

	//根据buy_id获取ShopAddress列表
	@Override
	public List<ShopAddress> selectShopAddressByBuyId(Integer buy_id) {
		List<ShopAddress> shopAddressList = shopGoodsDetailMapper.selectShopAddressByBuyId(buy_id);
		if(shopAddressList != null) {
			return shopAddressList;
		}
		else {
			return null;
		}
	}

	//插入一条ShopOrder数据
	@Override
	public Integer insertShopOrder(String code, 
								   String phone, String name, String address, 
								   Integer goodsNum, float totalPrice, 
								   Integer isSend, Integer isReceive, Integer afterSell, 
								   Integer goods_id, Integer buy_id,
								   Integer sell_id, Integer createdBy, Date creationDate) {
		Integer flag = shopGoodsDetailMapper.insertShopOrder(code, 
															 phone, name, address, 
															 goodsNum, totalPrice, 
															 isSend, isReceive, afterSell, 
															 goods_id, buy_id, sell_id, 
															 createdBy, creationDate);
															 
		return flag;
	}

	//根据id查询ShopAddress
	@Override
	public ShopAddress selectShopAddressById(Integer id) {
		ShopAddress shopAddress = shopGoodsDetailMapper.selectShopAddressById(id);
		if(shopAddress != null) {
			return shopAddress;
		}
		else {
			return null;
		}
	}

}
