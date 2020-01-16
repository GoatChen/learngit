package com.six.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.six.pojo.ShopAdminUser;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopSellUser;

@Repository
public interface ShopLoginRegisterMapper {
	
	//根据code查询buyUser
	public ShopBuyUser selectBuyUserByCode(@Param("code")String code);
	//根据phone查询buyUser
	public ShopBuyUser selectBuyUserByPhone(@Param("phone")String phone);
	//根据email查询buyUser
	public ShopBuyUser selectBuyUserByEmail(@Param("email")String email);
	
	//根据code查询sellUser
	public ShopSellUser selectSellUserByCode(@Param("code")String code);
	//根据phone查询sellUser
	public ShopSellUser selectSellUserByPhone(@Param("phone")String phone);
	//根据email查询sellUser
	public ShopSellUser selectSellUserByEmail(@Param("email")String email);
	
	//根据code查询adminUser
	public ShopAdminUser selectAdminUserByCode(@Param("code")String code);
	//根据phone查询adminUser
	public ShopAdminUser selectAdminUserByPhone(@Param("phone")String phone);
	//根据email查询adminUser
	public ShopAdminUser selectAdminUserByEmail(@Param("email")String email);
	
	//插入一行buyUser数据
	public Integer insertBuyUser(ShopBuyUser buyUser);
	//插入一行buyUser数据
	public Integer insertSellUser(ShopSellUser sellUser);
}
