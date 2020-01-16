package com.six.service.myService.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.myMapper.GoodsCategoryMapper;
import com.six.pojo.myEntity.GoodsCategory;
import com.six.service.myService.GoodsCategoryService;


@Service
public class GoodsCategoryServiceImpl implements GoodsCategoryService {

	@Autowired
	private GoodsCategoryMapper goodsCategoryMapper;

	// 查询分类
	public List<GoodsCategory> findCategoryLevel(Integer category_id) {
		// TODO Auto-generated method stub
		try {
			return goodsCategoryMapper.findCategoryLevel(category_id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
