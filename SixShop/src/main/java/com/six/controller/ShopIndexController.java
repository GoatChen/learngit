package com.six.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopComment;
import com.six.pojo.ShopGoods;
import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopLike;
import com.six.pojo.ShopSellUser;
import com.six.service.ShopIndexService;
import com.six.tools.Constants;
import com.six.tools.GoodsPageSupport;
import com.six.tools.PageSupport;

@Controller
@RequestMapping(value="/shopIndex")
public class ShopIndexController {
	
	@Resource
	private ShopIndexService shopIndexService;
	
	@RequestMapping(value="/toIndex")
	public String toIndex(HttpServletRequest request) {
		System.out.println("*************进入toIndex方法");

		request.setAttribute("viewName", "主页");				//设置视图名称
		return "index";
	}
	
	//用ajax得到二、三级商品分类
	@RequestMapping(value="/getShopGoodsCategory")
	@ResponseBody
	public Object getShopGoodsCategory(@RequestParam Integer category_id) {
		System.out.println("*************进入getShopGoodsCategory方法");
		System.out.println("*************category_id:"+category_id);

		if(category_id != null) {
			JSONObject result = new JSONObject();
			
			List<ShopGoodsCategory> shopGoodsCategory2List = shopIndexService.selectShopGoodsCategoryByCategoryId(category_id);
			System.out.println("*************shopGoodsCategory2List:"+shopGoodsCategory2List);
			
			if(shopGoodsCategory2List != null) {
				System.out.println("*************shopGoodsCategory2List is not null");
				List<List<ShopGoodsCategory>> shopGoodsCategory3ListList = new ArrayList();
				
				for(ShopGoodsCategory category : shopGoodsCategory2List) {
					List<ShopGoodsCategory> shopGoodsCategories3List = shopIndexService.selectShopGoodsCategoryByCategoryId(category.getId());
					System.out.println("*************shopGoodsCategories3List:"+shopGoodsCategories3List);
					
					shopGoodsCategory3ListList.add(shopGoodsCategories3List);
				}
				
				result.put("shopGoodsCategory2List", shopGoodsCategory2List);
				result.put("shopGoodsCategory3ListList", shopGoodsCategory3ListList);
				
				return result.toJSONString();
			}
			else {
				System.out.println("*************shopGoodsCategory2List is null");
				
				result.put("shopGoodsCategory2List", null);
				return result.toJSONString();
			}
		}
		else {
			return null;
		}
	}
	
