package com.six.service.impl.backend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.backend.ShopCheckMapper;
import com.six.pojo.ShopGoodsStorage;
import com.six.service.backend.ShopCheckService;

/**
 * 管理员业务类的实现
 * @author 李氏老四
 *
 */
@Service
public class ShopCheckServiceImpl implements ShopCheckService{

	@Autowired
	private ShopCheckMapper shopCheckMapper;

	@Override
	public int getShopCheckCount(String queryShopName, Integer queryCategoryLevel1, Integer queryCategoryLevel2,
			Integer queryCategoryLevel3, Integer status) throws Exception {
		// TODO Auto-generated method stub
		return shopCheckMapper.getShopCheckCount(queryShopName, status, queryCategoryLevel1, queryCategoryLevel2, 
				queryCategoryLevel3 );
	}

	@Override
	public List<ShopGoodsStorage> getShopCheckList(String queryShopName, Integer queryCategoryLevel1,
			Integer queryCategoryLevel2, Integer queryCategoryLevel3, Integer status, Integer currentPageNo,
			Integer pageSize) throws Exception {
		// TODO Auto-generated method stub
		return shopCheckMapper.getShopCheckList(queryShopName, status, queryCategoryLevel1, queryCategoryLevel2, 
                queryCategoryLevel3, (currentPageNo-1)*pageSize, pageSize);
	}

	@Override
	public ShopGoodsStorage getShopInfo(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return shopCheckMapper.getShopInfo(id);
	}

	@Override
	public boolean updateSatus(Integer status, Integer id) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		if(shopCheckMapper.updateSatus(status, id) > 0 ){
			flag = true;
		}
		return flag;
	}
	

}
