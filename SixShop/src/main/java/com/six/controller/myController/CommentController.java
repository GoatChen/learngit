package com.six.controller.myController;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.six.pojo.myEntity.Comment;
import com.six.pojo.myEntity.CommentAnswer;
import com.six.pojo.myEntity.SellUser;
import com.six.service.myService.CommentService;
import com.six.tools.Constants;
import com.six.tools.PageSupport;



@Controller
@RequestMapping("/comment")
public class CommentController {
	
	
	@Autowired
	private CommentService commentService;
	
	/**
	 * 前往评论页面
	 * 
	 * @param map
	 * @return
	 */
	@RequestMapping("/commentlist")
	public String selectAllCommnt(HttpSession session, ModelMap map,
			@RequestParam(value = "currentPageNo", required = false) Integer currentPageNo) {
		
		PageSupport page = new PageSupport();
		// 获取卖家登录id
		SellUser sellUserSession = (SellUser) session.getAttribute(Constants.SELL_USER_SESSION);
		Integer sell_id = sellUserSession.getId();
		
		// 获取所有评论总页数
		int totalCount=commentService.selectCommentAllCount(sell_id);
		page.setTotalCount(totalCount);  //获取所有评论总页数
    	if(currentPageNo != null && currentPageNo > 0){	 //设置当前页数
			if(currentPageNo <= page.getTotalPageCount()){   //得到的当前页数不能大于总页数
				page.setCurrentPageNo(currentPageNo);  		 //得到当前页
			}
		}
    	System.out.println("----------totalCount的值"+totalCount);
		
    	// 查询出所有评论
		List<Comment> list = commentService.selectAllCommentBySellId(sell_id);
		System.out.println("----------list的值"+list);
		map.addAttribute("Commentlist", list);
		map.addAttribute("pageSize", page.getPageSize());
		map.addAttribute("totalPageCount", page.getTotalPageCount());
		map.addAttribute("currentPageNo", page.getCurrentPageNo());
		return "seller/commentlist";
	}
	
	/**
	 * 前往评论回复页面
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping("/commentanswer/{buy_id}")
	public String addCommenetAnswer(@PathVariable Integer buy_id,
			ModelMap map) {
		List<Comment> list = commentService.selectACommentById(buy_id);
		map.addAttribute("Commentlist", list);
		System.out.println("3333333333333333");
		return "seller/commentanswer";
	}
	
	/**
	 * 提交回复评论信息
	 * @param buy_id
	 * @param map
	 * @param commentAnswer
	 * @return
	 */
	@RequestMapping(value="/sendcommentanswer/{buy_id}",method = RequestMethod.POST)
	public String sendCommentAnswer(@PathVariable Integer buy_id,
			/* @RequestParam(value="con",required=false) String queryShopName, */
			@ModelAttribute CommentAnswer commentAnswer) {
		commentAnswer.setCreationDate(new Date());
		System.out.println("88888888888888888888888888888");
		System.out.println(" 222:"+commentAnswer);
		int result=commentService.addCommentAnswer(buy_id, commentAnswer);
		if (result>0) {
			System.out.println("回复成功！");
			return "redirect:/comment/commentlist";
		}else {
			System.out.println("回复失败！！！");
			return "selluser/comment/commentlist";
		}
		
	}
}
