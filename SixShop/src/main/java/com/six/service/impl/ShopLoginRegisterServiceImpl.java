package com.six.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.ShopLoginRegisterMapper;
import com.six.pojo.ShopAdminUser;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopSellUser;
import com.six.service.ShopLoginRegisterService;

@Service
public class ShopLoginRegisterServiceImpl implements ShopLoginRegisterService {
	
	@Autowired
	private ShopLoginRegisterMapper shopLoginRegisterMapper;

	//根据code查询buyUser
	@Override
	public ShopBuyUser selectBuyUserByCode(String code) {
		ShopBuyUser buyUser = shopLoginRegisterMapper.selectBuyUserByCode(code);
		if(buyUser != null) {
			return buyUser;
		}
		else {
			return null;
		}
	}

	//根据phone查询buyUser
	@Override
	public ShopBuyUser selectBuyUserByPhone(String phone) {
		ShopBuyUser buyUser1 = shopLoginRegisterMapper.selectBuyUserByPhone(phone);
		if(buyUser1 != null) {
			return buyUser1;
		}
		else {
			return null;
		}
	}

	//根据email查询buyUser
	@Override
	public ShopBuyUser selectBuyUserByEmail(String email) {
		ShopBuyUser buyUser = shopLoginRegisterMapper.selectBuyUserByEmail(email);
		if(buyUser != null) {
			return buyUser;
		}
		else {
			return null;
		}
	}

	//根据code查询sellUser
	@Override
	public ShopSellUser selectSellUserByCode(String code) {
		ShopSellUser sellUser = shopLoginRegisterMapper.selectSellUserByCode(code);
		if(sellUser != null) {
			return sellUser;
		}
		else {
			return null;
		}
	}

	//根据phone查询sellUser
	@Override
	public ShopSellUser selectSellUserByPhone(String phone) {
		ShopSellUser sellUser1 = shopLoginRegisterMapper.selectSellUserByPhone(phone);
		if(sellUser1 != null) {
			return sellUser1;
		}
		else {
			return null;
		}
	}

	//根据email查询sellUser
	@Override
	public ShopSellUser selectSellUserByEmail(String email) {
		ShopSellUser sellUser = shopLoginRegisterMapper.selectSellUserByEmail(email);
		if(sellUser != null) {
			return sellUser;
		}
		else {
			return null;
		}
	}

	//根据code查询adminUser
	@Override
	public ShopAdminUser selectAdminUserByCode(String code) {
		ShopAdminUser adminUser = shopLoginRegisterMapper.selectAdminUserByCode(code);
		if(adminUser != null) {
			return adminUser;
		}
		else {
			return null;
		}
	}

	//根据phone查询adminUser
	@Override
	public ShopAdminUser selectAdminUserByPhone(String phone) {
		ShopAdminUser adminUser1 = shopLoginRegisterMapper.selectAdminUserByPhone(phone);
		if(adminUser1 != null) {
			return adminUser1;
		}
		else {
			return null;
		}
	}

	//根据email查询adminUse
	@Override
	public ShopAdminUser selectAdminUserByEmail(String email) {
		ShopAdminUser adminUser = shopLoginRegisterMapper.selectAdminUserByEmail(email);
		if(adminUser != null) {
			return adminUser;
		}
		else {
			return null;
		}
	}

	//插入一行buyUser数据
	@Override
	public Integer insertBuyUser(ShopBuyUser buyUser) {
		Integer isFlag = shopLoginRegisterMapper.insertBuyUser(buyUser);
		return isFlag;
	}

	//插入一行sellUser数据
	@Override
	public Integer insertSellUser(ShopSellUser sellUser) {
		Integer isFlag = shopLoginRegisterMapper.insertSellUser(sellUser);
		return isFlag;
	}

}
