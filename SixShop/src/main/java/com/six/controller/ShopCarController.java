package com.six.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.six.pojo.ShopAddress;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopCar;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopOrder;
import com.six.service.ShopCarService;
import com.six.tools.Constants;

/**
 * 
 * @author 李氏老四
 * @description: 购物车的控制器
 **/
@Controller
@RequestMapping("/shopcar")
public class ShopCarController {

	// 事务
	@Autowired
	private ShopCarService shopCarService;

	/*
	 * 导入主界面
	 */
	@RequestMapping("/index")
	public String insert() {
		return "index";
	}

	/*
	 * 导入购物车界面
	 */
	@RequestMapping(value = "/buyshopcar/{userid}", method = RequestMethod.GET)
	public String update(@PathVariable("userid") Integer userid, Model model) throws Exception {
		List<ShopCar> shopCarlist = shopCarService.getShopCarByUserId(userid);
		List<ShopGoods> shopGoodslist = shopCarService.getShopGoodsByUserId(userid);
		List<ShopGoodsCategory> categoryLevel1List = shopCarService.getcategoryLevel1List();
		// System.out.println("++++++++++进入service++++++++++++");
		// for (ShopCar s : shopCarlist) {
		// System.out.println("++++++++++++++" + s.toString());
		// }
		// System.out.println("++++++++++进入service++++++++++++");
		// for (ShopGoods a : shopGoodslist) {
		// System.out.println("++++++++++++++" + a.toString());
		// }
		model.addAttribute("shopGoodslist", shopGoodslist);
		model.addAttribute("shopCarlist", shopCarlist);
		model.addAttribute("categoryLevel1List", categoryLevel1List);
		return "buyUser/buyShopCat";
	}
	
	/*
	 * 导入购物车界面，查询相关类型信息
	 */
	@RequestMapping(value = "/getshopcartype/{category1_id}", method = RequestMethod.GET)
	public String getshopcartype(@PathVariable("category1_id") int category1_id, Model model, HttpSession session ) throws Exception {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		int userid = buyUser.getId();
		List<ShopCar> shopCarlist = shopCarService.getShopCarTypeById(category1_id, userid);
		List<ShopGoods> shopGoodslist = shopCarService.getShopGoodsTypeById(category1_id, userid);
		List<ShopGoodsCategory> categoryLevel1List = shopCarService.getcategoryLevel1List();
		model.addAttribute("shopGoodslist", shopGoodslist);
		model.addAttribute("shopCarlist", shopCarlist);
		model.addAttribute("categoryLevel1List", categoryLevel1List);
		return "buyUser/buyShopCat";
	}
	
	/*
	 * 导入购物车界面,模糊查询名称
	 */
	@RequestMapping(value = "/getShopCarByName")
	//@ResponseBody
	public String getShopCarByName(@RequestParam(value="goodsName") String goodsName, Model model, HttpSession session ) throws Exception {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		int userid = buyUser.getId();
		//String goodsName1 = "电脑";
		System.out.println("++++++++++++++" + goodsName);
		List<ShopCar> shopCarlist = shopCarService.getShopCarTypeByName(goodsName, userid);
		List<ShopGoods> shopGoodslist = shopCarService.getShopGoodsTypeByName(goodsName, userid);
		List<ShopGoodsCategory> categoryLevel1List = shopCarService.getcategoryLevel1List();
		model.addAttribute("shopGoodslist", shopGoodslist);
		model.addAttribute("shopCarlist", shopCarlist);
		model.addAttribute("categoryLevel1List", categoryLevel1List);
		return "buyUser/buyShopCat";
	}

