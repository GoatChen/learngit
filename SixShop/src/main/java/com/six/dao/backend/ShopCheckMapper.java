package com.six.dao.backend;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.six.pojo.ShopGoodsStorage;

/**
 * 管理员逻辑类
 * @author 李氏老四
 *
 */
public interface ShopCheckMapper {
	
	//查询待审核商品个数
	public int getShopCheckCount(@Param(value="queryShopName")String queryShopName,
	   @Param(value="status")Integer status,
	   @Param(value="categoryLevel1")Integer queryCategoryLevel1,
	   @Param(value="categoryLevel2")Integer queryCategoryLevel2,
	   @Param(value="categoryLevel3")Integer queryCategoryLevel3
	   )throws Exception;
	
	//查询待审核商品列表
	public List<ShopGoodsStorage> getShopCheckList(@Param(value="queryShopName")String queryShopName,
			@Param(value="status")Integer status,
			@Param(value="categoryLevel1")Integer queryCategoryLevel1,
			@Param(value="categoryLevel2")Integer queryCategoryLevel2,
			@Param(value="categoryLevel3")Integer queryCategoryLevel3,
			@Param(value="from")Integer currentPageNo,
			@Param(value="pageSize")Integer pageSize)throws Exception;
	
	//查询审核单个商品信息
	public ShopGoodsStorage getShopInfo(@Param(value="id")Integer id)throws Exception;
	
	/*
	 * 更新app状态
	 * @param status
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public int updateSatus(@Param(value="status")Integer status,@Param(value="id")Integer id)throws Exception;
}
