package com.six.service.myService;

import java.util.List;

import com.six.pojo.myEntity.GoodsStorage;


public interface GoodsStorageService {

	// 查询所有库存信息
	public List<GoodsStorage> findSomeGoodsStorage(String code);

	// 查询单个库存信息
	public GoodsStorage findGoodsStorage(Integer id);

	// 查询是否有该名称
	public GoodsStorage findName(Integer sell_id, String name);

	// 改变商品状态
	public boolean queryStatus(Integer id, Integer status);

	// 增加库存信息
	public boolean insGoodsStorage(GoodsStorage goodsStorage);

	// 修改图片
	public boolean queryImg(Integer id, String picPath);

	// 修改库存信息
	public boolean queryGoodsStorage(GoodsStorage goodsStorage);

	// 删除单个库存信息
	public boolean delGoodsStorage(Integer id);

	// 删除批量库存信息
	public boolean delSomeGoodsStorage(String id);

}
