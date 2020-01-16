package com.six.dao;

import com.six.pojo.ShopAfterSell;

public interface ShopAfterSellUserMapper {

	/**
	 * 增加退货订单
	 * 
	 * @param shopAfterSell
	 * @return
	 */
	int shopAfterSellRetreatInsert(ShopAfterSell shopAfterSell);

}
