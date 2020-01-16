package com.six.dao.myMapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.myEntity.SellUser;

public interface SellUserMapper {

	// 查询单个卖家信息
	SellUser findSellUser(@Param(value = "code") String code, @Param(value = "password") String password)
			throws Exception;

	// 通过id查询卖家所有信息
	public List<SellUser> selectSellUserById(@Param("id") Integer id);

	// 修改卖家相关信息
	public int updateSellUser(Map<String, Object> map);
	/*
	 * // 修改卖家头像 public int updatePicPojoPath(@Param("picPath") String picPath);
	 */
}
