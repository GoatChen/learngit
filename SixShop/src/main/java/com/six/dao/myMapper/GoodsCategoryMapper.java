package com.six.dao.myMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.myEntity.GoodsCategory;


public interface GoodsCategoryMapper {

	// 三级联动
	List<GoodsCategory> findCategoryLevel(@Param(value = "category_id") Integer category_id);

}
