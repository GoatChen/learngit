package com.six.service.impl.backend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.backend.ShopCategoryMapper;
import com.six.pojo.ShopGoodsCategory;
import com.six.service.backend.ShopCategoryService;

/**
 * 管理员业务类的实现
 * @author 李氏老四
 *
 */
@Service
public class ShopCategoryServiceImpl implements ShopCategoryService{
	
	@Autowired
	private ShopCategoryMapper shopCategoryMapper;

	@Override
	public List<ShopGoodsCategory> getShopCategoryListByParentId(Integer category_id) throws Exception {
		// TODO Auto-generated method stub
		return shopCategoryMapper.getShopCategoryListByParentId(category_id);
	}

}
