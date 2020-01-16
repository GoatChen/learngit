package com.six.dao.myMapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.myEntity.GoodsStorage;



public interface GoodsStorageMapper {

	// 查询所有库存信息
	List<GoodsStorage> findSomeGoodsStorage(@Param(value = "code") String code) throws Exception;

	// 查询单个库存信息
	GoodsStorage findGoodsStorage(@Param(value = "id") Integer id) throws Exception;

	// 查询是否有该名称
	GoodsStorage findName(@Param(value = "sell_id") Integer sell_id, @Param(value = "name") String name)
			throws Exception;

	// 改变商品状态
	int queryStatus(@Param(value = "id") Integer id, @Param(value = "status") Integer status) throws Exception;

	// 增加库存信息
	int insGoodsStorage(@Param(value = "goodsStorage") GoodsStorage goodsStorage) throws Exception;

	// 修改图片
	int queryImg(@Param(value = "id") Integer id, @Param(value = "picPath") String picPath) throws Exception;

	// 修改库存信息
	int queryGoodsStorage(@Param(value = "goodsStorage") GoodsStorage goodsStorage) throws Exception;

	// 删除单个库存信息
	int delGoodsStorage(@Param(value = "id") Integer id) throws Exception;

	// 删除批量库存信息
	int delSomeGoodsStorage(Map<String, Object> paramMap);

}
