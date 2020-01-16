package com.six.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.ShopAddressInsertOrUpdateMapper;
import com.six.pojo.ShopAddress;
import com.six.service.ShopAddressInsertOrUpdateService;

@Service
public class ShopAddressInsertOrUpdateServiceImpl implements ShopAddressInsertOrUpdateService {
	
	@Autowired
	private ShopAddressInsertOrUpdateMapper mapper;

	/**
	 * 获取所有地址总页数
	 */
	@Override
	public int selectAddressAllCount(int id) {
		return mapper.selectAddressAllCount(id);
	}

	/**
	 * 查询出所有地址
	 */
	@Override
	public List<ShopAddress> selectAddress(int buy_id, int currentPageNo, int pageSize) {
		return mapper.selectAddress(buy_id,currentPageNo,pageSize);
	}

	/**
	 * 根据id查出该地址并返回到修改页面
	 */
	@Override
	public Object toUpdateBuyUserAddress(int id) {
		return mapper.toUpdateBuyUserAddress(id);
	}

	/**
	 * 更新地址
	 */
	@Override
	public int updateBuyUserAddress(ShopAddress shopAdress) {
		return mapper.updateBuyUserAddress(shopAdress);
	}

	/**
	 * 修改默认地址
	 */
	@Override
	public int isDefaultAddress(int id) {
		return mapper.isDefaultAddress(id);
	}

	/**
	 * 增加地址
	 */
	@Override
	public int insertAddress(ShopAddress shopAddress) {
		return mapper.insertAddress(shopAddress);
	}

	/**
	 * 删除地址
	 */
	@Override
	public int toDeleteBuyUserAddress(int id) {
		return mapper.toDeleteBuyUserAddress(id);
	}

	/**
	 * 把所有地址改为不默认
	 */
	@Override
	public int isDefaultAllAddress() {
		return mapper.isDefaultAllAddress();
	}

}
