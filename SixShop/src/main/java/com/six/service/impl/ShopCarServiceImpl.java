package com.six.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.six.dao.ShopCarMapper;
import com.six.pojo.ShopAddress;
import com.six.pojo.ShopCar;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopOrder;
import com.six.service.ShopCarService;

/**
 * 购物车业务类的实现
 * @author 李氏老四
 *
 */
@Service
public class ShopCarServiceImpl implements ShopCarService{

	@Autowired
	private ShopCarMapper shopCarMapper;
	
	//查询购物车信息
	@Override
	public List<ShopCar> getShopCarByUserId(int userid) {
		List<ShopCar> shopCar = null;
		try {
			shopCar = shopCarMapper.getShopCarByUserId(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopCar != null) { // 判断用户不等于空
			return shopCar;
		}
		return null;
	}
	
	//查询购物车物品信息
	@Override
	public List<ShopGoods> getShopGoodsByUserId(int userid) {
		List<ShopGoods> shopGoods = null;
		try {
			shopGoods = shopCarMapper.getShopGoodsByUserId(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopGoods != null) { // 判断用户不等于空
			return shopGoods;
		}
		return null;
	}
	
	//模糊查询购物车信息
	@Override
	public List<ShopCar> getShopCarTypeById(int category1_id, int userid) throws Exception {
		List<ShopCar> shopCarType = null;
		try {
			shopCarType = shopCarMapper.getShopCarTypeById(category1_id, userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopCarType != null) { // 判断用户不等于空
			return shopCarType;
		}
		return null;
	}

	//模糊查询购物车物品信息
	@Override
	public List<ShopGoods> getShopGoodsTypeById(int category1_id, int userid) throws Exception {
		List<ShopGoods> shopGoodsType = null;
		try {
			shopGoodsType = shopCarMapper.getShopGoodsTypeById(category1_id, userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopGoodsType != null) { // 判断用户不等于空
			return shopGoodsType;
		}
		return null;
	}
	
	//(商品名称)模糊查询购物车信息
	@Override
	public List<ShopCar> getShopCarTypeByName(String goodsName, int userid) throws Exception {
		List<ShopCar> shopCarType = null;
		try {
			shopCarType = shopCarMapper.getShopCarTypeByName(goodsName, userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopCarType != null) { // 判断用户不等于空
			return shopCarType;
		}
		return null;
	}

	//(商品名称)模糊查询购物车物品信息
	@Override
	public List<ShopGoods> getShopGoodsTypeByName(String goodsName, int userid) throws Exception {
		List<ShopGoods> shopGoodsType = null;
		try {
			shopGoodsType = shopCarMapper.getShopGoodsTypeByName(goodsName, userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopGoodsType != null) { // 判断用户不等于空
			return shopGoodsType;
		}
		return null;
	}
	
	//根据购物车ID查询购物车信息
	@Override
	public ShopCar getShopCarByCarId(int id) throws Exception {
		ShopCar shopCarType = null;
		try {
			shopCarType = shopCarMapper.getShopCarByCarId(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopCarType != null) { // 判断用户不等于空
			return shopCarType;
		}
		return null;
	}

	//根据购物车ID查询购物车物品信息
	@Override
	public ShopGoods getShopGoodsByCarId(int id) throws Exception {
		ShopGoods shopGoodsType = null;
		try {
			shopGoodsType = shopCarMapper.getShopGoodsByCarId(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopGoodsType != null) { // 判断用户不等于空
			return shopGoodsType;
		}
		return null;
	}
	
	//根据用户idID查询购物车物品信息getShopAddressByUserId
	@Override
	public ShopAddress getShopAddressByUserId(int userid) throws Exception {
		ShopAddress shopAddressType = null;
		try {
			shopAddressType = shopCarMapper.getShopAddressByUserId(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (shopAddressType != null) { // 判断用户不等于空
			return shopAddressType;
		}
		return null;
	}
	
	//插入订单信息
	@Override
	public Boolean insertShopOrder(ShopOrder shopOrder) throws Exception {
		boolean thisShopOrder = false;
		try {
			thisShopOrder = shopCarMapper.insertShopOrder(shopOrder);
			thisShopOrder = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return thisShopOrder;
	}
	

	//删除一个购物车物品信息delectShopCarById
	@Override
	public boolean delectShopCarById(int id) throws Exception {
		int num=shopCarMapper.delectShopCarById(id);
		if(num>0) {
			return true;
		}else{
		    return false;
		}
	}

	//加减一个购物车物品数量信息numberPlusMinusById
	@Override
	public boolean numberPlusMinusById(int id, int num) throws Exception {
		int number=shopCarMapper.numberPlusMinusById(id,num);
		if(number>0) {
			return true;
		}else{
		    return false;
		}
	}

	//一级分类列表
	@Override
	public List<ShopGoodsCategory> getcategoryLevel1List() throws Exception {
		// TODO Auto-generated method stub
		return shopCarMapper.getcategoryLevel1List();
	}
	
	        //商品加入购物车
			@Override
			public boolean insertShopCar(ShopCar shopCar) throws Exception {
				boolean thisShopCar = false;
				try {
					thisShopCar = shopCarMapper.insertShopCar(shopCar);
					thisShopCar = true;
				} catch (Exception e) {
					e.printStackTrace();
				}
				return thisShopCar;
			}
	
			
			//加入购物车查询商品商家的有关信息
			@Override
			public ShopGoods getShopGoodsByGoodsId(int goodsid) throws Exception {
				ShopGoods shopGoodsType = null;
				try {
					shopGoodsType = shopCarMapper.getShopGoodsByGoodsId(goodsid);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if (shopGoodsType != null) { // 判断用户不等于空
					return shopGoodsType;
				}
				return null;
			}


}
