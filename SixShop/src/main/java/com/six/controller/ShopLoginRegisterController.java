package com.six.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alibaba.fastjson.JSONObject;
import com.six.pojo.ShopAdminUser;
import com.six.pojo.ShopBuyUser;
import com.six.pojo.ShopSellUser;
import com.six.service.ShopLoginRegisterService;
import com.six.tools.Constants;

import com.six.pojo.myEntity.SellUser;

@Controller
@RequestMapping(value="/shopLoginRegister")
public class ShopLoginRegisterController {
	
	@Resource
	private ShopLoginRegisterService shopLoginRegisterService;
	
	//去登录页
	@RequestMapping(value="/toLogin")
	public String toLogin(HttpServletRequest request, HttpSession session, @ModelAttribute String message) {
		System.out.println("**************进入toLogin方法");
		
		if(session.getAttribute(Constants.BUY_USER_SESSION) != null) {	//清除买家session
			session.removeAttribute(Constants.BUY_USER_SESSION);
		}
		else if(session.getAttribute(Constants.SELL_USER_SESSION) != null) {	//清除卖家session
			session.removeAttribute(Constants.SELL_USER_SESSION);
		}
		else if(session.getAttribute(Constants.ADMIN_USER_SESSION) != null) {	//清除管理员session
			session.removeAttribute(Constants.ADMIN_USER_SESSION);
		}
		
		if(message != null){
			System.out.println("**************message:"+message);
			
			request.setAttribute("message", message);
		}
		
		return "login";
	}
	
