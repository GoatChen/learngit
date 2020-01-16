package com.six.service;

import com.six.pojo.ShopBuyUser;

public interface ShopBuyUserService {

	/**
	 * 查询出用户的所有信息
	 * 
	 * @param id
	 * @return
	 */
	Object selectShopBuyUserById(int id);

	/**
	 * 更新用户信息
	 * 
	 * @param shop_buyUser
	 * @return
	 */
	int shopSellUsertoupdateUser(ShopBuyUser shop_buyUser);

	/**
	 * 更新余额
	 * 
	 * @param id
	 * @param money
	 * @return
	 */
	int shopSellUsertoupdateMoney(int id, float money);

	/**
	 * 修改头像
	 * 
	 * @param shopBuyUser
	 * @return
	 */
	int updatePic(ShopBuyUser shopBuyUser);

	/**
	 * 查出头像
	 * 
	 * @param id
	 * @return
	 */
	String selectToUpdatePic(int id);
	
	/**
	 * 查出余额
	 * 
	 * @param id
	 * @return
	 */
	float shopBuyUserMoney(int id);

	/**
	 * 查出当前积分
	 * 
	 * @param id
	 * @return
	 */
	int selectShopBuyUserByPoints(int id);

	/**
	 * 更新积分
	 * 
	 * @param i
	 */
	void updateShopBuyUserByPoints(int points2,int id);
	
}
