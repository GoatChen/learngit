package com.six.service;

import java.util.List;

import com.six.pojo.ShopAddress;

public interface ShopAddressInsertOrUpdateService {
	
	/**
	 * 获取所有地址总页数
	 * 
	 * @param id
	 * @return
	 */
	int selectAddressAllCount(int id);

	/**
	 * 查询出所有地址
	 * 
	 * @param buy_id
	 * @param currentPageNo
	 * @param pageSize
	 * @return
	 */
	List<ShopAddress> selectAddress(int buy_id, int currentPageNo, int pageSize);

	/**
	 * 根据id查出该地址并返回到修改页面
	 * 
	 * @param id
	 * @return
	 */
	Object toUpdateBuyUserAddress(int id);

	/**
	 * 更新地址
	 * 
	 * @param shopAdress
	 * @return
	 */
	int updateBuyUserAddress(ShopAddress shopAdress);

	/**
	 * 修改默认地址
	 * 
	 * @param id
	 * @return
	 */
	int isDefaultAddress(int id);

	/**
	 * 增加地址
	 * 
	 * @param id
	 * @return
	 */
	int insertAddress(ShopAddress shopAddress);

	/**
	 * 删除地址
	 * 
	 * @param id
	 * @return
	 */
	int toDeleteBuyUserAddress(int id);

	/**
	 * 把所有地址改为不默认
	 * 
	 * @return
	 */
	int isDefaultAllAddress();

}