	//登录请求
	@RequestMapping(value="/login")
	public String login(HttpSession session, HttpServletRequest request, RedirectAttributes attr, @RequestParam String codeOrPhone, 
											 						  @RequestParam String password) {
		System.out.println("**************进入login方法");
		
		/*
		 *判断code和phone是否为空
		 *根据code和phone查询三个用户
		 *不为空的用户则为目标登录用户 
		 */
		
		System.out.println("**************codeOrPhone:"+codeOrPhone);
		
		String code = codeOrPhone;
		String phone = codeOrPhone;
		
		//根据code查询用户
		System.out.println("**************根据code查询用户");
		ShopAdminUser adminUser = shopLoginRegisterService.selectAdminUserByCode(code);
		if(adminUser != null) {	//目标登录用户是adminUser
			System.out.println("**************目标登录用户是adminUser");
			
			if(adminUser.getPassword().equals(password)) {
				System.out.println("**************adminUser密码输入正确！");
				
				adminUser.setPassword("");
				session.setAttribute(Constants.ADMIN_USER_SESSION, adminUser);
				request.setAttribute("viewName", "主页");
				return "redirect:/adminuser/main";
			}
			else {
				System.out.println("**************adminUser密码输入错误！");
				
				String message="用户名密码输入错误！";
				attr.addFlashAttribute(Constants.MESSAGE, message);
				
				return "redirect:/shopLoginRegister/toLogin";
			}
		}
		else {
			System.out.println("**************目标登录用户不是adminUser");
			
			ShopBuyUser buyUser = shopLoginRegisterService.selectBuyUserByCode(code);
			if(buyUser != null) {	//目标登录用户是buyUser
				System.out.println("**************目标登录用户是buyUser");
				
				if(buyUser.getPassword().equals(password)) {
					System.out.println("**************buyUser密码输入正确！");
					
					if(buyUser.getBan().equals("0")) {
						System.out.println("**************buyUser用户没有被禁止，登录成功！");
						
						buyUser.setPassword("");
						session.setAttribute(Constants.BUY_USER_SESSION, buyUser);
						request.setAttribute("viewName", "主页");
						return "redirect:/shopIndex/toIndex";
					}
					else {
						System.out.println("**************buyUser用户被禁止，登录失败！");
						
						String message="该用户被限制登录！";
						attr.addFlashAttribute(Constants.MESSAGE, message);
						
						return "redirect:/shopLoginRegister/toLogin";
					}
				}
				else {
					System.out.println("**************buyUser密码输入错误！");
					
					String message="用户名密码输入错误！";
					attr.addFlashAttribute(Constants.MESSAGE, message);
					
					return "redirect:/shopLoginRegister/toLogin";
				}
			}
			else {
				System.out.println("**************目标登录用户不是buyUser");
				
				ShopSellUser sellUser = shopLoginRegisterService.selectSellUserByCode(code);
				if(sellUser != null) {	//目标登录用户是sellUser
					System.out.println("**************目标登录用户是sellUser");
					
					if(sellUser.getPassword().equals(password)) {
						System.out.println("**************sellUser密码输入正确！");
						
						if(sellUser.getBan().equals("0")) {
							System.out.println("**************sellUser用户没有被禁止，登录成功！");
							
							sellUser.setPassword("");
							SellUser selluser=new SellUser();
							selluser.setCode(sellUser.getCode());
							selluser.setId(sellUser.getId());
							session.setAttribute(Constants.SELL_USER_SESSION, selluser);
							request.setAttribute("viewName", "主页");
							return "redirect:/sellUser/toIndex";
						}
						else {
							System.out.println("**************sellUser用户被禁止，登录失败！");
							
							String message="该用户被限制登录！";
							attr.addFlashAttribute(Constants.MESSAGE, message);
							
							return "redirect:/shopLoginRegister/toLogin";
						}
					}
					else {
						System.out.println("**************sellUser密码输入错误！");
						
						String message="用户名密码输入错误！";
						attr.addFlashAttribute(Constants.MESSAGE, message);
						
						return "redirect:/shopLoginRegister/toLogin";
					}
				}
				else {
					System.out.println("**************目标登录用户不是sellUser");
					System.out.println("**************code没有查询到用户，输入值可能为phone");
				}
			}
		}
		
		//根据phone查询用户
		System.out.println("**************根据phone查询用户");
		ShopAdminUser adminUser1 = shopLoginRegisterService.selectAdminUserByPhone(phone);
		if(adminUser1 != null) {	//目标登录用户是adminUser
			System.out.println("**************目标登录用户是adminUser1");
			
			if(adminUser1.getPassword().equals(password)) {
				System.out.println("**************adminUser1密码输入正确！");
				
				adminUser1.setPassword("");
				session.setAttribute(Constants.ADMIN_USER_SESSION, adminUser1);
				request.setAttribute("viewName", "主页");
				return "redirect:/adminuser/main";
			}
			else {
				System.out.println("**************adminUser1密码输入错误！");
				
				String message="用户名密码输入错误！";
				attr.addFlashAttribute(Constants.MESSAGE, message);
				
				return "redirect:/shopLoginRegister/toLogin";
			}
		}
		else {
			System.out.println("**************目标登录用户不是adminUser1");
			
			ShopBuyUser buyUser1 = shopLoginRegisterService.selectBuyUserByPhone(phone);
			if(buyUser1 != null) {	//目标登录用户是buyUser
				System.out.println("**************目标登录用户是buyUser1");
				
				if(buyUser1.getPassword().equals(password)) {
					System.out.println("**************buyUser1密码输入正确！");
					
					if(buyUser1.getBan().equals("0")) {
						System.out.println("**************buyUser1用户没有被禁止，登录成功！");
						
						buyUser1.setPassword("");
						session.setAttribute(Constants.BUY_USER_SESSION, buyUser1);
						request.setAttribute("viewName", "主页");
						return "redirect:/shopIndex/toIndex";
					}
					else {
						System.out.println("**************buyUser1用户被禁止，登录失败！");
						
						String message="该用户被限制登录！";
						attr.addFlashAttribute(Constants.MESSAGE, message);
						
						return "redirect:/shopLoginRegister/toLogin";
					}
				}
				else {
					System.out.println("**************buyUser1密码输入错误！");
					
					String message="用户名密码输入错误！";
					attr.addFlashAttribute(Constants.MESSAGE, message);
					
					return "redirect:/shopLoginRegister/toLogin";
				}
			}
			else {
				System.out.println("**************目标登录用户不是buyUser1");
				
				ShopSellUser sellUser1 = shopLoginRegisterService.selectSellUserByPhone(phone);
				if(sellUser1 != null) {	//目标登录用户是sellUser
					System.out.println("**************目标登录用户是sellUser1");
					
					if(sellUser1.getPassword().equals(password)) {
						System.out.println("**************sellUser1密码输入正确！");
						
						if(sellUser1.getBan().equals("0")) {
							System.out.println("**************sellUser1用户没有被禁止，登录成功！");
							
							sellUser1.setPassword("");
							SellUser selluser=new SellUser();
							selluser.setCode(sellUser1.getCode());
							selluser.setId(sellUser1.getId());
							session.setAttribute(Constants.SELL_USER_SESSION, selluser);
							request.setAttribute("viewName", "主页");
							return "redirect:/sellUser/toIndex";
						}
						else {
							System.out.println("**************sellUser1用户被禁止，登录失败！");
							
							String message="该用户被限制登录！";
							attr.addFlashAttribute(Constants.MESSAGE, message);
							
							return "redirect:/shopLoginRegister/toLogin";
						}
					}
					else {
						System.out.println("**************sellUser1密码输入错误！");
						
						String message="用户名密码输入错误！";
						attr.addFlashAttribute(Constants.MESSAGE, message);
						
						return "redirect:/shopLoginRegister/toLogin";
					}
				}
				else {
					System.out.println("**************目标登录用户不是sellUser1");
					System.out.println("**************phone和code都没有查询到用户，该用户不存在！");
					
					String message="该用户不存在！";
					attr.addFlashAttribute(Constants.MESSAGE, message);
					
					return "redirect:/shopLoginRegister/toLogin";
				}
			}
		}
	}
	
