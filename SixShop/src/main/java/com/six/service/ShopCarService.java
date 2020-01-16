package com.six.service;

import java.util.List;

import com.six.pojo.ShopAddress;
import com.six.pojo.ShopCar;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopOrder;

public interface ShopCarService {
	//查询购物车信息
    public List<ShopCar> getShopCarByUserId(int userid) throws Exception;
    //查询购物车物品信息
    public List<ShopGoods> getShopGoodsByUserId(int userid) throws Exception;
    
    //模糊查询购物车信息
    public List<ShopCar> getShopCarTypeById(int category1_id, int userid) throws Exception;
    //查询购物车一级分类列表信息
    public List<ShopGoodsCategory> getcategoryLevel1List() throws Exception;
    //模糊查询购物车物品信息
    public List<ShopGoods> getShopGoodsTypeById(int category1_id, int userid) throws Exception;
    
    //(商品名)模糊查询购物车信息
    public List<ShopCar> getShopCarTypeByName(String goodsName, int userid) throws Exception;
    //(商品名)模糊查询购物车物品信息
    public List<ShopGoods> getShopGoodsTypeByName(String goodsName, int userid) throws Exception;
    
    //根据购物车ID查询购物车信息
    public ShopCar getShopCarByCarId(int id) throws Exception;
    //根据购物车ID查询购物车物品信息
    public ShopGoods getShopGoodsByCarId(int id) throws Exception;
    //根据用户idID查询用户地址信息getShopAddressByUserId
    public ShopAddress getShopAddressByUserId(int userid) throws Exception;
    
    
    //插入订单信息
  	public Boolean insertShopOrder(ShopOrder shopOrder) throws Exception;
    
    //删除一个购物车物品信息delectShopCarById
    public boolean delectShopCarById(int id) throws Exception;
    
    //加减一个购物车物品数量信息numberPlusMinusById
    public boolean numberPlusMinusById(int id, int num) throws Exception;
    
    //商品加入购物车
    public boolean insertShopCar(ShopCar shopCar) throws Exception;
    
    
    //加入购物车查询商品商家的有关信息
    public ShopGoods getShopGoodsByGoodsId(int goodsid) throws Exception;
    
}
