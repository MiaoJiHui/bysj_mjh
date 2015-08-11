package com.bysj.test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;

import javax.servlet.ServletOutputStream;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

/**
 * 
 * 利用Servlet导出Excel
 * 
 * @author CHUNBIN
 * 
 * 
 */

public class TestSaveAs extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");// 设置request的编码方式，防止中文乱码
		String fileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());// 设置导出的文件名称
		StringBuffer sb = new StringBuffer(request.getParameter("tableInfo"));// 将表格信息放入内存
		String contentType = "application/msword";// 定义导出文件的格式的字符串
		String recommendedName = new String(fileName.getBytes(), "UTF-8");// 设置文件名称的编码格式
		response.setContentType(contentType);// 设置导出文件格式
		response.setHeader("Content-Disposition", "attachment; filename="
				+ recommendedName + "\"");//
		response.resetBuffer();
		// 利用输出输入流导出文件
		ServletOutputStream sos = response.getOutputStream();
		sos.write(sb.toString().getBytes());
		sos.flush();
		sos.close();
		
		
		/*StringBuilder sb = new StringBuilder();
        sb.append("1");
        response.addHeader("Content-Disposition", "attachment; filename=test.txt"); 
        response.setContentType("application/octet-stream"); 
        response.setCharacterEncoding("GB2312"); 
        try {
			response.getWriter().write(sb.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        try {
			response.flushBuffer();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}

}