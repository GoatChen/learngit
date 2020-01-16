package com.six.service.backend;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.ShopGoodsStorage;

/**
 * 
 * @author 
 * 后台管理员业务类
 */
public interface ShopCheckService {
	
	/**
	 * 查询出待审核（status=1）的商品数量
	 * @param queryShopName
	 * @param queryCategoryLevel1
	 * @param queryCategoryLevel2
	 * @param queryCategoryLevel3
	 * @param querySellIdName
	 * @return
	 * @throws Exception
	 */
	public int getShopCheckCount(@Param(value="queryShopName")String queryShopName,
							   @Param(value="categoryLevel1")Integer queryCategoryLevel1,
							   @Param(value="categoryLevel2")Integer queryCategoryLevel2,
							   @Param(value="categoryLevel3")Integer queryCategoryLevel3,
							   @Param(value="status")Integer status)throws Exception;
	
	/**
	 * 根据条件查询出待审核的商品列表并分页显示
	 * @param queryShopName
	 * @param queryCategoryLevel1
	 * @param queryCategoryLevel2
	 * @param queryCategoryLevel3
	 * @param querySellIdName
	 * @param currentPageNo
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	public List<ShopGoodsStorage> getShopCheckList(@Param(value="queryShopName")String queryShopName,
										@Param(value="categoryLevel1")Integer queryCategoryLevel1,
										@Param(value="categoryLevel2")Integer queryCategoryLevel2,
										@Param(value="categoryLevel3")Integer queryCategoryLevel3,
										@Param(value="status")Integer status,
										@Param(value="from")Integer currentPageNo,
										@Param(value="pageSize")Integer pageSize)throws Exception;

	/**
	 * 根据id获取app详细信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public ShopGoodsStorage getShopInfo(@Param(value="id")Integer id)throws Exception;
	
	/**
	 * 根据id更新库存的satus
	 * @param status
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public boolean updateSatus(@Param(value="status")Integer status,@Param(value="id")Integer id)throws Exception;
}
