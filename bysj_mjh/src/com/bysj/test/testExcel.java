package com.bysj.test;
import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.bysj.util.excel.ExcelModel;
import com.bysj.util.excel.ExcelOperator;
import com.bysj.util.excel.ExcelRowData;
//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.PreparedStatement;
public class testExcel {
	 private static final String dbdriver = "com.mysql.jdbc.Driver";
	 private static final String dburl = "jdbc:mysql://localhost:3306/test";
	 private static final String username = "root";
	 private static final String password = "root";
	 Connection conn = null;
	 PreparedStatement pstmt = null;
	 ResultSet rs = null;
	 
	 public testExcel(){
		 try{
			 Class.forName(dbdriver);
			 conn = DriverManager.getConnection(dburl,username,password);
			 String sql = "select * from city";
			 pstmt = conn.prepareStatement(sql);
			 rs = pstmt.executeQuery();
			 while(rs.next()){
				 System.out.println(rs.getInt(1));
				 System.out.println(rs.getString(2));
				 System.out.println(rs.getString(3));
				 System.out.println(rs.getString(4));
			 }
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 
	 }
	 public void closeCon(Connection conn){
		 this.conn = conn;
		 try{
			 conn.close();
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 
	 }
	 
	 public static void main(String[] args) throws Exception {
		 new testExcel();
		 HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(new File("h:/resource.xls")));  //读excel
	     HSSFSheet kucun = null;
	     HSSFSheet zuixiaozhi = null;
	     List<LeastVo> listLeast = new ArrayList<LeastVo>();
	     List<ExcelVo> listVo = new ArrayList<ExcelVo>();
//	     Set<LeastVo> MFGPN = new HashSet<LeastVo>();
	     
	     kucun = workbook.getSheetAt(2);         //库存表
		 for (int j = 1; j < kucun.getPhysicalNumberOfRows(); j++) {//获取每行
		     HSSFRow row=kucun.getRow(j);
		     
		     ExcelVo vo = new ExcelVo();
		     vo.setBRAND(row.getCell(0).toString());
		     vo.setMGFPN(row.getCell(1).toString());
		     vo.setQTY(Integer.parseInt(row.getCell(2).toString().trim()));    
		     
		     listVo.add(vo);
		             
		     }
		 System.out.println("---库存表处理完毕---");
		 System.out.println(listVo.size());
		 System.out.println(listVo);
		 
		 
		 
	     zuixiaozhi = workbook.getSheetAt(0);         //sheet 最小值
		 for (int j = 1; j < zuixiaozhi.getPhysicalNumberOfRows(); j++) {//获取每行
		     HSSFRow row=zuixiaozhi.getRow(j);
		             
		     LeastVo least = new LeastVo();
		     least.setMFGPN(row.getCell(2).toString().trim());     //塞MFGPN料号
		     if(row.getCell(3) == null){continue;}
		     
		     least.setLeast(Double.parseDouble(row.getCell(3).toString().trim())); //可能为空
		     listLeast.add(least);
		             
		     }
		 System.out.println("---最小值表处理完毕---");
		 System.out.println(listLeast.size());
		  
		
		 List<ExcelVo> results = new ArrayList<ExcelVo>();
		
		//循环最小值 list
		for(LeastVo leastVo : listLeast){
			// 循环 库存list
			for(ExcelVo excelVo : listVo){
				 if(leastVo.getMFGPN().startsWith(excelVo.getMGFPN())){
					 ExcelVo result = new ExcelVo();
					 result.setBRAND(excelVo.getBRAND());
					 result.setMGFPN(excelVo.getMGFPN());
					 result.setQTY(excelVo.getQTY());
					 result.setMGFPN_2(leastVo.getMFGPN());
					 excelVo.setLEAST(leastVo.getLeast());
					 result.setLEAST(excelVo.getLEAST());
					 results.add(result);
					 System.out.println(result.getMGFPN());
				 }
			 }
			
		 }
		 System.out.println(results.size());
		saveExcel(results);
		
 }
	
 
 public static void saveExcel(List<ExcelVo> list){
		List<ExcelRowData> data = new ArrayList<ExcelRowData>();
		List<String> header = new ArrayList<String>();
		header.add("BRAND");
		header.add("MGFPN");
		header.add("QTY");
		header.add("MGFPN_2");
		header.add("最小值");
	
		for (int i = 0; i < list.size(); i++) { // 行数
			ExcelRowData rowDataModel = new ExcelRowData();
			rowDataModel.setData(new ArrayList<String>());
			rowDataModel.getData().add(list.get(i).getBRAND());
			rowDataModel.getData().add(list.get(i).getMGFPN());
			rowDataModel.getData().add(list.get(i).getQTY().toString());
			rowDataModel.getData().add(list.get(i).getMGFPN_2());
			rowDataModel.getData().add(list.get(i).getLEAST().toString());
		
			data.add(rowDataModel);
		}
		ExcelModel model = new ExcelModel();

		model.setPath("h:/least.xls");    
		model.setHeader((ArrayList) header);
		model.setData((ArrayList) data);
		try {
			ExcelOperator.WriteExcel(model);
		} catch (Exception e) {
			e.printStackTrace();
			// System.out.println(e.getMessage());
		}
		
   }
}

