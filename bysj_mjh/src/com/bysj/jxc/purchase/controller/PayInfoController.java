package com.bysj.jxc.purchase.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.jxc.controller.BaseController;
import com.bysj.jxc.purchase.model.PayInfo;
import com.bysj.jxc.purchase.service.PayInfoService;
import com.bysj.util.excel.ExcelModel;
import com.bysj.util.excel.ExcelOperator;
import com.bysj.util.excel.ExcelRowData;
import com.google.gson.Gson;

@Controller
@RequestMapping("pay")
public class PayInfoController extends BaseController{

	@Autowired
	private PayInfoService payInfoService;
	
	@RequestMapping(value = "/list")
	public ModelAndView list()throws Exception{
		mv.clear();
		pd = this.getPageData();
		List<PayInfo> list = payInfoService.listPd(pd);
		mv.setViewName("dwz/pay_information");
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/add")
	public ModelAndView add()throws Exception{
		mv.clear();
		mv.setViewName("dwz/pay_add");
		return mv;
	}
	@RequestMapping(value="/saveAdd")
	public void saveAdd(HttpServletResponse response)throws Exception{
		pd = this.getPageData();
		String json;
		try{
			payInfoService.insert(pd);
			json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"pay_information\"}";
		}catch (Exception e){
			 e.printStackTrace();
		     json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
		}
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/delete")
	public void delete(HttpServletResponse response)throws Exception{
		pd = this.getPageData();
		String json ;
		try{
			payInfoService.delete(pd);
			json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"navTabId\":\"pay_information\"}";
		}catch (Exception e){
			json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
		}
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/update")
	public ModelAndView update() throws Exception {
		mv.clear();
		pd = this.getPageData();
		pd = payInfoService.listById(pd);
		Gson gson = new Gson();
		mv.setViewName("dwz/pay_modify");
		// mv.addObject("list",list);
		mv.addObject("pd", pd);
		return mv;
	}

	@RequestMapping(value = "/saveUpdate")
	public void saveUpdate(HttpServletResponse response) throws IOException{
		pd = this.getPageData();
		String json ;
	    try{
	    	payInfoService.update(pd);
		    json = "{\"statusCode\":200,\"message\":\"修改数据成功！\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"pay_information\"}";

	    }catch(Exception e){
	    	e.printStackTrace();
	    	json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
	    }
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/excelExport")
	public void excelExport(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		List<PayInfo> list = payInfoService.listPd(pd);
		List<ExcelRowData> data = new ArrayList<ExcelRowData>();
		List<String> header = new ArrayList<String>();
		header.add("序号");
		header.add("供应商编号");
		header.add("供应商名称");
		header.add("支付类型");
		header.add("支付账号");
		header.add("预付金");
		header.add("总金额");
		header.add("支付状态");
		header.add("备注");
	
		for (int i = 0; i < list.size(); i++) { // 行数
			ExcelRowData rowDataModel = new ExcelRowData();
			rowDataModel.setData(new ArrayList<String>());
			rowDataModel.getData().add(i + "");
			rowDataModel.getData().add(list.get(i).getId()+"");
			rowDataModel.getData().add(list.get(i).getSupplier_id());
			rowDataModel.getData().add(list.get(i).getSupplier_name()+"");
			rowDataModel.getData().add(list.get(i).getPay_type());
			rowDataModel.getData().add(list.get(i).getPay_id());
			rowDataModel.getData().add(list.get(i).getPrepay_money()+"");
			rowDataModel.getData().add(list.get(i).getSum_money());
			rowDataModel.getData().add(list.get(i).getPay_state());
			rowDataModel.getData().add(list.get(i).getRemark());
			data.add(rowDataModel);
		}
		ExcelModel model = new ExcelModel();
		File file = new File("F:/excel");
		if(!file.exists()){
			file.mkdirs();
		}
		model.setPath("F:/excel/pay_info.xls"); //   这样只是把excel上传到服务器端，不是客户端即本机。所以要用下面这个方法来实现另存为到本地。
		model.setHeader((ArrayList) header);
		model.setData((ArrayList) data);
		try {
			ExcelOperator.WriteExcel(model);
		} catch (Exception e) {
			e.printStackTrace();
			// System.out.println(e.getMessage());
		}
		String json = "{\"statusCode\":200,\"message\":\"excel已成功存入F://excel下\"}";
		response.getWriter().print(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
}
