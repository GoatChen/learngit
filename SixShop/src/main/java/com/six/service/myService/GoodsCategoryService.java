package com.six.service.myService;

import java.util.List;

import com.six.pojo.myEntity.GoodsCategory;


public interface GoodsCategoryService {

	// 三级联动
	public List<GoodsCategory> findCategoryLevel(Integer category_id);

}
