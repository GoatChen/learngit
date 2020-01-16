package com.six.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.six.pojo.ShopBuyUser;
import com.six.tools.Constants;

public class LoginInterceptor extends HandlerInterceptorAdapter {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
    	
        System.out.println("==========================拦截器开始执行");
        //登录判断，判断session里面是否有user
        boolean flag=false;
        
    	ShopBuyUser shopBuyUser=(ShopBuyUser)request.getSession().getAttribute(Constants.BUY_USER_SESSION);
    	if(shopBuyUser != null){
    		System.out.println("==========================已登录");
    		
    		flag = true;
        }
        else {
    		System.out.println("==========================未登录");
            response.sendRedirect(request.getContextPath()+"/jsp/login.jsp");
        }
            
        return flag;
    }
	
}
