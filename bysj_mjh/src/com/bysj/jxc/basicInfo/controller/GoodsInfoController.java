package com.bysj.jxc.basicInfo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bysj.jxc.basicInfo.model.GoodsInfo;
import com.bysj.jxc.basicInfo.service.GoodsInfoService;
import com.bysj.util.excel.ExcelModel;
import com.bysj.util.excel.ExcelOperator;
import com.bysj.util.excel.ExcelRowData;
import com.bysj.util.pageData.PageData;
import com.google.gson.Gson;

@Controller
@RequestMapping("goods")
public class GoodsInfoController {
	@Autowired
	// protected Logger logger = Logger.getLogger(this.getClass());
	private GoodsInfoService goodsInfoService;
	public ModelAndView mv = this.getModelAndView();
	public PageData pd = new PageData();

	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		return request;
	}

	public PageData getPageData() {
		return new PageData(this.getRequest());
	}

	public ModelAndView getModelAndView() {
		return new ModelAndView();
	}

	@RequestMapping(value = "/list")
	public ModelAndView list() throws Exception {
		mv.clear();
		pd = this.getPageData();
		List<GoodsInfo> list = goodsInfoService.listPd(pd);
		List<String> strList = goodsInfoService.listGoodsType();
		int totalCount = list.size();
		mv.setViewName("dwz/goods_infomation");
		mv.addObject("totalCount", totalCount);
		mv.addObject("list", list);
		mv.addObject("strList", strList);
		mv.addObject("pd", pd);
		return mv;
	}

	@RequestMapping(value = "/add")
	public ModelAndView add() throws Exception {
		mv.clear();
		List<String> strList = goodsInfoService.listGoodsType();
		mv.addObject("strList", strList);
		mv.setViewName("dwz/goods_add");
		return mv;
	}

	@RequestMapping(value = "/saveAdd")
	public void saveAdd(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		goodsInfoService.insert(pd);    //这里应该做个判断，由于时间紧急，看情况优化
                                        //这个没做判断，从这个开始我做了判断！：）
		// 拼json字符串，用于原页面的处理，关闭dialog、跳页面等处理！在此要感谢WD!
		// 目前还没做逻辑处理，只是单纯的增删改查，还没有考虑程序异常的情况。有时间优化！
		String json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"goods_information\"}";
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}

	@RequestMapping(value = "/delete")
	public void delete(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		goodsInfoService.delete(pd);
		String json = "{\"statusCode\":200,\"message\":\"操作成功了！\",\"navTabId\":\"goods_information\"}";
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}

	@RequestMapping(value = "/update")
	public ModelAndView update() throws Exception {
		mv.clear();
		pd = this.getPageData();
		pd = goodsInfoService.listById(pd);
	//	List<GoodsInfo> list = goodsInfoService.listAll();
		List<String> list = goodsInfoService.listGoodsType();
		Gson gson = new Gson();
		mv.setViewName("dwz/goods_edit");
		// mv.addObject("list",list);
		mv.addObject("pd", pd);
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/saveUpdate")
	public void saveUpdate(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		goodsInfoService.update(pd);
		String json = "{\"statusCode\":200,\"message\":\"修改数据成功！\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"goods_information\"}";
		response.getWriter().write(json);
		response.getWriter().flush();
		response.getWriter().close();
	}

	@RequestMapping(value = "/excelExport")
	public void excelExport(HttpServletResponse response) throws Exception {
		pd = this.getPageData();
		List<GoodsInfo> list = goodsInfoService.listPd(pd);
		List<ExcelRowData> data = new ArrayList<ExcelRowData>();
		List<String> header = new ArrayList<String>();
		header.add("序号");
		header.add("货品编号");
		header.add("货品名称");
		header.add("货品类别");
		header.add("规格型号");
		header.add("单位");
		header.add("数量");
		header.add("供应商");
		header.add("价格");
		header.add("仓库");
		header.add("入库时间");
		header.add("备注");
		for (int i = 0; i < list.size(); i++) { // 行数
			ExcelRowData rowDataModel = new ExcelRowData();
			rowDataModel.setData(new ArrayList<String>());
			rowDataModel.getData().add(i + "");
			rowDataModel.getData().add(list.get(i).getGoods_id());
			rowDataModel.getData().add(list.get(i).getGoods_name());
			rowDataModel.getData().add(list.get(i).getGoods_type());
			rowDataModel.getData().add(list.get(i).getGoods_scale());
			rowDataModel.getData().add(list.get(i).getGoods_unit());
			rowDataModel.getData().add(list.get(i).getCount() + "");
			rowDataModel.getData().add(list.get(i).getGoods_supplier());
			rowDataModel.getData().add(list.get(i).getPrice() + "");
			rowDataModel.getData().add(list.get(i).getStorage());
			rowDataModel.getData().add(list.get(i).getIn_date() + "");
			rowDataModel.getData().add(list.get(i).getRemark());
			data.add(rowDataModel);
		}
		ExcelModel model = new ExcelModel();
		File file = new File("F:/excel");
		if(!file.exists()){
			file.mkdirs();
		}
		model.setPath("F:/excel/goods_info.xls"); //   这样只是把excel上传到服务器端，不是客户端即本机。所以要用下面这个方法来实现另存为到本地。
		model.setHeader((ArrayList) header);
		model.setData((ArrayList) data);
		try {
			ExcelOperator.WriteExcel(model);
		} catch (Exception e) {
			e.printStackTrace();
			// System.out.println(e.getMessage());
		}
		/*String json = "{\"statusCode\":200,\"message\":\"excel已成功存入F://excel下\"}";
		response.getWriter().print(json);
		response.getWriter().flush();
		response.getWriter().close();*/
		/*
		 * excel下载
		 */
		OutputStream out = response.getOutputStream();
		byte[] b = new byte[5000];
		File fileload = new File("f:/excel/goods_info.xls");
		response.reset();
		
		long length = fileload.length();
		String strlen = String.valueOf(length);
		
		response.setHeader("Content-Disposition", "attachment;filename=feedback.xls");
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
	
	//文件另存为方法，供参考！本项目中未用到。没时间！
    public void Download(HttpServletRequest request, HttpServletResponse response)throws Exception{
    	OutputStream out = response.getOutputStream();
		byte[] b = new byte[5000];
		File fileload = new File("f:/goods_info.xls");
		response.reset();
		
		long length = fileload.length();
		String strlen = String.valueOf(length);
		
		response.setHeader("Content-Disposition", "attachment;filename=goods_info.xls");
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
