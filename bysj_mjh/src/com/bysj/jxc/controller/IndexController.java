package com.bysj.jxc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bysj.jxc.model.User;
import com.bysj.jxc.service.LoginService;

@Controller
@RequestMapping("index")
public class IndexController {
	@Autowired
	private LoginService loginService;

	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("CONTENT_TYPE", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		return "login";
	}

	@RequestMapping("index")
	public String index(HttpServletRequest request, HttpServletResponse response,HttpSession session)throws Exception {
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("CONTENT_TYPE", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String str ;
		String username= (String)session.getAttribute("username");
		if("".equals(username)||username==null){        //判断session时间是否过期
		    str = "login";
		}
		else{
			str = "dwz/index";
		}
		return str;
	}

	@RequestMapping(value = "login_index")
	public String login_check(HttpServletRequest request,
			HttpServletResponse response , HttpSession session) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("CONTENT_TYPE", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		/*
		String url = (String) session.getAttribute("url");
		response.sendRedirect(url);*/
		
		String errorInfo = ""; // 错误信息
		String forward = "error"; // 跳转页面,默认跳入错误页
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String validateC = (String) request.getSession().getAttribute(
				"validateCode"); // 拿到存入session的验证码
		String veryCode = request.getParameter("validateCode"); // 表单传入的验证码

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		try {
			List<User> list = loginService.getUser(user);
			if (list.isEmpty()) {
				errorInfo = "用户名或密码输入错误！";
				request.setAttribute("errorInfo", errorInfo);
				request.setAttribute("username",username);     //若输错用户名或密码，不清空用户名
				forward = "login";                 //跳回原页面
			} else if (!validateC.equalsIgnoreCase(veryCode)) {
				errorInfo = "输入的验证码错误！";
				request.setAttribute("username",username);
				request.setAttribute("password",password);    //若输错验证码，不清空用户名和密码
				request.setAttribute("errorInfo", errorInfo);
				forward = "login";
			} else if (list.size() > 0 && validateC.equalsIgnoreCase(veryCode)) {
				/*forward = index(request, response);*/
				session.setAttribute("username", username);   //将用户名或密码存入session
				session.setAttribute("limitUser",list.get(0).getLimitUser());
				session=request.getSession(true);     
			    session.setMaxInactiveInterval(600);   //设置会话超期时间 以秒计时
				response.sendRedirect("/bysj_mjh/index/index");
			
				// request.getRequestDispatcher("/pages/dwz/index.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			request.getSession().removeAttribute("validateCode"); // 移除session
		}
		
		return forward;
	}
/*    @RequestMapping("login_index")
    public String login_index(HttpServletRequest request,HttpServletResponse response){
    	response.setContentType("text/html;charset=utf-8");
		response.setHeader("CONTENT_TYPE", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
    	return index(request,response);
    }*/
	@RequestMapping(value = "caigou")
	public String caigou(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("CONTENT_TYPE", "text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		return "dwz/caigou";
	}
}