	//注册用户
	@RequestMapping(value="/register")
	public String register(@RequestParam String code, 
						   @RequestParam String password, 
						   @RequestParam String phone, 
						   @RequestParam String email, 
						   @RequestParam String name, 
						   @RequestParam String sex, 
						   @RequestParam String birthday, 	//需要先用String类型接收前端的date，再转换为后端的date
						   @RequestParam String userType) {
		System.out.println("**************进入register方法");
		System.out.println("**************userType:"+userType);
		System.out.println("**************birthday:"+birthday);

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		Date date = new Date();		//获取当前日期
		Date birthday1 = null;
		System.out.println("**************date:"+date);
		
		try {
			date = sdf1.parse(sdf1.format(new Date()));
			birthday1 = sdf.parse(birthday);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(userType.equals("买家")) {	//注册买家用户
			ShopBuyUser buyUser = new ShopBuyUser();
			buyUser.setCode(code);
			buyUser.setPassword(password);
			buyUser.setPhone(phone);
			buyUser.setEmail(email);
			buyUser.setName(name);
			buyUser.setSex(sex);
			buyUser.setBirthday(birthday1);
			buyUser.setCreatedBy(1);
			buyUser.setCreationDate(date);
			
			Integer isFlag = shopLoginRegisterService.insertBuyUser(buyUser);
			if(isFlag>0) {
				System.out.println("**************插入买家用户成功！");
			}
			else {
				System.out.println("**************插入买家用户失败！");
			}
		}
		else {	//注册卖家用户
			ShopSellUser sellUser = new ShopSellUser();
			sellUser.setCode(code);
			sellUser.setPassword(password);
			sellUser.setPhone(phone);
			sellUser.setEmail(email);
			sellUser.setName(name);
			sellUser.setSex(sex);
			sellUser.setBirthday(birthday1);
			sellUser.setCreatedBy(1);
			sellUser.setCreationDate(date);
			
			Integer isFlag = shopLoginRegisterService.insertSellUser(sellUser);
			if(isFlag>0) {
				System.out.println("**************插入买家用户成功！");
			}
			else {
				System.out.println("**************插入买家用户失败！");
			}
		}
		
		return "login";
	}
	
	//通过ajax对code字段判定（code判空，code判重复）
	@RequestMapping(value="/codeIsExist")
	@ResponseBody
	public Object codeIsExist(@RequestParam String code) {
		System.out.println("**************进入codeIsExist方法");
		
		JSONObject result = new JSONObject();
		
		if(code!=null && code!=""){
			ShopBuyUser buyUser = shopLoginRegisterService.selectBuyUserByCode(code);
			if(buyUser!=null) {
				System.out.println("**************exist");
				result.put("d","exist");
			}
			else {
				ShopSellUser sellUser = shopLoginRegisterService.selectSellUserByCode(code);
				if(sellUser != null) {
					System.out.println("**************exist");
					result.put("d","exist");
				}
				else {
					ShopAdminUser adminUser = shopLoginRegisterService.selectAdminUserByCode(code);
					if(adminUser != null) {
						System.out.println("**************exist");
						result.put("d","exist");
					}
					else {
						System.out.println("**************noExist");
						result.put("d","noExist");
					}
				}
			}
		}
		else{
			System.out.println("**************code is null");
			result.put("d",null);
		}
		
		return result.toJSONString();
	}
	
	//通过ajax对phone字段判定（phone判空，phone判重复）
	@RequestMapping(value="/phoneIsExist")
	@ResponseBody
	public Object phoneIsExist(@RequestParam String phone) {
		System.out.println("**************进入phoneIsExist方法");
		
		JSONObject result = new JSONObject();
		
		if(phone!=null && phone!=""){
			ShopBuyUser buyUser = shopLoginRegisterService.selectBuyUserByPhone(phone);
			if(buyUser!=null) {
				System.out.println("**************exist");
				result.put("d","exist");
			}
			else {
				ShopSellUser sellUser = shopLoginRegisterService.selectSellUserByPhone(phone);
				if(sellUser != null) {
					System.out.println("**************exist");
					result.put("d","exist");
				}
				else {
					ShopAdminUser adminUser = shopLoginRegisterService.selectAdminUserByPhone(phone);
					if(adminUser != null) {
						System.out.println("**************exist");
						result.put("d","exist");
					}
					else {
						System.out.println("**************noExist");
						result.put("d","noExist");
					}
				}
			}
		}
		else{
			System.out.println("**************phone is null");
			result.put("d", null);
		}
		
		return result.toJSONString();
	}
	
	//通过ajax对email字段判定（email判空，email判重复）
	@RequestMapping(value="/emailIsExist")
	@ResponseBody
	public Object emailIsExist(@RequestParam String email) {
		System.out.println("**************进入emailIsExist方法");
		
		JSONObject result = new JSONObject();
		
		if(email!=null && email!=""){
			ShopBuyUser buyUser = shopLoginRegisterService.selectBuyUserByEmail(email);
			if(buyUser!=null) {
				System.out.println("**************exist");
				result.put("d", "exist");
			}
			else {
				ShopSellUser sellUser = shopLoginRegisterService.selectSellUserByEmail(email);
				if(sellUser != null) {
					System.out.println("**************exist");
					result.put("d", "exist");
				}
				else {
					ShopAdminUser adminUser = shopLoginRegisterService.selectAdminUserByEmail(email);
					if(adminUser != null) {
						System.out.println("**************exist");
						result.put("d", "exist");
					}
					else {
						System.out.println("**************noExist");
						result.put("d", "noExist");
					}
				}
			}
		}
		else{
			System.out.println("**************email is null");
			result.put("d", null);
		}
		
		return result.toJSONString();
	}
	
	//通过ajax对birthday字段判定（birthday判空，birthday判是否大于当前时间）
	@RequestMapping(value="/birthdayValidate")
	@ResponseBody
	public Object birthdayValidate(@RequestParam String birthday) {
		System.out.println("**************进入birthdayValidate方法");

		JSONObject result = new JSONObject();
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		
		if(birthday != null && birthday != ""){
			System.out.println("**************birthday is not null");
			System.out.println("**************birthday:"+birthday);
			
			Date date = new Date();
			Date birthday1 = null;
			try {
				birthday1 = sdf1.parse(birthday);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int compare = birthday1.compareTo(date);
			if (compare > 0) {
				System.out.println("**************bigger");
				result.put("d", "bigger");
			} else if (compare == 0) {
				System.out.println("**************equal");
				result.put("d", "equal");
			} else {
				System.out.println("**************smaller");
				result.put("d", "smaller");
			}
		}
		else{
			System.out.println("**************birthday is null");
			result.put("d", null);
		}
			
		return result.toJSONString();
	}
	
}
