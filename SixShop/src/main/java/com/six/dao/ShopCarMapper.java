package com.six.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.six.pojo.ShopAddress;
import com.six.pojo.ShopCar;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopOrder;

public interface ShopCarMapper {
	
	// 查询购物车信息
	public List<ShopCar> getShopCarByUserId(@Param("userid") int userid) throws Exception;
	// 查询购物车物品信息
	public List<ShopGoods> getShopGoodsByUserId(@Param("userid") int userid) throws Exception;
	
	// 模糊查询购物车信息
	public List<ShopCar> getShopCarTypeById(@Param("category1_id") Integer category1_id, @Param("userid") int userid) throws Exception;
	// 查询购物车一级分类列表信息
	public List<ShopGoodsCategory> getcategoryLevel1List() throws Exception;
	// 模糊查询购物车物品信息
	public List<ShopGoods> getShopGoodsTypeById(@Param("category1_id") Integer category1_id, @Param("userid") int userid) throws Exception;
	
	// (商品名称)模糊查询购物车信息
	public List<ShopCar> getShopCarTypeByName(@Param("goodsName") String goodsName, @Param("userid") int userid) throws Exception;
	// (商品名称)模糊查询购物车物品信息
	public List<ShopGoods> getShopGoodsTypeByName(@Param("goodsName") String goodsName, @Param("userid") int userid) throws Exception;
	
	// 根据购物车ID查询购物车信息
	public ShopCar getShopCarByCarId(@Param("id") int id) throws Exception;
	// 根据购物车ID查询购物车物品信息
	public ShopGoods getShopGoodsByCarId(@Param("id") int id) throws Exception;
	// 根据用户idID查询用户地址信息
	public ShopAddress getShopAddressByUserId(@Param("userid") int userid) throws Exception;
	
	// 插入订单信息
	public Boolean insertShopOrder(@Param("shopOrder") ShopOrder shopOrder) throws Exception;
	
	/*
     * 通过Id对ShopCar购物车的一个商品删除进行操作
     */
  	public int delectShopCarById(@Param("id") int id) throws Exception;
  	
  	/*
     * 通过Id对ShopCar购物车的一个商品删除进行操作
     */
  	public int numberPlusMinusById(@Param("id") int id, @Param("num") int num) throws Exception;
  	
    // 插入订单信息insertShopCar
   	public Boolean insertShopCar(@Param("shopCar") ShopCar shopCar) throws Exception;
   	
   	
   	/*
     * 加入购物车查询商品商家的有关信息:goodsid
     */
 	public ShopGoods getShopGoodsByGoodsId(@Param("goodsid") int goodsid) throws Exception;
 	
 	
}
