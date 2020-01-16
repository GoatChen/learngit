package com.six.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.six.pojo.ShopAddress;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopComment;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopLike;
import com.six.service.ShopGoodsDetailService;
import com.six.service.ShopIndexService;
import com.six.tools.Constants;

@Controller
@RequestMapping(value="/shopGoodsDetail")
public class ShopGoodsDetailController {

	@Resource
	private ShopGoodsDetailService shopGoodsDetailService;
	
	@Resource
	private ShopIndexService shopIndexService;
	
	//买家给评论点赞和点灭
	@RequestMapping(value="/isOrNotLike")
	@ResponseBody
	public Object isOrNotLike(HttpSession session, @RequestParam Integer comment_id, @RequestParam Integer isLike){
		System.out.println("*************进入isOrNotLike方法");
		System.out.println("*************comment_id:"+comment_id);
		System.out.println("*************isLike:"+isLike);
		
		JSONObject result = new JSONObject();
		Integer flag1, flag2;
		
		ShopBuyUser buyUser = (ShopBuyUser)session.getAttribute(Constants.BUY_USER_SESSION);
		buyUser.setPassword("");
		ShopComment shopComment;
		
		ShopLike shopLike = shopIndexService.selectShopLikeByBuyIdAndCommentId(buyUser.getId(), comment_id);	//判定该用户是否点赞过此评论
		if(shopLike != null) {	//点赞过
			System.out.println("*************shopLike != null");
			
			if(isLike == 1) {	//取消赞
				isLike = 0;
				flag1 = shopGoodsDetailService.updateShopLikeByBuyIdAndCommentId(isLike, buyUser.getId(), comment_id);
				flag2 = shopGoodsDetailService.updateShopCommentSubById(comment_id);
			}
			else {		//点赞
				isLike = 1;
				flag1 = shopGoodsDetailService.updateShopLikeByBuyIdAndCommentId(isLike, buyUser.getId(), comment_id);
				flag2 = shopGoodsDetailService.updateShopCommentAddById(comment_id);
			}
		}
		else {		//点赞过
			System.out.println("*************shopLike is null");
			
			isLike = 1;
			Integer createdBy = 1;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			Date creationDate = new Date();		//获取当前日期
			System.out.println("**************creationDate:"+creationDate);
			
			try {
				creationDate = sdf.parse(sdf.format(new Date()));
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			flag1 = shopGoodsDetailService.insertShopLike(isLike, buyUser.getId(), comment_id, createdBy, creationDate); //插入一条ShopLike数据
			flag2 = shopGoodsDetailService.updateShopCommentAddById(comment_id);
		}
		
		if(flag1 > 0) {
			if(flag2 > 0) {
				System.out.println("*************更新ShopLike和ShopComment成功！");
				
				shopComment = shopGoodsDetailService.selectShopCommentById(comment_id);
				result.put("d", shopComment.getLikeNum());
				result.put("l", isLike);
			}
			else {
				System.out.println("*************更新ShopComment失败！");
				
				result.put("d", null);
				result.put("l", null);
			}
		}
		else {
			System.out.println("*************更新ShopLike失败！");
			
			result.put("d", null);
			result.put("l", null);
		}

		return result.toJSONString();
	}
	
	//进入商品购买页
	@RequestMapping(value="/toGoodsBuy")
	public String toGoodsBuy(HttpSession session, HttpServletRequest request, @RequestParam Integer goodsId, @RequestParam Integer goodsNum) {

		System.out.println("*************进入toGoodsBuy方法");
		
		ShopBuyUser shopBuyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);	//获取买家session

		if(shopBuyUser != null) {
			System.out.println("*************买家已登录！");
			
			shopBuyUser.setPassword("");
			List<ShopAddress> shopAddressList = shopGoodsDetailService.selectShopAddressByBuyId(shopBuyUser.getId());	//获取卖家收货地址列表
				
			ShopGoods shopGoods = shopIndexService.selectGoodsById(goodsId);
			
			float totalPrice = shopGoods.getPrice() * goodsNum;
			
			if(shopAddressList != null && shopAddressList.size() > 0) {
				request.setAttribute("shopAddressList", shopAddressList);
			}
			else {
				request.setAttribute("shopAddressList", null);
			}
			request.setAttribute("shopGoods", shopGoods);
			request.setAttribute("goodsNum", goodsNum);
			request.setAttribute("totalPrice", totalPrice);
			request.setAttribute("viewName", "商品购买页");
			
			return "goodsBuy";
		}
		else {
			System.out.println("*************没有买家登录！");
			
			return "redirect:/shopLoginRegister/toLogin";
		}
		
	}
	
	//商品购买，下订单
	@RequestMapping(value="/goodsBuy")
	public String goodsBuy(HttpSession session, @RequestParam Integer addressId, @RequestParam Integer goodsId, @RequestParam Integer goodsNum) {
		System.out.println("*************进入goodsBuy方法");

		ShopBuyUser shopBuyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);	//获取买家session 得到买家
		shopBuyUser.setPassword("");

		System.out.println("*************shopBuyUser.id:"+shopBuyUser.getId());		//买家id
		System.out.println("*************addressId:"+addressId);	//地址ID
		System.out.println("*************goodsId:"+goodsId);		//商品ID
		System.out.println("*************goodsNum:"+goodsNum);	//商品数
		
		ShopAddress shopAddress = shopGoodsDetailService.selectShopAddressById(addressId);	//得到地址表
		ShopGoods shopGoods = shopIndexService.selectGoodsById(goodsId);	//得到商品表

		Integer createdBy = 1;	//创建者id
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");	//得到创建者创建时间
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date creationDate = new Date();		//获取当前日期
		Date date = new Date();		//获取当前日期
		try {
			creationDate = sdf.parse(sdf.format(new Date()));
			date = sdf1.parse(sdf1.format(new Date()));
			System.out.println("**************creationDate:"+sdf.format(creationDate));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		String code = sdf.format(creationDate)+goodsId.toString()+shopBuyUser.getId().toString();	//得到订单编码
		float totalPrice = shopGoods.getPrice() * goodsNum;	//得到总价
		Integer isSend = 0;	//发货状态（没发货）
		Integer isReceive = 0;	//收货状态（没收货）
		Integer afterSell = 0;	//售后状态（无售后）
		
		
		Integer flag = shopGoodsDetailService.insertShopOrder(code, 
															  shopBuyUser.getPhone(), shopBuyUser.getName(), shopAddress.getAddress(), 
															  goodsNum, totalPrice, 
															  isSend, isReceive, afterSell, 
															  goodsId, shopBuyUser.getId(), shopGoods.getSell_id(), 
															  createdBy, date);
		if(flag > 0) {
			System.out.println("**************创建订单成功！");
			
			return "redirect:/shopIndex/toGoodsDetail?goodsId="+goodsId.toString();
		}
		else {
			System.out.println("**************创建订单失败！");
			
			return "redirect:/shopIndex/goodsBuy?addressId="+addressId.toString()+"&goodsId="+goodsId.toString()+"&goodsNum="+goodsNum.toString();
		}
		
	}
	
}
