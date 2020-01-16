package com.six.service.myService;

import java.util.List;
import java.util.Map;

import com.six.pojo.myEntity.SellUser;

public interface SellUserService {

	// 查询单个卖家信息
	public SellUser findSellUser(String code, String password);
	
	//通过id查询卖家所有信息
	public List<SellUser> selectSellUserById(Integer id);
	//修改卖家相关信息
	public int updateSellUser(Map<String,Object> map);
	/*
	 * //修改卖家头像 public int updatePicPojoPath(String picPath);
	 */
}
