package com.six.service.myService.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.myMapper.OrderMapper;
import com.six.pojo.myEntity.Order;
import com.six.service.myService.OrderService;



/**
 * Created by XRog On 2/1/2017.12:58 AM
 */
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	// 查询所有退货信息
	public List<Order> findRtOrder(String code) {
		try {
			return orderMapper.findRtOrder(code);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 查询所有申请退货信息
	public List<Order> findApplyOrder(String code) {
		try {
			return orderMapper.findApplyOrder(code);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 改变订单状态
	public boolean queryApplyOrder(String code, Integer afterCell) {
		try {
			return orderMapper.queryApplyOrder(code, afterCell) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 
	 * ************杨汉斌模块************
	 */

	@Override
	public List<Order> selectAllOrder(Integer sell_id) {
		// TODO Auto-generated method stub
		return orderMapper.selectAllOrder(sell_id);
	}
	
	@Override
	public int selectOrderAllCount(Integer sell_id) {
		// TODO Auto-generated method stub
		return orderMapper.selectOrderAllCount(sell_id);
	}

	@Override
	public int deleteOrderById(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.deleteOrderById(id);
	}
	
}
