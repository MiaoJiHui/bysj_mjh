package com.bysj.util.excel;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

public abstract class BaseExcelDownLoad implements ExcelDownLoad {

	/**
	 * 初始化要生成的Excel的表模型
	 * @param data 传入的数据,每行数目固定
	 * @return
	 * @throws Exception
	 */
	   public abstract ExcelModel createDownLoadExcel 
	        (List<ExcelRowData> data)throws Exception;
	   
	    
	    /**
	     * 在文件已存在的情况下，采用读取文件流的方式实现左键点击下载功能，
	     * 本系统没有采取这个方法,而是直接将数据传往输出流,效率更高。
	     * @param inPutFileName 读出的文件名
	     * @param outPutFileName　保存的文件名
	     * @param HttpServletResponse　    
	     * @see HttpServletResponse
	     * @throws IOException
	     */
	    public void downLoad(String inPutFileName, String outPutFileName,
	            HttpServletResponse response) throws IOException { 
	    	
	    	InputStream is = null;
	    	OutputStream outputstream = null;
	        try{
	        	//打开指定文件的流信息
      	        is = new FileInputStream(inPutFileName);
		        //写出流信息
		        int data = -1;
		        outputstream = response.getOutputStream();	         
		        //清空输出流
		        response.reset();             
		        //设置响应头和下载保存的文件名              
		        response.setHeader("content-disposition","attachment;filename="+outPutFileName);
		        //定义输出类型
		        response.setContentType("APPLICATION/msexcel");	         
		        while ( (data = is.read()) != -1){
		        	outputstream.write(data);
		        }
	        }finally{
	        	is.close();
	            outputstream.close();
	        }      
	        response.flushBuffer();    
	    }
	    
	    /**
	     * 在文件不存在的情况下，采用生成输出流的方式实现左键点击下载功能。
	     * @param outPutFileName　保存的文件名
	     * @param out ServletOutputStream对象    
	     * @param downExcel 填充了数据的ExcelModel
	     * @param HttpServletResponse　    
	     * @see HttpServletResponse
	     * @throws Exception
	     */
	    public void downLoad(ExcelModel downExcel,String outPutFileName,
	            HttpServletResponse response) throws Exception {
	    	OutputStream out = null;
	        try{
		        //取得输出流
		        out = response.getOutputStream();
		        //清空输出流
		        response.reset();       
		        //设置响应头和下载保存的文件名              
		        response.setHeader("content-disposition","attachment;filename="+outPutFileName);
		        //定义输出类型
		        response.setContentType("APPLICATION/msexcel");               
		        //out:传入的输出流
		        ExcelOperator.WriteExcel(downExcel,out);
		       // LogWriter.logInfo("downLoad ...");
		        
	        }finally{
	        	 out.close();
	        }    
	        //这一行非常关键，否则在实际中有可能出现莫名其妙的问题！！！
	        response.flushBuffer();//强行将响应缓存中的内容发送到目的地                               
	     }

}
