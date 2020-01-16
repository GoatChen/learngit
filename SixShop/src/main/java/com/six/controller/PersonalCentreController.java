package com.six.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.six.pojo.Page;
import com.six.pojo.ShopAddress;
import com.six.pojo.ShopAfterSell;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopComment;
import com.six.pojo.ShopOrder;
import com.six.service.BuyUserShopCommentService;
import com.six.service.BuyUserShopGoodsService;
import com.six.service.ShopAddressInsertOrUpdateService;
import com.six.service.ShopAfterSellUserService;
import com.six.service.ShopBuyUserService;
import com.six.service.ShopOrderUserService;
import com.six.tools.Constants;
import com.six.tools.PageSupport;

@Controller
@RequestMapping("/shopBuyUser")
public class PersonalCentreController {
	// 事务
	@Autowired
	private ShopBuyUserService shopBuyUserService;
	@Autowired
	private ShopOrderUserService shopOrderUserService;
	@Autowired
	private ShopAfterSellUserService shopAfterSellUserService;
	@Autowired
	private BuyUserShopCommentService buyUserShopCommentService;
	@Autowired
	private BuyUserShopGoodsService buyUserShopGoodsService;
	@Autowired
	private ShopAddressInsertOrUpdateService shopAddressInsertOrUpdateService;
	/**
	 * 查询出用户的所有信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/shopSellUserIndex")
	public String shopSellUserIndex(HttpSession session, ModelMap map) {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		System.out.println("----------buyUser.getId()" + buyUser.getId());
		Object a = shopBuyUserService.selectShopBuyUserById(buyUser.getId());
		System.out.println("----------查出来是否为空" + a);
		map.put("shop_buyUser", a);
		return "personalCentre/personalCentre";
	}

	/**
	 * 根据id查询出该用户信息并跳转到修改信息页面
	 * 
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/shopBuyUserUpdateUser")
	public String shop_buyUserUpdate(int id, ModelMap map) {
		Object a = shopBuyUserService.selectShopBuyUserById(id);
		map.put("up_user", a);
		return "personalCentre/shopBuyUserUpdateUser";
	}


	/**
	 * 查看余额
	 * 
	 * @param session
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/shopBuyUserUpdateMoney")
	public String shopBuyUserUpdateMoney(HttpSession session, ModelMap map) {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		Object a = shopBuyUserService.shopBuyUserMoney(buyUser.getId());
		map.put("money", a);
		return "personalCentre/balance";
	}
	
	/**
	 * 跳转到充值
	 * 
	 * @return
	 */
	@RequestMapping(value="/updateBalance")
	public String updateBalance() {
		return "personalCentre/updateBalance";
	}

