package com.six.dao.backend;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.six.pojo.ShopGoodsCategory;

/**
 * 管理员逻辑类
 * @author 李氏老四
 *
 */
public interface ShopCategoryMapper {
	
	//查询三级联动父类
	public List<ShopGoodsCategory> getShopCategoryListByParentId(@Param("category_id")Integer category_id)throws Exception;
	
}
