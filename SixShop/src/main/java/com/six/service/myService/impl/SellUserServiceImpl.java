package com.six.service.myService.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.myMapper.SellUserMapper;
import com.six.pojo.myEntity.SellUser;
import com.six.service.myService.SellUserService;



/**
 * Created by XRog On 2/1/2017.12:58 AM
 */
@Service
public class SellUserServiceImpl implements SellUserService {

	@Autowired
	private SellUserMapper sellUserMapper;

	// 查询单个卖家信息
	public SellUser findSellUser(String code, String password) {
		// TODO Auto-generated method stub
		try {
			return sellUserMapper.findSellUser(code,password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override 
	public List<SellUser> selectSellUserById(Integer id) {
		return sellUserMapper.selectSellUserById(id);
	}

	@Override 
	public int updateSellUser(Map<String, Object> map) {
		
		return sellUserMapper.updateSellUser(map);
	}

	/*
	 * @Override public int updatePicPojoPath(String picPath) {
	 * 
	 * return sellUserMapper.updatePicPojoPath(picPath); }
	 */
}
