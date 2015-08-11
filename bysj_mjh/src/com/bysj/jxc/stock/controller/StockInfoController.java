package com.bysj.jxc.stock.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.jxc.controller.BaseController;
import com.bysj.jxc.stock.model.StockInfo;
import com.bysj.jxc.stock.service.StockInfoService;
import com.bysj.util.excel.ExcelModel;
import com.bysj.util.excel.ExcelOperator;
import com.bysj.util.excel.ExcelRowData;
import com.google.gson.Gson;

@Controller
@RequestMapping("stock")
public class StockInfoController extends BaseController{

	@Autowired
	private StockInfoService stockInfoService;
	
	@RequestMapping(value = "/list")
	public ModelAndView list()throws Exception{
		mv.clear();
		pd = this.getPageData();
		List<StockInfo> list = stockInfoService.listPd(pd);
		mv.setViewName("dwz/stock_information");
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/add")
	public ModelAndView add()throws Exception{
		mv.clear();
		mv.setViewName("dwz/stock_add");
		return mv;
	}
	@RequestMapping(value="/saveAdd")
	public void saveAdd(HttpServletResponse response)throws Exception{
		pd = this.getPageData();
	//	inInfoService;.insert(pd);
		if(!stockInfoService.insert(pd)){
		     String json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
		}
		String json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"stock_information\"}";
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/delete")
	public void delete(HttpServletResponse response)throws Exception{
		pd = this.getPageData();
		if(!stockInfoService.delete(pd)){
			 String json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
		}
		String json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"navTabId\":\"stock_information\"}";
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/update")
	public ModelAndView update() throws Exception {
		mv.clear();
		pd = this.getPageData();
		pd = stockInfoService.listById(pd);
		Gson gson = new Gson();
		mv.setViewName("dwz/stock_modify");
		// mv.addObject("list",list);
		mv.addObject("pd", pd);
		return mv;
	}

	@RequestMapping(value = "/saveUpdate")
	public void saveUpdate(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		if(!stockInfoService.update(pd))
		{
			String json = "{\"statusCode\":300,\"message\":\"程序出错了！\"}";
		}
		String json = "{\"statusCode\":200,\"message\":\"修改数据成功！\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"stock_information\"}";
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}
	@RequestMapping(value = "/excelExport")
	public void excelExport(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		List<StockInfo> list = stockInfoService.listPd(pd);
		List<ExcelRowData> data = new ArrayList<ExcelRowData>();
		List<String> header = new ArrayList<String>();
		header.add("序号");
		header.add("货品编号");
		header.add("货品名称");
		header.add("数量");
		header.add("入货仓库号");
		header.add("仓库地址");
		header.add("入库日期");
		header.add("仓库负责人");
		header.add("备注");
	
		for (int i = 0; i < list.size(); i++) { // 行数
			ExcelRowData rowDataModel = new ExcelRowData();
			rowDataModel.setData(new ArrayList<String>());
			rowDataModel.getData().add(i + "");
			rowDataModel.getData().add(list.get(i).getGoods_id());
			rowDataModel.getData().add(list.get(i).getGoods_name());
			rowDataModel.getData().add(list.get(i).getIn_count()+"");
			rowDataModel.getData().add(list.get(i).getOut_count()+"");
			rowDataModel.getData().add(list.get(i).getRemain_count()+"");
			rowDataModel.getData().add(list.get(i).getRemark());
			data.add(rowDataModel);
		}
		ExcelModel model = new ExcelModel();
		File file = new File("F:/excel");
		if(!file.exists()){
			file.mkdirs();
		}
		model.setPath("F:/excel/out_info.xls"); //   这样只是把excel上传到服务器端，不是客户端即本机。所以要用下面这个方法来实现另存为到本地。
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
