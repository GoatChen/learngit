package com.six.controller.backend;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.six.pojo.ShopGoodsCategory;
import com.six.pojo.ShopGoodsStorage;
import com.six.service.backend.ShopCategoryService;
import com.six.service.backend.ShopCheckService;
import com.six.tools.Constants;
import com.six.tools.PageSupport;


/**
 * 
 * @author 
 * @description: 管理员的控制器
 **/
@Controller
@RequestMapping("/adminuser")
public class AdminCheckController {
	
	@Autowired
	private ShopCheckService shopCheckService;
	@Autowired
	private ShopCategoryService shopCategoryService;
	
	//管理员主页
	@RequestMapping("/main")
	public String inset() {
		return "adminUser/main";
	}
	
	//管理员退出登录
	@RequestMapping("/logout")
	public String loginout() {
		return "login";
	}
	
	//进入管理审核商品表
	@RequestMapping("/goodslist")
	public String goodslist() {
		return "adminUser/shoplist";
	}
	
	//多查询显示库存商品表
	@RequestMapping("/getgoodslist")
	public String getgoodslist(Model model,HttpSession session,
			@RequestParam(value="queryShopName",required=false) String queryShopName,
			@RequestParam(value="queryCategoryLevel1",required=false) String _queryCategoryLevel1,
			@RequestParam(value="queryCategoryLevel2",required=false) String _queryCategoryLevel2,
			@RequestParam(value="queryCategoryLevel3",required=false) String _queryCategoryLevel3,
			@RequestParam(value="status",required=false) String _status,
			@RequestParam(value="pageIndex",required=false) String pageIndex){

		System.out.println("getAppInfoList -- > queryShopName: " + queryShopName);
		System.out.println("getAppInfoList -- > queryCategoryLevel1: " + _queryCategoryLevel1);
		System.out.println("getAppInfoList -- > queryCategoryLevel2: " + _queryCategoryLevel2);
		System.out.println("getAppInfoList -- > queryCategoryLevel3: " + _queryCategoryLevel3);
		System.out.println("getAppInfoList -- > status: " + _status);
		System.out.println("getAppInfoList -- > pageIndex: " + pageIndex);
		
		List<ShopGoodsStorage> shopGoodsStorage = null;
		List<ShopGoodsCategory> categoryLevel1List = null;//列出一级分类列表，注：二级和三级分类列表通过异步ajax获取
		Collection<ShopGoodsCategory> categoryLevel2List = null;
		Collection<ShopGoodsCategory> categoryLevel3List = null;
		//页面容量
		int pageSize = Constants.pageSize;
		//当前页码
		Integer currentPageNo = 1;
		
		if(pageIndex != null){
		try{
		currentPageNo = Integer.valueOf(pageIndex);
		}catch (NumberFormatException e) {
		// TODO: handle exception
		e.printStackTrace();
		}
		}
		Integer queryCategoryLevel1 = null;
		if(_queryCategoryLevel1 != null && !_queryCategoryLevel1.equals("")){
		queryCategoryLevel1 = Integer.parseInt(_queryCategoryLevel1);
		}
		Integer queryCategoryLevel2 = null;
		if(_queryCategoryLevel2 != null && !_queryCategoryLevel2.equals("")){
		queryCategoryLevel2 = Integer.parseInt(_queryCategoryLevel2);
		}
		Integer queryCategoryLevel3 = null;
		if(_queryCategoryLevel3 != null && !_queryCategoryLevel3.equals("")){
		queryCategoryLevel3 = Integer.parseInt(_queryCategoryLevel3);
		}
		Integer status = null;
		if(_status != null && !_status.equals("")){
			status = Integer.parseInt(_status);
		}
		
		//总数量（表）
		int totalCount = 0;
		try {
		    totalCount = shopCheckService.getShopCheckCount(queryShopName, queryCategoryLevel1, queryCategoryLevel2, queryCategoryLevel3, status);
		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		
		//总页数
		PageSupport pages = new PageSupport();
		pages.setCurrentPageNo(currentPageNo);
		pages.setPageSize(pageSize);
		pages.setTotalCount(totalCount);
		int totalPageCount = pages.getTotalPageCount();
		//控制首页和尾页
		if(currentPageNo < 1){
		currentPageNo = 1;
		}else if(currentPageNo > totalPageCount){
		currentPageNo = totalPageCount;
		}
		try {
			shopGoodsStorage = shopCheckService.getShopCheckList(queryShopName, queryCategoryLevel1, queryCategoryLevel2, queryCategoryLevel3, status, currentPageNo, pageSize);
			categoryLevel1List = shopCategoryService.getShopCategoryListByParentId(0);
			System.out.println("^^^^^^^^^^"+(categoryLevel1List != null));
		} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		model.addAttribute("shopGoodsStorage", shopGoodsStorage);
		model.addAttribute("categoryLevel1List", categoryLevel1List);
		model.addAttribute("pages", pages);
		model.addAttribute("queryShopName", queryShopName);
		model.addAttribute("queryCategoryLevel1", queryCategoryLevel1);
		model.addAttribute("queryCategoryLevel2", queryCategoryLevel2);
		model.addAttribute("queryCategoryLevel3", queryCategoryLevel3);
		model.addAttribute("status", status);
		
		//二级分类列表和三级分类列表---回显
		if(queryCategoryLevel2 != null && !queryCategoryLevel2.equals("")){
		categoryLevel2List = getCategoryList(queryCategoryLevel1.toString());
		model.addAttribute("categoryLevel2List", categoryLevel2List);
		}
		if(queryCategoryLevel3 != null && !queryCategoryLevel3.equals("")){
		categoryLevel3List = getCategoryList(queryCategoryLevel2.toString());
		model.addAttribute("categoryLevel3List", categoryLevel3List);
		}
		return "adminUser/shoplist";
	}
	
	private List<ShopGoodsCategory> getCategoryList(String pid) {
		List<ShopGoodsCategory> categoryLevelList = null;
		try {
			categoryLevelList = shopCategoryService.getShopCategoryListByParentId(pid==null?null:Integer.parseInt(pid));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return categoryLevelList;
	}

	/**
	 * 根据parentId查询出相应的分类级别列表
	 * @param pid
	 * @return
	 */
	@RequestMapping(value="/categorylevellist.json",method=RequestMethod.GET)
	@ResponseBody
	public List<ShopGoodsCategory> getAppCategoryList (@RequestParam String pid){
		//logger.debug("getAppCategoryList pid ============ " + pid);
		if(pid.equals("")) pid = null;
		return getCategoryList(pid);
	}
	
	
	/**
	 * 跳转到商品信息审核页面
	 * @param shopId
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/check",method=RequestMethod.GET)
	public String check(@RequestParam(value="aid",required=false) String shopId,
					   Model model){
		ShopGoodsStorage list = null;
		try {
			list = shopCheckService.getShopInfo(Integer.parseInt(shopId));
			System.out.println(list.toString());
			System.out.println(list.getStatus());
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("list",list);
		return "adminUser/shopcheck";
	}
	
	//审核通过未通过的执行操作，修改状态
	@RequestMapping(value="/checksave",method=RequestMethod.POST)
	public String checkSave(ShopGoodsStorage list){
		//logger.debug("appInfo =========== > " + appInfo.getStatus());
		try {
			if(shopCheckService.updateSatus(list.getStatus(),list.getId())){
			    System.out.println("++++++++");
			    return "redirect:/adminuser/goodslist";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "adminUser/shopcheck";
	}
//	@RequestMapping("/check")
//	public String check() {
//		return "adminUser/shopcheck";
//	}

}
