package com.bysj.util.excel;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

public interface ExcelDownLoad {
    
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
            HttpServletResponse response) throws IOException ;
    
    /**
     * 在文件不存在的情况下，采用生成输出流的方式实现左键点击下载功能。
     * @param outPutFileName　保存的文件名
     * @param out ServletOutputStream对象    
     * @param downExcel 填充了数据的ExcelModel
     * @param HttpServletResponse　    
     * @see HttpServletResponse
     * @throws Exception
     */
    public void downLoad( ExcelModel downExcel,String outPutFileName,
            HttpServletResponse response) throws Exception ;

}