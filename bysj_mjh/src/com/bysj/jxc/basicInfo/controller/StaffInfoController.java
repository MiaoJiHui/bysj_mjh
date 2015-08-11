package com.bysj.jxc.basicInfo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.jxc.basicInfo.model.StaffInfo;
import com.bysj.jxc.basicInfo.service.StaffInfoService;
import com.bysj.jxc.controller.BaseController;
import com.bysj.util.excel.ExcelModel;
import com.bysj.util.excel.ExcelOperator;
import com.bysj.util.excel.ExcelRowData;
import com.google.gson.Gson;

@Controller
@RequestMapping("staff")
public class StaffInfoController extends BaseController{

	@Autowired
	private StaffInfoService staffInfoService;
	
	@RequestMapping(value = "/list")
	public ModelAndView list()throws Exception{
		mv.clear();
		pd = this.getPageData();
		List<StaffInfo> list = staffInfoService.listPd(pd);
		mv.setViewName("dwz/staff_information");
		mv.addObject("list", list);
		return mv;
	}
	@RequestMapping(value = "/search")
	public ModelAndView search()throws Exception{
		mv.clear();
		mv.setViewName("dwz/staff_index");
		return mv;
	}
	@RequestMapping(value = "/add")
	public ModelAndView add()throws Exception{
		mv.clear();
		mv.setViewName("dwz/staff_add");
		return mv;
	}
	@RequestMapping(value="/saveAdd")
	public void saveAdd(HttpServletResponse response)throws Exception{
		pd = this.getPageData();
		String json ;
	//	staffInfoService.insert(pd);
		if(!staffInfoService.insert(pd)){
		      json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
		}
		else{
		      json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"staff_information\"}";
		}
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/delete")
	public void delete(HttpServletResponse response)throws Exception{
		pd = this.getPageData();
		String json;
		if(!staffInfoService.delete(pd)){
			  json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
		}
		else{
			json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"navTabId\":\"staff_information\"}";
		}
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/update")
	public ModelAndView update() throws Exception {
		mv.clear();
		pd = this.getPageData();
		pd = staffInfoService.listById(pd);
		Gson gson = new Gson();
		mv.setViewName("dwz/staff_modify");
		mv.addObject("pd", pd);
		return mv;
	}

	@RequestMapping(value = "/saveUpdate")
	public void saveUpdate(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		String json;
		if(!staffInfoService.update(pd))
		{
			 json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
		}
		else{
			json = "{\"statusCode\":200,\"message\":\"修改数据成功！\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"staff_information\"}";
		}
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/excelExport")
	public void excelExport(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		List<StaffInfo> list = staffInfoService.listPd(pd);
		List<ExcelRowData> data = new ArrayList<ExcelRowData>();
		List<String> header = new ArrayList<String>();
		header.add("序号");
		header.add("员工编号");
		header.add("姓名");
		header.add("职位");
		header.add("性别");
		header.add("部门");
		header.add("联系电话");
		header.add("Email");
		header.add("家庭住址");
		header.add("备注");
	
		for (int i = 0; i < list.size(); i++) { // 行数
			ExcelRowData rowDataModel = new ExcelRowData();
			rowDataModel.setData(new ArrayList<String>());
			rowDataModel.getData().add(i + "");
			rowDataModel.getData().add(list.get(i).getStaff_id());
			rowDataModel.getData().add(list.get(i).getStaff_name());
			rowDataModel.getData().add(list.get(i).getVacation());
			rowDataModel.getData().add(list.get(i).getSex());
			rowDataModel.getData().add(list.get(i).getSection());
			rowDataModel.getData().add(list.get(i).getPhone());
			rowDataModel.getData().add(list.get(i).getEmail());
			rowDataModel.getData().add(list.get(i).getPhone());
			rowDataModel.getData().add(list.get(i).getRemark());
			data.add(rowDataModel);
		}
		ExcelModel model = new ExcelModel();
		File file = new File("F:/excel");
		if(!file.exists()){
			file.mkdirs();
		}
		model.setPath("F:/excel/staff_info.xls"); //   这样只是把excel上传到服务器端，不是客户端即本机。所以要用下面这个方法来实现另存为到本地。
		model.setHeader((ArrayList) header);
		model.setData((ArrayList) data);
		try {
			ExcelOperator.WriteExcel(model);
		} catch (Exception e) {
			e.printStackTrace();
			// System.out.println(e.getMessage());
		}
		OutputStream out = response.getOutputStream();
		byte[] b = new byte[5000];
		File fileload = new File("F:/excel/staff_info.xls");
		response.reset();
		
		long length = fileload.length();
		String strlen = String.valueOf(length);
		
		response.setHeader("Content-Disposition", "attachment;filename=excel.xls");
		response.setHeader("Connection", "close");
		response.setHeader("Content-Type","application/vnd.ms-excel");
		response.setHeader("Content_Lenght",strlen);
		FileInputStream in = new FileInputStream(fileload);
		int n ;
		
		while((n = in.read(b))!=-1){
			out.write(b,0,n);
		}
		in.close();
		out.close();
	}
}
