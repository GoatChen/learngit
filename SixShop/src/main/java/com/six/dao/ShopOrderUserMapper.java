package com.six.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.ShopOrder;

public interface ShopOrderUserMapper {

	/**
	 * 查询出所有历史订单
	 * 
	 * @param buy_id
	 * @param currentPageNo
	 * @param pageSize
	 * @return
	 */
	List<ShopOrder> getAllShopOrder(@Param("buy_id") int buy_id,@Param("currentPageNo") int currentPageNo,@Param("pageSize") int pageSize);

	/**
	 * 获取未发货的订单总页数
	 * 
	 * @param buy_id
	 * @return
	 */
	int selectIsReceiveCount(int buy_id);

	/**
	 * 查出未发货的订单
	 * 
	 * @param buy_id
	 * @param currentPageNo
	 * @param pageSize
	 * @return
	 */
	List<ShopOrder> getIsReceive(@Param("buy_id") int buy_id, @Param("currentPageNo") int currentPageNo, @Param("pageSize") int pageSize);

	/**
	 * 根据id查出订单信息
	 * 
	 * @param shopAfterSell
	 * @return
	 */
	Object getShorOrderIsReceive(int id);

	/**
	 * 删除订单
	 * 
	 * @param order_id
	 */
	void shopAfterSellRetreatdelete(int order_id);

	/**
	 * 获取已收货的订单总页数
	 * 
	 * @param buy_id
	 * @return
	 */
	int selectIsReceiveCountAlready(int buy_id);

	/**
	 * 查出已收货的订单
	 * 
	 * @param buy_id
	 * @param currentPageNo
	 * @param pageSize
	 * @return
	 */
	List<ShopOrder> getIsReceiveAlready(@Param("buy_id") int buy_id, @Param("currentPageNo") int currentPageNo,
			@Param("pageSize") int pageSize);

	/**
	 * 根据id查出订单信息
	 * 
	 * @param id
	 * @return
	 */
	Object getUserComment(int id);

	/**
	 * 获取所有订单总页数
	 * 
	 * @param id
	 * @return
	 */
	int selectIsReceiveAllCount(int id);
}
