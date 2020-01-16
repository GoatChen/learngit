package com.six.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.ShopBuyUserMapper;
import com.six.pojo.ShopBuyUser;
import com.six.service.ShopBuyUserService;

@Service
public class ShopBuyUserServiceImpl implements ShopBuyUserService {

	@Autowired
	private ShopBuyUserMapper mapper;

	/**
	 * 查询出用户的所有信息
	 */
	@Override
	public Object selectShopBuyUserById(int id) {
		return mapper.selectShopBuyUserById(id);
	}

	/**
	 * 更新用户信息
	 */
	@Override
	public int shopSellUsertoupdateUser(ShopBuyUser shopBuyUser) {
		System.out.println("************" + shopBuyUser.getCode());
		return mapper.shopSellUsertoupdateUser(shopBuyUser);
	}

	/**
	 * 更新余额
	 */
	@Override
	public int shopSellUsertoupdateMoney(int id, float money) {
		return mapper.shopSellUsertoupdateMoney(id, money);
	}

	/**
	 * 修改头像
	 */
	@Override
	public int updatePic(ShopBuyUser shopBuyUser) {
		System.out.println("----------shopBuyUser.getPicLocalPath()" + shopBuyUser.getPicLocalPath());
		return mapper.updatePic(shopBuyUser);
	}

	/**
	 * 查出头像
	 */
	@Override
	public String selectToUpdatePic(int id) {
		return mapper.selectToUpdatePic(id);
	}
	
	/**
	 * 查出余额
	 */
	@Override
	public float shopBuyUserMoney(int id) {
		return mapper.shopBuyUserMoney(id);
	}

	/**
	 * 查出当前积分
	 */
	@Override
	public int selectShopBuyUserByPoints(int id) {
		return mapper.selectShopBuyUserByPoints(id);
	}

	/**
	 * 更新积分
	 */
	@Override
	public void updateShopBuyUserByPoints(int points2,int id) {
		mapper.updateShopBuyUserByPoints(points2,id);
	}


}
