package com.bysj.util.excel;

import java.util.ArrayList;
import java.util.List;


public class UidCodeExcelDownLoad extends BaseExcelDownLoad {
    
	static private String path;
	static private final List<String> header = new ArrayList<String>(){//固定excel头部数据
		private static final long serialVersionUID = 1L;
	        {add("uid码"); add("类型");add("扫码地址");add("防伪码");}};	        
        static private final String sheetName = "uid信息";
			
	@Override
	public ExcelModel createDownLoadExcel(List<ExcelRowData> data)
			throws Exception {
		ExcelModel udiExcel = null;
		if(this.checkData(data)){
			udiExcel =  new ExcelModel();
			udiExcel.setHeader((ArrayList) header);
			udiExcel.setPath(path);
			udiExcel.setSheetName(sheetName);
			udiExcel.setData((ArrayList) data);
		}
		return udiExcel;
	}
	
	private boolean  checkData(List<ExcelRowData> data){//可根据具体业务进行数据验证
		for(ExcelRowData rowData:data){
			if(rowData.getData().size() != header.size()){
				return false;
			}
		}
		return  true;
	}

}