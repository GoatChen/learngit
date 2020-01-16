package com.six.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.ShopAfterSellUserMapper;
import com.six.pojo.ShopAfterSell;
import com.six.service.ShopAfterSellUserService;

@Service
public class ShopAfterSellUserServiceImpl implements ShopAfterSellUserService {

	@Autowired
	private ShopAfterSellUserMapper mapper;

	/**
	 * 增加退货订单
	 */
	@Override
	public int shopAfterSellRetreatInsert(ShopAfterSell shopAfterSell) {
		return mapper.shopAfterSellRetreatInsert(shopAfterSell);
	}

}
