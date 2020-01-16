package com.six.service;

import com.six.pojo.ShopAfterSell;

public interface ShopAfterSellUserService {

	/**
	 * 增加退货订单
	 * 
	 * @param shopAfterSell
	 * @return
	 */
	int shopAfterSellRetreatInsert(ShopAfterSell shopAfterSell);

}