	/**
	 * 根据id跳转到积分页面
	 * 
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/shopBuyUserUpdatePoints")
	public String shopBuyUserUpdatePoints(HttpSession session, int id, ModelMap map) {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		//查出当前积分
		int points = shopBuyUserService.selectShopBuyUserByPoints(buyUser.getId());
		/*Object a = shopBuyUserService.selectShopBuyUserById(id);*/
		map.put("points", points);
		return "personalCentre/integration";
	}

	/**
	 * 更新用户信息
	 * 
	 * @param shopBuyUser
	 * @return
	 */
	@RequestMapping(value="/shopSellUsertoupdateUser")
	public String shopSellUsertoupdateUser(ShopBuyUser shopBuyUser) {
		System.out.println("----------shopBuyUser.getId()" + shopBuyUser.getId());
		int i = shopBuyUserService.shopSellUsertoupdateUser(shopBuyUser);
		System.out.println("----------i的值" + i);
		if (i > 0) {
			return "forward:shopSellUserIndex";
		} else {
			return "forward:shopBuyUserUpdate";
		}
	}

	/**
	 * 更新余额
	 * 
	 * @param id
	 * @param money
	 * @return
	 */
	@RequestMapping(value="/shopSellUsertoupdateMoney")
	public String shopSellUsertoupdateMoney(int id, float money) {
		//查出余额
		float money2=shopBuyUserService.shopBuyUserMoney(id);
		System.out.println("----------money的值" + money2);
		System.out.println("----------id的值" + id);
		int i = shopBuyUserService.shopSellUsertoupdateMoney(id, (money+money2));
		System.out.println("----------i的值" + i);
		if (i > 0) {
			return "forward:shopBuyUserUpdateMoney";
		} else {
			return "personalCentre/updateBalance";
		}
	}


	/**
	 * 查询出所有历史订单
	 * 
	 * @param buy_id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/getAllShopOrder")
	public String getAllShopOrder(HttpSession session, Model model,@RequestParam(value="currentPageNo",required=false) Integer currentPageNo) {
		PageSupport page = new PageSupport();
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		System.out.println("----------进入getAllShopOrder");
		// 获取所有历史订单总页数
		int totalCount = shopOrderUserService.selectIsReceiveAllCount(buyUser.getId());
		page.setTotalCount(totalCount);  //获取所有历史订单总页数
		if(currentPageNo != null && currentPageNo > 0){	 //设置当前页数
			if(currentPageNo <= page.getTotalPageCount()){   //得到的当前页数不能大于总页数
				page.setCurrentPageNo(currentPageNo);  		 //得到当前页
			}
		}
		System.out.println("----------totalCount的值"+totalCount);
    	System.out.println("----------总页数");
		//查询出所有历史订单
		List<ShopOrder> list = shopOrderUserService.getAllShopOrder(buyUser.getId(), (page.getCurrentPageNo()-1)*page.getPageSize(), page.getPageSize());
		for (ShopOrder s : list) {
			System.out.println("----------s.getIsReceive()的值" + s.getIsReceive());
		}
		
		model.addAttribute("list", list);
		model.addAttribute("pageSize", page.getPageSize());
		model.addAttribute("totalPageCount", page.getTotalPageCount());
		model.addAttribute("currentPageNo", page.getCurrentPageNo());
		return "personalCentre/shopBuyUserShopOrder";
	}
	
	/**
	 * 查出图片并跳转到修改头像页面
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/toUpdatePic")
	public String toUpdatePic(int id, ModelMap map){
		System.out.println("----------toUpdatePic");
		//查出图片
		String a=shopBuyUserService.selectToUpdatePic(id);
		System.out.println("----------a的值"+a);
		map.put("pic", a);
		return "personalCentre/updatePic";
	}

	/**
	 * 修改头像
	 * 
	 * @param request
	 * @param file1
	 * @param shopBuyUser
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping(value="/updatePic")
	public String updatePic(HttpSession session,HttpServletRequest request, @RequestParam("file1") MultipartFile file1,
			ShopBuyUser shopBuyUser) throws IllegalStateException, IOException {
		System.out.println("----------shopBuyUser.getId()的值" + shopBuyUser.getId());
		// 先处理文件
		// 1.项目的路径
		String path = request.getServletContext().getRealPath("/");
		// 2.获取文件名字
		String fileName = file1.getOriginalFilename();
		// 3.创建一个文件
		File newfile = new File(path + "upload", fileName);
		System.out.println("----------newfile"+newfile);
		// 4.CommonsMultipartFile对象的一个方法，将文件写入新创建的文件newfile对象里面
		file1.transferTo(newfile);
		String path2 = "/upload/" + fileName;
		shopBuyUser.setPicLocalPath(path2);
		System.out.println("----------shopBuyUser.getPicLocalPath()" + shopBuyUser.getPicLocalPath());
		if (shopBuyUserService.updatePic(shopBuyUser) > 0) {
			System.out.println("添加成功");
			return "forward:shopSellUserIndex";
		} else {
			System.out.println("添加失败");
			return "personalCentre/error";
		}

	}

	/**
	 * 查出未发货的订单
	 * 
	 * @param buy_id
	 * @param start
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/getIsReceive")
	public String getIsReceive(HttpSession session, Model model,@RequestParam(value="currentPageNo",required=false) Integer currentPageNo) {
		PageSupport page = new PageSupport();
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
    	// 获取未发货总页数
    	int totalCount = shopOrderUserService.selectIsReceiveCount(buyUser.getId());
    	page.setTotalCount(totalCount);  //获取未发货总页数
    	if(currentPageNo != null && currentPageNo > 0){	 //设置当前页数
			if(currentPageNo <= page.getTotalPageCount()){   //得到的当前页数不能大于总页数
				page.setCurrentPageNo(currentPageNo);  		 //得到当前页
			}
		}
    	// 查出未发货的订单
    	List<ShopOrder> list = shopOrderUserService.getIsReceive(buyUser.getId(), (page.getCurrentPageNo()-1)*page.getPageSize(), page.getPageSize());
		
		model.addAttribute("list", list);
		model.addAttribute("pageSize", page.getPageSize());
		model.addAttribute("totalPageCount", page.getTotalPageCount());
		model.addAttribute("currentPageNo", page.getCurrentPageNo());
		return "personalCentre/shopBuyUserShopOrderIsReceive";
	}

	/**
	 * 根据id查出订单信息并跳转到未发货的退货信息页面
	 * 
	 * @param id
	 * @param shopAfterSell
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/getRetreat")
	public String getIsReceive(int id, ShopAfterSell shopAfterSell, ModelMap map) {
		// 根据id查出订单信息
		Object a = shopOrderUserService.getShorOrderIsReceive(id);
		System.out.println("----------id的值" + id);
		System.out.println("----------a的值" + a);
		map.put("retreat", a);
		return "personalCentre/shopAfterSellRetreat";
	}

	/**
	 * 根据id查出订单信息并跳转到已收货的退货信息页面
	 * 
	 * @param id
	 * @param shopAfterSell
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/getRetreatAlready")
	public String getIsReceiveAlready(int id, ShopAfterSell shopAfterSell, ModelMap map) {
		// 根据id查出订单信息
		Object a = shopOrderUserService.getShorOrderIsReceive(id);
		System.out.println("----------id的值" + id);
		System.out.println("----------a的值" + a);
		map.put("retreatAlready", a);
		return "personalCentre/shopAfterSellRetreatAlready";
	}

	/**
	 * 增加未发货退货订单
	 * 
	 * @param request
	 * @param file1
	 * @param shopAfterSell
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping(value="/shopAfterSellRetreatUpdate")
	public String shopAfterSellRetreatUpdate(HttpServletRequest request, @RequestParam("file1") MultipartFile file1,
			ShopAfterSell shopAfterSell) throws IllegalStateException, IOException {
		System.out.println("----------shopAfterSell.getTitle()" + shopAfterSell.getTitle());
		// 先处理文件
		// 1.项目的路径
		String path = request.getServletContext().getRealPath("/");
		// 2.获取文件名字
		String fileName = file1.getOriginalFilename();
		// 3.创建一个文件
		File newfile = new File(path + "upload", fileName);
		System.out.println("----------newfile的值" + newfile);
		// 4.CommonsMultipartFile对象的一个方法，将文件写入新创建的文件newfile对象里面
		file1.transferTo(newfile);
		// 将文件上传的路径给Goods对象
		String path2 = "/upload/" + fileName;
		shopAfterSell.setPicPath(path2);
		// 把退货信息插入数据库
		shopAfterSell.setAfterSell(1);
		int i = shopAfterSellUserService.shopAfterSellRetreatInsert(shopAfterSell);
		System.out.println("----------i的值:" + i);
		if (i > 0) {
			// 删除订单
			shopOrderUserService.shopAfterSellRetreatdelete(shopAfterSell.getOrder_id());
			System.out.println("删除成功");
			return "forward:getIsReceive";
		} else {
			return "personalCentre/shopAfterSellRetreat";
		}
	}

	/**
	 * 查出已收货订单
	 * 
	 * @param buy_id
	 * @param start
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/getIsReceiveAlready")
	public String getRetreatAlready(HttpSession session, Model model,@RequestParam(value="currentPageNo",required=false) Integer currentPageNo) {
		PageSupport page = new PageSupport();
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
    	// 获取已收货的订单总页数
    	int totalCount = shopOrderUserService.selectIsReceiveCountAlready(buyUser.getId());
    	page.setTotalCount(totalCount);  //得到查询到的已收货订单数
    	if(currentPageNo != null && currentPageNo > 0){	 //设置当前页数
			if(currentPageNo <= page.getTotalPageCount()){   //得到的当前页数不能大于总页数
				page.setCurrentPageNo(currentPageNo);  		 //得到当前页
			}
		}
    	// 查出已收货的订单
    	List<ShopOrder> list = shopOrderUserService.getIsReceiveAlready(buyUser.getId(), (page.getCurrentPageNo()-1)*page.getPageSize(), page.getPageSize());
		model.addAttribute("list", list);
		model.addAttribute("pageSize", page.getPageSize());
		model.addAttribute("totalPageCount", page.getTotalPageCount());
		model.addAttribute("currentPageNo", page.getCurrentPageNo());
		return "personalCentre/shopBuyUserShopOrderIsReceiveAlready";
	}
	
	/**
	 * 增加已收货退货订单
	 * 
	 * @param request
	 * @param file1
	 * @param shopAfterSell
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping(value="/shopAfterSellRetreatUpdateAlready")
	public String shopAfterSellRetreatUpdateAlready(HttpServletRequest request, @RequestParam("file1") MultipartFile file1,
			ShopAfterSell shopAfterSell) throws IllegalStateException, IOException {
		System.out.println("----------shopAfterSell.getTitle()" + shopAfterSell.getTitle());
		// 先处理文件
		// 1.项目的路径
		String path = request.getServletContext().getRealPath("/");
		// 2.获取文件名字
		String fileName = file1.getOriginalFilename();
		// 3.创建一个文件
		File newfile = new File(path + "upload", fileName);
		System.out.println("----------newfile的值" + newfile);
		// 4.CommonsMultipartFile对象的一个方法，将文件写入新创建的文件newfile对象里面
		file1.transferTo(newfile);
		// 将文件上传的路径给Goods对象
		String path2 = "/upload/" + fileName;
		shopAfterSell.setPicPath(path2);
		shopAfterSell.setAfterSell(1);
		// 把退货信息插入数据库
		int i = shopAfterSellUserService.shopAfterSellRetreatInsert(shopAfterSell);
		System.out.println("----------i的值:" + i);
		if (i > 0) {
			// 删除订单
			shopOrderUserService.shopAfterSellRetreatdelete(shopAfterSell.getOrder_id());
			System.out.println("删除成功");
			return "forward:getIsReceiveAlready";
		} else {
			return "personalCentre/shopAfterSellRetreat";
		}
	}

	/**
	 * 根据id查出订单信息并跳转到评论页面
	 * 
	 * @param id
	 * @param shopComment
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/getUserComment")
	public String getUserComment(int buy_id, ModelMap map) {
		Object a = shopOrderUserService.getUserComment(buy_id);
		System.out.println("----------a的值" + a);
		map.put("comment", a);
		return "personalCentre/userComment";
	}

	/**
	 * 插入评论信息
	 * 
	 * @param shopComment
	 * @return
	 */
	@RequestMapping(value="/userCommentInsert")
	public String userCommentInsert(HttpSession session, HttpServletRequest request, @RequestParam("file1") MultipartFile file1,
			ShopComment shopComment) throws IllegalStateException, IOException {
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		// 先处理文件
		// 1.项目的路径
		String path = request.getServletContext().getRealPath("/");
		// 2.获取文件名字
		String fileName = file1.getOriginalFilename();
		// 3.创建一个文件
		File newfile = new File(path + "upload", fileName);
		System.out.println(newfile);
		// 4.CommonsMultipartFile对象的一个方法，将文件写入新创建的文件newfile对象里面
		file1.transferTo(newfile);
		// 将文件上传的路径给Goods对象
		String path2 = "/upload/" + fileName;
		shopComment.setPicPath(path2);
		// 插入评论信息
		int i = buyUserShopCommentService.userCommentInsert(shopComment);
		// 求评分的平均分
		float scoreAvg = buyUserShopCommentService.selectScoreAvg(shopComment.getGoods_id());
		System.out.println("----------scoreAvg的值" + scoreAvg);
		// 更新评分
		buyUserShopGoodsService.updateBuyUserShopGoods(scoreAvg, shopComment.getGoods_id());
		//查出当前积分
		int points = shopBuyUserService.selectShopBuyUserByPoints(buyUser.getId());
		int points2=points+10;
		//更新积分
		shopBuyUserService.updateShopBuyUserByPoints(points2,buyUser.getId());
		System.out.println("----------i的值:" + i);
		if (i > 0) {
			return "forward:getIsReceiveAlready";
		} else {
			return "personalCentre/userComment";
		}
	}

	/**
	 * 跳转增加或修改收货地址页面
	 * 
	 * @param buy_id
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/toAddress")
	public String toAddress(HttpSession session, Model model,@RequestParam(value="currentPageNo",required=false) Integer currentPageNo) {
		PageSupport page = new PageSupport();
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
    	// 获取所有地址总页数
    	int totalCount = shopAddressInsertOrUpdateService.selectAddressAllCount(buyUser.getId());
    	page.setTotalCount(totalCount);  //获取所有地址总页数
    	if(currentPageNo != null && currentPageNo > 0){	 //设置当前页数
			if(currentPageNo <= page.getTotalPageCount()){   //得到的当前页数不能大于总页数
				page.setCurrentPageNo(currentPageNo);  		 //得到当前页
			}
		}
    	System.out.println("----------totalCount的值"+totalCount);
    	// 查询出所有地址
    	List<ShopAddress> list = shopAddressInsertOrUpdateService.selectAddress(buyUser.getId(), (page.getCurrentPageNo()-1)*page.getPageSize(), page.getPageSize());
    	System.out.println("----------list的值"+list);
		model.addAttribute("list", list);
		model.addAttribute("pageSize", page.getPageSize());
		model.addAttribute("totalPageCount", page.getTotalPageCount());
		model.addAttribute("currentPageNo", page.getCurrentPageNo());
		return "personalCentre/shopBuyUserAddress";
	}
	
	/**
	 * 根据id查出该地址并返回到修改页面
	 * 
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/toUpdateBuyUserAddress")
	public String toUpdateBuyUserAddress(int id, ModelMap map) {
		Object a = shopAddressInsertOrUpdateService.toUpdateBuyUserAddress(id);
		map.put("address", a);
		return "personalCentre/shopBuyUserAddressUpdate";
	}
	
	/**
	 * 更新地址
	 * 
	 * @param shopAdress
	 * @return
	 */
	@RequestMapping(value="/updateBuyUserAddress")
	public String updateBuyUserAddress(ShopAddress shopAdress) {
		System.out.println("----------shopBuyUser.getId()" + shopAdress.getId());
		int i = shopAddressInsertOrUpdateService.updateBuyUserAddress(shopAdress);
		System.out.println("----------i的值" + i);
		if (i > 0) {
			return "forward:toAddress";
		} else {
			return "personalCentre/shopBuyUserAddressUpdate";
		}
	}
	
	/**
	 * 修改默认地址
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/isDefaultAddress")
	public String isDefaultAddress(int id) {
		//把所有地址改为不默认
		int a=shopAddressInsertOrUpdateService.isDefaultAllAddress();
		if(a>0){
			int i = shopAddressInsertOrUpdateService.isDefaultAddress(id);
			if(i>0){
				System.out.println("----------已经修改");
				return "forward:toAddress";
			}else{
				System.out.println("----------修改失败");
				return "personalCentre/shopBuyUserAddress";
			}
		}else{
			return "personalCentre/shopBuyUserAddress";
		}
		
	}
	
	/**
	 * 跳转到增加地址页面
	 * 
	 * @return
	 */
	@RequestMapping(value="/toInsertAddress")
	public String toInsertAddress(){
		return "personalCentre/shopBuyUserAddressInsert";
	}
	
	/**
	 * 增加地址
	 * 
	 * @param session
	 * @param shopAddress
	 * @return
	 */
	@RequestMapping(value="/insertAddress")
	public String insertAddress(HttpSession session,ShopAddress shopAddress){
		ShopBuyUser buyUser = (ShopBuyUser) session.getAttribute(Constants.BUY_USER_SESSION);
		System.out.println("----------buyUser.getId()"+buyUser.getId());
		shopAddress.setBuy_id(buyUser.getId());
		shopAddress.setIsDefault(0);
		int i=shopAddressInsertOrUpdateService.insertAddress(shopAddress);
		if(i>0){
			System.out.println("----------已经修改");
			return "forward:toAddress";
		}else{
			System.out.println("----------修改失败");
			return "personalCentre/shopBuyUserAddressInsert";
		}
	}
	
	/**
	 * 删除地址
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/toDeleteBuyUserAddress")
	public String toDeleteBuyUserAddress(int id){
		int i=shopAddressInsertOrUpdateService.toDeleteBuyUserAddress(id);
		if(i>0){
			System.out.println("----------已经删除");
			return "forward:toAddress";
		}else{
			System.out.println("----------修改删除");
			return "personalCentre/shopBuyUserAddressInsert";
		}
	}
	
}
