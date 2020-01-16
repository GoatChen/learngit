package com.six.controller.myController;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.six.pojo.myEntity.SellUser;
import com.six.service.myService.SellUserService;



@Controller
@RequestMapping(value = "/sellUser")
public class SellUserController {
	
	@Resource
	private SellUserService sellUserService;

	// 跳转到个人主页

	@RequestMapping(value = "/toIndex")
	public String toIndex(HttpServletRequest request) {
		return "/seller/index";
	}

	// 跳转到首页
	@RequestMapping(value = "/toShop")
	public String toShop(HttpServletRequest request) {
		return "/index";
	}
	

	/**
	 * 
	 *    杨汉斌负责模板
	 */
	//********************************************************************
	/**
	 * 
	 * 查询卖家个人相关信息
	 * @param id
	 * @param session
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/selluserlist/{id}")
	public String sellUserList(@PathVariable("id") Integer id, HttpSession session, ModelMap modelMap) {
		List<SellUser> list = sellUserService.selectSellUserById(id);
		modelMap.put("selluserlist", list);
		return "seller/selluserlist";
	}
	/**
	 * 前往更改信息页面
	 * 
	 * @param id
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/update/{id}")
	public String update(@PathVariable("id") Integer id, ModelMap modelMap) {
		List<SellUser> list = sellUserService.selectSellUserById(id);
		modelMap.addAttribute("selluserlist", list);
		return "seller/updateselluser";
	}

	@RequestMapping("/updateselluser")
	public String updateSellUser(@ModelAttribute SellUser sellUser,
			HttpServletRequest request,
			@RequestParam(value = "images", required = false) MultipartFile images) throws IllegalStateException, IOException {
		// 先处理文件
		// 1.项目的路径
		String path = request.getServletContext().getRealPath("/");
		// 2.获取文件名字
		String fileName = images.getOriginalFilename();
//		if(!fileName.equals(sellUser.getPicPojoPath().substring(7))) {
			// 3.创建一个文件
			File newfile = new File(path + "upload", fileName);
			System.out.println("##############################:"+newfile);
			// 4.CommonsMultipartFile对象的一个方法，将文件写入新创建的文件newfile对象里面
			images.transferTo(newfile);

			// 将文件上传的路径给SellUser对象的picPojoPath
			String pojoPath = "/upload/" + fileName;
			// ID生成
//			UUID uuid = UUID.randomUUID();
//			String id = uuid.toString().replaceAll("-", "");
			sellUser.setPicPojoPath(pojoPath);
			sellUser.setPicLocalPath(path+"upload\\"+fileName);
//		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", sellUser.getId());
		map.put("code", sellUser.getCode());
		map.put("password", sellUser.getPassword());
		map.put("email", sellUser.getEmail());
		map.put("phone", sellUser.getPhone());
		map.put("name", sellUser.getName());
		map.put("sex", sellUser.getSex());
		map.put("birthday", sellUser.getBirthday());
		map.put("picPojoPath", sellUser.getPicPojoPath());
		map.put("picLocalPath", sellUser.getPicLocalPath());
		map.put("sellName", sellUser.getSellName());
		map.put("modifyDate", new Date());
		
		int result = sellUserService.updateSellUser(map);
		if (result > 0) {
			System.out.println("更新成功！**********");
			return "redirect:/sellUser/selluserlist/" + sellUser.getId();
		} else {
			System.out.println("更新失败！**********");
		}
		return "seller/updateselluser";
	}
}
