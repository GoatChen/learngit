package com.six.controller.myController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.six.pojo.myEntity.Order;
import com.six.pojo.myEntity.SellUser;
import com.six.service.myService.OrderService;
import com.six.tools.Constants;
import com.six.tools.PageSupport;

@Controller
@RequestMapping(value = "/sellUser")
public class OrderController {
	
	@Resource
	private OrderService orderService;

	// 跳转到订单界面
	@RequestMapping(value = "/rtorder")
	public String rtorder(HttpSession session, Model model) {
		SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
		String code = sellUserSession.getCode();
		List<Order> rtorderList = orderService.findRtOrder(code);
		model.addAttribute("rtorderList", rtorderList);
		return "/seller/order";
	}

	// 跳转到申请表界面
	@RequestMapping(value = "/sellrun")
	public String sellrun(HttpSession session, Model model) {
		SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
		String code = sellUserSession.getCode();
		List<Order> rtorderList = orderService.findApplyOrder(code);
		model.addAttribute("rtorderList", rtorderList);
		return "/seller/sellrun";
	}

	// 退货申请
	@RequestMapping(value = "/queryAfterSell", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> queryStatus1(HttpSession session, String code) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		boolean flag = orderService.queryApplyOrder(code, 2);
		// 申请处理
		if (flag) {
			resultMap.put("delResult", "true");
		} else {
			resultMap.put("delResult", "false");
		}
		return resultMap;
	}
	/**
	 * **********杨汉斌模块
	 */

	/**
	 * 前往orderlist页面
	 * @param map
	 * @return
	 */
	@RequestMapping("/orderlist")
	public String selectAllOrder(HttpSession session,ModelMap map,
			@RequestParam(value = "currentPageNo", required = false) Integer currentPageNo) {
		PageSupport page = new PageSupport();
		// 获取卖家登录id
		SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
		Integer sell_id = sellUserSession.getId();
		
		// 获取所有订单总页数
		int totalCount=orderService.selectOrderAllCount(sell_id);
		page.setTotalCount(totalCount);  //获取所有订单总页数
    	if(currentPageNo != null && currentPageNo > 0){	 //设置当前页数
			if(currentPageNo <= page.getTotalPageCount()){   //得到的当前页数不能大于总页数
				page.setCurrentPageNo(currentPageNo);  		 //得到当前页
			}
		}
    	System.out.println("----------totalCount的值"+totalCount);
    	// 查询出所有订单
		List<Order> list =orderService.selectAllOrder(sell_id);
		System.out.println("----------list的值"+list);
		map.addAttribute("orderlist", list);
		map.addAttribute("pageSize", page.getPageSize());
		map.addAttribute("totalPageCount", page.getTotalPageCount());
		map.addAttribute("currentPageNo", page.getCurrentPageNo());
		return "seller/orderlist";
	}
	/**
	 * 删除订单信息
	 * @param id
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/delete/{id}")
	public String deleteOrderById(@PathVariable Integer id,ModelMap modelMap) {
		int result=orderService.deleteOrderById(id);
		if (result > 0) {
			System.out.println("删除用户成功！");
			return "redirect:/sellUser/orderlist";
		} else {
			modelMap.put("msg", "删除用户失败！");
			return "forward:/sellUser/orderlist";
		}
	}
	
	
}
