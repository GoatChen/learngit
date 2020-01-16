package com.six.service.myService.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.myMapper.GoodsMapper;
import com.six.pojo.myEntity.Goods;
import com.six.service.myService.GoodsService;



@Service
public class GoosServiceImpl implements GoodsService {

	@Autowired
	private GoodsMapper goodsMapper;

	// 增加商品信息
	public boolean insGoods(Goods goods) {
		try {
			return goodsMapper.insGoods(goods) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	// 删除商品信息
	public boolean delGoods(String name) {
		try {
			return goodsMapper.delGoods(name) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
