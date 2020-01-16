package com.six.service.backend;

import java.util.List;

import com.six.pojo.ShopGoodsCategory;

public interface ShopCategoryService {
	/**
	 * 根据父节点category_id获取相应的分类列表
	 * @param category_id
	 * @return
	 * @throws Exception
	 */
	public List<ShopGoodsCategory> getShopCategoryListByParentId(Integer category_id)throws Exception;
}