	/*
	 * 删除购物车商品，异步请求（批量删除）
	 */
	@RequestMapping(value = "/delectShopCarById", method = RequestMethod.GET)
	@ResponseBody
	public Object delectShopCarById(@RequestParam Integer id) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if (shopCarService.delectShopCarById(id)) {
			System.out.println("++++++++++++++"+shopCarService.delectShopCarById(id));
			resultMap.put("result", "success");
			System.out.println("--------------"+shopCarService.delectShopCarById(id));
		} else {
			System.out.println("----------");
			resultMap.put("result", "failed");
		}
		return resultMap;
	}
	
	/*
	 * 批量结算购物车商品，异步请求
	 */
	@RequestMapping(value = "/delectAllShopCarAndInsert", method = RequestMethod.GET)
	@ResponseBody
	public Object delectAllShopCarAndInsert(ShopOrder shopOrder, @RequestParam Integer id, HttpSession session) throws Exception {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		int userid = buyUser.getId();
		ShopCar shopCarByCarIdlist = shopCarService.getShopCarByCarId(id);
		ShopGoods shopGoodsByCarIdlist = shopCarService.getShopGoodsByCarId(id);
		ShopAddress shopAddressByUserIdlist = shopCarService.getShopAddressByUserId(userid);
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date creationDate = new Date();		//获取当前日期
		creationDate = sdf1.parse(sdf1.format(new Date()));
		String code1 = sdf1.format(creationDate)+id+userid;
		
		Integer totalPrice = shopCarByCarIdlist.getCar_gnum() * (int) shopGoodsByCarIdlist.getPrice();
		shopOrder.setAddress(shopAddressByUserIdlist.getAddress());
		shopOrder.setAfterSell(0);
		shopOrder.setBuy_id(userid);
		shopOrder.setCode(code1);
		shopOrder.setCreatedBy(userid);
		shopOrder.setCreationDate(new Date());
		shopOrder.setGoods_id(shopGoodsByCarIdlist.getId());
		shopOrder.setGoodsNum(shopCarByCarIdlist.getCar_gnum());
		shopOrder.setIsReceive(0);
		shopOrder.setIsSend(0);
		shopOrder.setName(shopAddressByUserIdlist.getName());
		shopOrder.setPhone(shopAddressByUserIdlist.getPhone());
		shopOrder.setSell_id(shopCarByCarIdlist.getSell_id());
		shopOrder.setTotalPrice(totalPrice);
		
		boolean thisShopOrder = shopCarService.insertShopOrder(shopOrder);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if (shopCarService.delectShopCarById(id)) {
			resultMap.put("result", "success");
			//System.out.println("88888888");
			if (thisShopOrder) {
				System.out.println("66666666");
				//return "buyUser/buyShopCat";
				//return "redirect:/shopcar/index";
			}
		} else {
			System.out.println("----------");
			resultMap.put("result", "failed");
		}
		return resultMap;
	}
	
	/*
	 * 加减购物车商品数量，异步请求
	 */
	@RequestMapping(value = "/numberPlusMinusById", method = RequestMethod.GET)
	@ResponseBody
	public Object numberPlusMinusById(@RequestParam Integer id, @RequestParam Integer num) throws Exception {
		System.out.println("id:"+id);
		System.out.println("num:"+num);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		boolean aa = shopCarService.numberPlusMinusById(id,num);
		if (aa) {
			System.out.println("++++++++++++++");
			resultMap.put("result", "success");
			System.out.println("--------------");
		} else {
			System.out.println("----------");
			resultMap.put("result", "failed");
		}
		return resultMap;
	}
	
	/*
	 * 商品加入购物车请求
	 */
	@RequestMapping(value = "/insertShopCar", method = RequestMethod.GET)
	@ResponseBody
	public Object insertShopCar(@RequestParam Integer goodsId,@RequestParam Integer goodsNum,ShopCar shopCar, HttpSession session) throws Exception {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		int userid = buyUser.getId();
		System.out.println("传过来的值"+userid);
		System.out.println("商品传过来的值"+goodsId);
		System.out.println("商品传过来的数量"+goodsNum);
		ShopGoods shopGoodsByCarIdlist = shopCarService.getShopGoodsByGoodsId(goodsId);
		System.out.println("商品sell"+shopGoodsByCarIdlist);
		shopCar.setGoods_id(goodsId);
		shopCar.setBuy_id(userid);
		shopCar.setSell_id(shopGoodsByCarIdlist.getSell_id());
		shopCar.setCar_gnum(goodsNum);  //carnum
		shopCar.setCreationDate(new Date());
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if(shopCarService.insertShopCar(shopCar)){
			System.out.println("成功加入购物车");
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "failed");
		}
		return resultMap;
	}
	
	
	/*
	 * 商品加入购物车请求
	 */
	@RequestMapping(value = "/insertShopCarOne", method = RequestMethod.GET)
	@ResponseBody
	public Object insertShopCarOne(@RequestParam Integer goodsId,ShopCar shopCar, HttpSession session) throws Exception {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		int userid = buyUser.getId();
		System.out.println("传过来的值"+userid);
		System.out.println("商品传过来的值"+goodsId);
		ShopGoods shopGoodsByCarIdlist = shopCarService.getShopGoodsByGoodsId(goodsId);
		System.out.println("商品sell"+shopGoodsByCarIdlist);
		shopCar.setGoods_id(goodsId);
		shopCar.setBuy_id(userid);
		shopCar.setSell_id(shopGoodsByCarIdlist.getSell_id());
		shopCar.setCar_gnum(1);  //carnum
		shopCar.setCreationDate(new Date());
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if(shopCarService.insertShopCar(shopCar)){
			System.out.println("成功加入购物车");
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "failed");
		}
		return resultMap;
	}

}
