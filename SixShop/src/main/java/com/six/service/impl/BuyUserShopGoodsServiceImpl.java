package com.six.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.BuyUserShopGoodsMapper;
import com.six.service.BuyUserShopGoodsService;

@Service
public class BuyUserShopGoodsServiceImpl implements BuyUserShopGoodsService {

	@Autowired
	private BuyUserShopGoodsMapper mapper;

	/**
	 * 更新评分
	 */
	@Override
	public void updateBuyUserShopGoods(float scoreAvg, int id) {
		mapper.updateBuyUserShopGoods(scoreAvg, id);

	}
}
