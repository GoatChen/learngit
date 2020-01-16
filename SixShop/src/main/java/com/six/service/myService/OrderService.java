package com.six.service.myService;

import java.util.List;



import com.six.pojo.myEntity.Order;

public interface OrderService {

	// 查询所有退货信息
	public List<Order> findRtOrder(String code);

	// 查询所有申请退货信息
	List<Order> findApplyOrder(String code);

	// 改变订单状态
	boolean queryApplyOrder(String code, Integer afterCell);

	/**
	 * 
	 * 
	 * 杨汉斌负责模块
	************************************
	 */
	// 查询所有成交订单
	public List<Order> selectAllOrder(Integer sell_id);

	// 查询相关卖家所有订单总数
	public int selectOrderAllCount(Integer sell_id);

	// 通过id删除评论表
	public int deleteOrderById(Integer id);

}
