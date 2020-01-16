package com.six.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.ShopOrderUserMapper;
import com.six.pojo.ShopOrder;
import com.six.service.ShopOrderUserService;

@Service
public class ShopOrderUserServiceImpl implements ShopOrderUserService {

	@Autowired
	private ShopOrderUserMapper mapper;

	/**
	 * 查询出所有历史订单
	 */
	@Override
	public List<ShopOrder> getAllShopOrder(int buy_id, int currentPageNo, int pageSize) {
		List<ShopOrder> shopOrderList = null;
		shopOrderList = mapper.getAllShopOrder(buy_id,currentPageNo,pageSize);
		System.out.println("++++++++++进入mapper++++++++++++");
		System.out.println("++++++++++打印" + shopOrderList);
		if (shopOrderList != null) {
			return shopOrderList;
		}
		return null;
	}

	/**
	 * 获取未发货的订单总页数
	 */
	@Override
	public int selectIsReceiveCount(int buy_id) {
		return mapper.selectIsReceiveCount(buy_id);
	}

	/**
	 * 查出未发货的订单
	 */
	@Override
	public List<ShopOrder> getIsReceive(int buy_id, int currentPageNo, int pageSize) {
		System.out.println("检查ok");
		List<ShopOrder> shopOrderList = null;
		shopOrderList = mapper.getIsReceive(buy_id, currentPageNo, pageSize);
		System.out.println("检查ok");
		if (shopOrderList != null) {
			return shopOrderList;
		}
		return null;
	}

	/**
	 * 根据id查出订单信息
	 */
	@Override
	public Object getShorOrderIsReceive(int id) {
		System.out.println("进入getShorOrderIsReceive");
		return mapper.getShorOrderIsReceive(id);
	}

	/**
	 * 删除订单
	 */
	@Override
	public void shopAfterSellRetreatdelete(int order_id) {
		mapper.shopAfterSellRetreatdelete(order_id);
	}

	/**
	 * 获取已收货的订单总页数
	 */
	@Override
	public int selectIsReceiveCountAlready(int buy_id) {
		return mapper.selectIsReceiveCountAlready(buy_id);
	}

	/**
	 * 查出已收货的订单
	 */
	@Override
	public List<ShopOrder> getIsReceiveAlready(int buy_id, int currentPageNo, int pageSize) {
		System.out.println("检查ok");
		List<ShopOrder> shopOrderList = null;
		shopOrderList = mapper.getIsReceiveAlready(buy_id, currentPageNo, pageSize);
		System.out.println("检查ok");
		if (shopOrderList != null) {
			return shopOrderList;
		}
		return null;
	}

	/**
	 * 根据id查出订单信息
	 */
	@Override
	public Object getUserComment(int id) {
		return mapper.getUserComment(id);
	}

	/**
	 * 获取所有订单总页数
	 */
	@Override
	public int selectIsReceiveAllCount(int id) {
		return mapper.selectIsReceiveAllCount(id);
	}

}
