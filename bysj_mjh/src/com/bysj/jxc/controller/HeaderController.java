package com.bysj.jxc.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.jxc.service.LoginService;
import com.bysj.util.pageData.PageData;
@Controller
@RequestMapping("header")
public class HeaderController extends BaseController{
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/password")
	public ModelAndView password()throws Exception{
		mv.setViewName("dwz/changePwd");
		return mv;
	}
	@RequestMapping(value = "/changePwd")
	public void changePwd(HttpSession session , HttpServletResponse response)throws Exception{
		pd = this.getPageData();
		String json ;
		//String username = (String) session.getAttribute("username");
		if(loginService.update(pd)){
			json = "{\"statusCode\":200,\"message\":\"密码修改成功！\",\"callbackType\":\"closeCurrent\"}";
		}
		else{
			json = "{\"statusCode\":300,\"message\":\"操作失败\"}";
		}
		response.getWriter().print(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/adminUser")
	public ModelAndView adminUser() throws Exception{
	      mv.clear();
	      pd = this.getPageData();
	      List<PageData> list = loginService.listPd(pd);
	      mv.addObject("list", list);
	      mv.setViewName("dwz/adminUser");
	      return mv;
	}
	@RequestMapping(value = "/add")
	public ModelAndView add() throws Exception{
		mv.clear();
		mv.setViewName("dwz/addUser");
		return mv;
	}
	@RequestMapping(value = "/update")
	public ModelAndView update() throws Exception{
		mv.clear();
		pd = this.getPageData();
		pd = loginService.listById(pd);
		mv.setViewName("dwz/editUser");
		mv.addObject("pd", pd);
		return mv;
	}
	@RequestMapping(value = "/saveAdd")
	public void saveAdd(HttpServletResponse response)throws Exception{
		pd = this.getPageData();
		String json ;
		try{
			loginService.insert(pd);
			json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"callbackType\":\"closeCurrent\",\"dialogId\":\"adminUser\"}";
		}catch(Exception e){
			e.printStackTrace();
			json = "{\"statusCode\":300,\"message\":\"插入数据失败，请重新操作\"}";
		}
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/saveUpdate")
	public void saveUpdate(HttpServletResponse response)throws Exception{
		pd = this.getPageData();
		String json ;
		try{
			loginService.updateAll(pd);
			json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"callbackType\":\"closeCurrent\",\"dialogId\":\"adminUser\"}";
		}catch(Exception e){
			e.printStackTrace();
			json = "{\"statusCode\":300,\"message\":\"修改数据失败，请重新操作\"}";
		}
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/delete")
	public void delete(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		String json ;
		try{
			loginService.delete(pd);
			json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"dialogId\":\"adminUser\"}";
		}catch(Exception e){
			e.printStackTrace();
			json = "{\"statusCode\":300,\"message\":\"删除数据失败，请重新操作\"}";
		}
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}

}
