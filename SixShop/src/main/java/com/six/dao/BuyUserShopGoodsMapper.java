package com.six.dao;

import org.apache.ibatis.annotations.Param;

public interface BuyUserShopGoodsMapper {

	/**
	 * 更新评分
	 * 
	 * @param scoreAvg
	 * @param id
	 */
	void updateBuyUserShopGoods(@Param("scoreAvg") float scoreAvg, @Param("id") int id);

}
