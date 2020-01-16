package com.six.service.myService.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.myMapper.GoodsStorageMapper;
import com.six.pojo.myEntity.GoodsStorage;
import com.six.service.myService.GoodsStorageService;



@Service
public class GoodsStorageServiceImpl implements GoodsStorageService {

	@Autowired
	private GoodsStorageMapper goodsStorageMapper;

	// 查询所有库存信息
	public List<GoodsStorage> findSomeGoodsStorage(String code) {
		// TODO Auto-generated method stub
		try {
			return goodsStorageMapper.findSomeGoodsStorage(code);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 查询单个库存信息
	public GoodsStorage findGoodsStorage(Integer id) {
		// TODO Auto-generated method stub
		try {
			return goodsStorageMapper.findGoodsStorage(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 查询是否有该名称
	public GoodsStorage findName(Integer sell_id, String name) {
		// TODO Auto-generated method stub
		try {
			return goodsStorageMapper.findName(sell_id,name);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 改变商品状态
	public boolean queryStatus(Integer id, Integer status) {
		try {
			return goodsStorageMapper.queryStatus(id, status) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	// 增加库存信息
	public boolean insGoodsStorage(GoodsStorage goodsStorage) {
		try {
			return goodsStorageMapper.insGoodsStorage(goodsStorage) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	// 修改图片
	public boolean queryImg(Integer id, String picPath) {
		try {
			return goodsStorageMapper.queryImg(id, picPath) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	// 修改库存信息
	public boolean queryGoodsStorage(GoodsStorage goodsStorage) {
		try {
			return goodsStorageMapper.queryGoodsStorage(goodsStorage) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	// 删除单个库存信息
	public boolean delGoodsStorage(Integer id) {
		try {
			return goodsStorageMapper.delGoodsStorage(id) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	// 删除批量库存信息
	public boolean delSomeGoodsStorage(String idStr) {
		idStr = idStr.substring(0, idStr.length() - 1);
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("idStr", idStr);
		try {
			return goodsStorageMapper.delSomeGoodsStorage(paramMap) >= 1 ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
