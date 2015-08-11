/**
 * 基类Controller,用于获取页面属性、和mv
 */
package com.bysj.jxc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.util.pageData.PageData;

public class BaseController {

	public ModelAndView mv = this.getModelAndView();
    public PageData pd = new PageData();
    		
	public ModelAndView getModelAndView() {
		return new ModelAndView();
	}
	
	public HttpServletRequest getRequest(){
		HttpServletRequest request =  ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}
	
	public PageData getPageData(){
		return new PageData(this.getRequest());
	}
	
}
