package com.six.dao.myMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.myEntity.Order;

public interface OrderMapper {

	// 查询所有退货信息
	List<Order> findRtOrder(@Param(value = "code") String code) throws Exception;

	// 查询所有申请退货信息
	List<Order> findApplyOrder(@Param(value = "code") String code) throws Exception;

	// 改变订单状态
	int queryApplyOrder(@Param(value = "code") String code, @Param(value = "afterCell") Integer afterCell)
			throws Exception;

	/**
	 * ***********杨汉斌负责模块*****************************
	 * 
	 */
	// 查询所有成交订单
	public List<Order> selectAllOrder(@Param("sell_id") Integer sell_id);

	// 查询相关卖家所有订单总数
	public int selectOrderAllCount(@Param("sell_id") Integer sell_id);

	// 通过id删除评论表
	public int deleteOrderById(@Param("id") Integer id);
}
