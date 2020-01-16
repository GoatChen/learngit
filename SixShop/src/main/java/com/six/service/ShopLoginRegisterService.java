package com.six.service;

import com.six.pojo.ShopAdminUser;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopSellUser;

public interface ShopLoginRegisterService {

	//根据code查询buyUser
	public ShopBuyUser selectBuyUserByCode(String code);
	//根据phone查询buyUser
	public ShopBuyUser selectBuyUserByPhone(String phone);
	//根据email查询buyUser
	public ShopBuyUser selectBuyUserByEmail(String email);
	
	//根据code查询sellUser
	public ShopSellUser selectSellUserByCode(String code);
	//根据phone查询sellUser
	public ShopSellUser selectSellUserByPhone(String phone);
	//根据email查询sellUser
	public ShopSellUser selectSellUserByEmail(String email);
	
	//根据code查询adminUser
	public ShopAdminUser selectAdminUserByCode(String code);
	//根据phone查询adminUser
	public ShopAdminUser selectAdminUserByPhone(String phone);
	//根据email查询adminUser
	public ShopAdminUser selectAdminUserByEmail(String email);
	
	//插入一行buyUser数据
	public Integer insertBuyUser(ShopBuyUser buyUser);
	//插入一行sellUser数据
	public Integer insertSellUser(ShopSellUser sellUser);
	
}
