package com.six.dao.myMapper;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.myEntity.Goods;


public interface GoodsMapper {

	// 增加商品信息
	int insGoods(@Param(value = "goods") Goods goods) throws Exception;

	// 删除商品信息
	int delGoods(@Param(value = "name") String name) throws Exception;

}
