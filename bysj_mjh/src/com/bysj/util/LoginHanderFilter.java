package com.bysj.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bysj.jxc.model.User;

public class LoginHanderFilter extends HandlerInterceptorAdapter{
	   public boolean preHander(HttpServletRequest request,HttpServletResponse response,Object handler)throws Exception{
	   String path = request.getServletPath();
	   if(path.matches(".*/((login)|(logout)|(code)|(app)).*")){
	   return true;
	}  else if(path.endsWith("html")||path.endsWith("404.do")){
	    return true;
	} else{
	      HttpSession session = request.getSession();
	      User user = (User) session.getAttribute("userid");
	      if(user!=null){
	      return true;
	}
	    else{
	     //登陆过滤
	     response.sendRedirect(request.getContextPath()+"login");
	      return false;
	}
	}
	  
	}
	}