	//根据name、category1_id、category1_id、category1_id、currentPageNo、pageSize分页模糊查询shopGoods
	@RequestMapping(value="/selectShopGoods")
	public String selectShopGoods(HttpServletRequest request, 
								  @RequestParam(required=false) String name, 
								  @RequestParam(required=false) Integer category1_id, 
								  @RequestParam(required=false) Integer category2_id, 
								  @RequestParam(required=false) Integer category3_id, 
								  @RequestParam(required=false) Integer currentPageNo, 
								  @RequestParam(required=false) String orderName, 
								  @RequestParam(required=false) String highOrLow) {
		System.out.println("*************进入selectShopGoods方法");
		System.out.println("*************shopGoods:");
		System.out.println("*************name:"+name);						//商品名
		System.out.println("*************category1_id:"+category1_id);		//一级分类id
		System.out.println("*************category2_id:"+category2_id);		//二级分类id
		System.out.println("*************category3_id:"+category3_id+"\n");	//三级分类id
		System.out.println("*************currentPageNo:"+currentPageNo);	//当前页码
		System.out.println("*************orderName:"+orderName);			//排序类型
		System.out.println("*************highOrLow:"+highOrLow);			//升序or降序
		
		GoodsPageSupport page = new GoodsPageSupport();
		System.out.println("*************pageSize:"+page.getPageSize());	//每页商品数
		List<ShopGoods> shopGoodsList = new ArrayList<ShopGoods>();			//初试化shopGoodsList(查询到的商品总数量)
		List<ShopGoods> shopGoodsList2 = new ArrayList<ShopGoods>();		//初试化shopGoodsList2(查询到的所有商品)
		
		if(orderName == null || orderName =="") {
			orderName = "creationDate";
		}
		if(highOrLow == null || highOrLow =="") {
			highOrLow = "DESC";
		}
		
		//查询商品总数量
		if(name != null && name != "") {
			System.out.println("*************查询商品总数量");
			//将name字符串转换为多个字符串（每个字符 = 一个字符串）
			System.out.println("*************name != null");
			
			char n[] = name.toCharArray();
			for(int i=0; i<n.length; i++) {
				String s = String.valueOf(n[i]);
				List<ShopGoods> shopGoodsList1 = shopIndexService.getShopGoodsCount(s, category1_id, category2_id, category3_id);
				//筛选掉重复商品
				for(ShopGoods shopGoods1 : shopGoodsList1) {
					boolean flag = true;
					for(ShopGoods shopGoods : shopGoodsList) {
						if(shopGoods1.getId() == shopGoods.getId()) {
							flag = false;
						}
					}
					if(flag) {
						shopGoodsList.add(shopGoods1);
					}
				}
			}
			System.out.println("*************shopGoodsList.size:"+shopGoodsList.size());
			page.setTotalCount(shopGoodsList.size());  //得到查询到的总商品数
		}
		else {
			System.out.println("*************name is null");
			
			shopGoodsList = shopIndexService.getShopGoodsCount(name, category1_id, category2_id, category3_id);
			
			System.out.println("*************shopGoodsList.size:"+shopGoodsList.size());
			page.setTotalCount(shopGoodsList.size());  //得到查询到的总商品数
		}
		
		if(currentPageNo != null && currentPageNo > 0){	 //设置当前页数
			if(currentPageNo <= page.getTotalPageCount()){   //得到的当前页数不能大于总页数
				page.setCurrentPageNo(currentPageNo);  		 //得到当前页
			}
		}
		System.out.println("*************currentPageNo:"+page.getCurrentPageNo());
		System.out.println("*************totalPageCount:"+page.getTotalPageCount());
		
		
		//查询所有商品
		if(name != null && name != "") {
			System.out.println("*************查询所有商品");
			//将name字符串转换为多个字符串（每个字符 = 一个字符串）
			System.out.println("*************name != null");
			
			char n1[] = name.toCharArray();
			for(int i=0; i<n1.length; i++) {
				String s = String.valueOf(n1[i]);
				List<ShopGoods> shopGoodsList3 = shopIndexService.selectShopGoods(s, category1_id, category2_id, category3_id, orderName, highOrLow, (page.getCurrentPageNo()-1)*page.getPageSize(), page.getPageSize());
				//筛选掉重复商品
				for(ShopGoods shopGoods3 : shopGoodsList3) {
					boolean flag = true;
					for(ShopGoods shopGoods2 : shopGoodsList2) {
						if(shopGoods3.getId() == shopGoods2.getId()) {
							flag = false;
						}
					}
					if(flag) {
						shopGoodsList2.add(shopGoods3);
					}
				}
			}
			System.out.println("*************shopGoodsList2.size:"+shopGoodsList2.size());
	
			if(shopGoodsList2.size() > 0) {
				//对商品排序！！！！！！！！！！！！！！！！！！
				if(orderName != null && orderName != "") {
					if(orderName.equals("price")) {		//按价格排序
						if(highOrLow.equals("ASC")) {	//升序
							for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
								for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
									if(shopGoodsList2.get(j).getPrice() > shopGoodsList2.get(j+1).getPrice()) {	//价格大 则交换
										ShopGoods t = shopGoodsList2.get(j+1);
										shopGoodsList2.remove(j+1);
										shopGoodsList2.add(j,t);
									}
								}
							}
						}
						else {		//降序
							for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
								for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
									if(shopGoodsList2.get(j).getPrice() < shopGoodsList2.get(j+1).getPrice()) {	//价格小 则交换
										ShopGoods t = shopGoodsList2.get(j+1);
										shopGoodsList2.remove(j+1);
										shopGoodsList2.add(j,t);
									}
								}
							}
						}
					}
					else if(orderName.equals("score")) {		//按评分降序
						for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
							for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
								if(shopGoodsList2.get(j).getScore() < shopGoodsList2.get(j+1).getScore()) {	//评分小 则交换
									ShopGoods t = shopGoodsList2.get(j+1);
									shopGoodsList2.remove(j+1);
									shopGoodsList2.add(j,t);
								}
							}
						}
					}
					else {		//按日期降序（默认）
						for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
							for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
								if(shopGoodsList2.get(j).getCreationDate().compareTo(shopGoodsList2.get(j+1).getCreationDate()) < 0) {	//日期小 则交换
									ShopGoods t = shopGoodsList2.get(j+1);
									shopGoodsList2.remove(j+1);
									shopGoodsList2.add(j,t);
								}
							}
						}
					}
				}
				else {		//按日期降序（默认）
					for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
						for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
							if(shopGoodsList2.get(j).getCreationDate().compareTo(shopGoodsList2.get(j+1).getCreationDate()) < 0) {	//日期小 则交换
								ShopGoods t = shopGoodsList2.get(j+1);
								shopGoodsList2.remove(j+1);
								shopGoodsList2.add(j,t);
							}
						}
					}
				}
				
				request.setAttribute("shopGoodsList", shopGoodsList2);
			}
			else {	//没有查询到符合条件的商品
				request.setAttribute("shopGoodsList", null);
			}
		}
		else {
			System.out.println("*************name is null");
			
			shopGoodsList2 = shopIndexService.selectShopGoods(name, category1_id, category2_id, category3_id, orderName, highOrLow, (page.getCurrentPageNo()-1)*page.getPageSize(), page.getPageSize());
			
			System.out.println("*************shopGoodsList2.size:"+shopGoodsList2.size());
			
			if(shopGoodsList2.size() > 0) {
				//对商品排序！！！！！！！！！！！！！！！！！！
				if(orderName != null && orderName != "") {
					if(orderName.equals("price")) {		//按价格排序
						if(highOrLow.equals("ASC")) {	//升序
							for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
								for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
									if(shopGoodsList2.get(j).getPrice() > shopGoodsList2.get(j+1).getPrice()) {	//价格大 则交换
										ShopGoods t = shopGoodsList2.get(j+1);
										shopGoodsList2.remove(j+1);
										shopGoodsList2.add(j,t);
									}
								}
							}
						}
						else {		//降序
							for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
								for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
									if(shopGoodsList2.get(j).getPrice() < shopGoodsList2.get(j+1).getPrice()) {	//价格小 则交换
										ShopGoods t = shopGoodsList2.get(j+1);
										shopGoodsList2.remove(j+1);
										shopGoodsList2.add(j,t);
									}
								}
							}
						}
					}
					else if(orderName.equals("score")) {		//按评分降序
						for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
							for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
								if(shopGoodsList2.get(j).getScore() < shopGoodsList2.get(j+1).getScore()) {	//评分小 则交换
									ShopGoods t = shopGoodsList2.get(j+1);
									shopGoodsList2.remove(j+1);
									shopGoodsList2.add(j,t);
								}
							}
						}
					}
					else {		//按日期降序（默认）
						for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
							for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
								if(shopGoodsList2.get(j).getCreationDate().compareTo(shopGoodsList2.get(j+1).getCreationDate()) < 0) {	//日期小 则交换
									ShopGoods t = shopGoodsList2.get(j+1);
									shopGoodsList2.remove(j+1);
									shopGoodsList2.add(j,t);
								}
							}
						}
					}
				}
				else {		//按日期降序（默认）
					for(int i=0; i<shopGoodsList2.size(); i++) {	//从小到大遍历
						for(int j=0; j<shopGoodsList2.size()-i-1; j++) {
							if(shopGoodsList2.get(j).getCreationDate().compareTo(shopGoodsList2.get(j+1).getCreationDate()) < 0) {	//日期小 则交换
								ShopGoods t = shopGoodsList2.get(j+1);
								shopGoodsList2.remove(j+1);
								shopGoodsList2.add(j,t);
							}
						}
					}
				}
				
				request.setAttribute("shopGoodsList", shopGoodsList2);
			}
			else {	//没有查询到符合条件的商品
				request.setAttribute("shopGoodsList", null);
			}
		}
		
		if(category1_id != null) {
			request.setAttribute("category1_id", category1_id);
		}
		if(category2_id != null) {
			request.setAttribute("category2_id", category2_id);
		}
		if(category3_id != null) {
			request.setAttribute("category3_id", category3_id);
		}
		if(name != null || name != "") {
			request.setAttribute("name", name);
		}
		if(orderName != null || orderName != "") {
			request.setAttribute("orderName", orderName);	//排序名：creationDate priceASC priceDESC score
		}
		if(highOrLow != null || highOrLow != "") {
			request.setAttribute("highOrLow", highOrLow);	//排序方式
		}
		request.setAttribute("totalPageCount", page.getTotalPageCount());	//商品总页数
		request.setAttribute("currentPageNo", page.getCurrentPageNo());		//当前页数
		request.setAttribute("pageSize", page.getPageSize());				//每页商品数
		
		request.setAttribute("viewName", "搜索页");				//设置视图名称
		return "goodsSelect";
	}
	
	//去商品单例页
	@RequestMapping(value="/toGoodsDetail")
	public String toGoodsDetail(HttpServletRequest request, HttpSession session, @RequestParam Integer goodsId) {
		System.out.println("*************进入toGoodsDetail方法");
		
		ShopGoods shopGoods = shopIndexService.selectGoodsById(goodsId);	//获取商品
		if(shopGoods != null) {

			System.out.println("*************shopGoods != null");
			
			ShopSellUser shopSellUser = shopIndexService.selectSellById(shopGoods.getSell_id());	//获取卖家用户
			shopSellUser.setPassword("");
			
			ShopGoodsCategory category1 = shopIndexService.selectShopGoodsCategoryById(shopGoods.getCategory1_id());	//获取一级分类
			ShopGoodsCategory category2 = shopIndexService.selectShopGoodsCategoryById(shopGoods.getCategory2_id());	//获取二级分类
			ShopGoodsCategory category3 = shopIndexService.selectShopGoodsCategoryById(shopGoods.getCategory3_id());	//获取三级分类
			
			List<ShopComment> shopCommentList = shopIndexService.selectShopCommentById(goodsId);	//获取该商品所有评论
			if(shopCommentList != null && shopCommentList.size() > 0) {
				System.out.println("*************shopCommentList != null");
				System.out.println("*************shopCommentList.size:"+shopCommentList.size());

				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				
				for(int i=0; i<shopCommentList.size(); i++) {	//设置每条评论的买家code，和评论时间
					ShopBuyUser shopBuyUser = shopIndexService.selectShopBuyUserByBuyId(shopCommentList.get(i).getBuy_id());
					shopCommentList.get(i).setBuyCode(shopBuyUser.getCode());
					Date creationDate = null;
					try {
						creationDate = sdf.parse(sdf.format(shopCommentList.get(i).getCreationDate()));
						shopCommentList.get(i).setCommentDate(sdf.format(creationDate));
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
				//根据是否有买家登陆（BUYUSER_SESSION），显示该买家是否点赞
				//有买家登陆
				if(session.getAttribute(Constants.BUY_USER_SESSION) !=null) {
					System.out.println("*************BUY_USER_SESSION != null");
					
					ShopBuyUser shopBuyUser = (ShopBuyUser)session.getAttribute(Constants.BUY_USER_SESSION);
					shopBuyUser.setPassword("");
					for(int j=0; j<shopCommentList.size(); j++) {
						ShopLike shopLike = shopIndexService.selectShopLikeByBuyIdAndCommentId(shopBuyUser.getId(), shopCommentList.get(j).getId());
						
						if(shopLike != null) {
							if(shopLike.getIsLike() == 1) {
								shopCommentList.get(j).setIsLike(1);
							}
							else {
								shopCommentList.get(j).setIsLike(0);
							}
						}
						else {
							shopCommentList.get(j).setIsLike(0);
						}
						
					}
				}
				//没有买家登陆
				else {
					System.out.println("*************BUY_USER_SESSION is null");
					
					for(int h=0; h<shopCommentList.size(); h++) {
						shopCommentList.get(h).setIsLike(0);
					}
				}
				
				request.setAttribute("shopCommentList", shopCommentList);
			}
			else {
				System.out.println("*************shopCommentList is null");
				
				request.setAttribute("shopCommentList", null);
			}
			
			request.setAttribute("shopGoods", shopGoods);
			request.setAttribute("sellName", shopSellUser.getSellName());
			
			request.setAttribute("category1", category1.getCategoryName());
			request.setAttribute("category2", category2.getCategoryName());
			request.setAttribute("category3", category3.getCategoryName());
			
			request.setAttribute("viewName", "商品页 "+shopGoods.getName());
			
			return "goodsDetail";
		}
		else {
			System.out.println("*************shopGoods is null");
			return "error";
		}
		
	}
	
}
