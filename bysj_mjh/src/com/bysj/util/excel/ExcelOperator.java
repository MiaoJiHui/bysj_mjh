package com.bysj.util.excel;

import java.io.FileOutputStream;
import java.io.BufferedOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.math.BigDecimal;
import java.io.OutputStream;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

/**
 * 实现生成Excel文件的操作
 */
public class ExcelOperator {

	/**
	 * 将数据信息写入到Excel表文件，采取自建输出流的方式。
	 * 
	 * @param excel
	 *            ExcelModel Excel表的模型对象
	 * @throws Exception
	 */
	public static void WriteExcel(ExcelModel excel) throws Exception {
		/*FileOutputStream fOut = null;
		BufferedOutputStream bf = null;*/
		try {
			
			
			// 新建一输出文件流
			FileOutputStream fOut = new FileOutputStream(excel.getPath());
			BufferedOutputStream bf = new BufferedOutputStream(fOut);
			HSSFWorkbook workbook = ExcelOperator.getInitWorkbook(excel);

			// 把相应的Excel 工作簿存盘
			workbook.write(fOut);
			fOut.flush();
			bf.flush();
			bf.close();
			fOut.close();
		} catch (Exception e) {
			throw new Exception(e.getMessage());

		}/* finally {
			// 操作结束，关闭文件
			bf.close();
			fOut.close();
		}*/

	}

	/**
	 * 将数据信息写入到Excel表文件 ，采取传入输出流的方式。
	 * 
	 * @param excel
	 *            Excel表的模型对象
	 * @param out
	 *            OutputStream 输出流
	 * @throws Exception
	 */
	static public void WriteExcel(ExcelModel excel, OutputStream out)
			throws Exception {
		try {
			HSSFWorkbook workbook = ExcelOperator.getInitWorkbook(excel);
			workbook.write(out);

		} catch (Exception e) {
			throw new Exception(e.getMessage());

		} finally {
			out.close();
		}
	}

	/**
	 * 取得填充了数据的工作簿
	 * 
	 * @param excel
	 *            ExcelModel Excel表的模型对象
	 * @return HSSFWorkbook 工作簿对象
	 */
	@SuppressWarnings("deprecation")
	static private HSSFWorkbook getInitWorkbook(ExcelModel excel) {

		// 创建新的Excel 工作簿
		HSSFWorkbook workbook = new HSSFWorkbook();
		// 在Excel工作簿中建一工作表
		HSSFSheet sheet = null;
		String sheetName = excel.getSheetName();
		if (sheetName != null) {
			sheet = workbook.createSheet(sheetName);
		} else {
			sheet = workbook.createSheet();
		}

		// 设置表头字体
		HSSFFont font_h = workbook.createFont();
		font_h.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);

		// 设置格式
		HSSFCellStyle cellStyle = workbook.createCellStyle();
		cellStyle.setFont(font_h);

		// 在索引0的位置创建行（最顶端的行）
		HSSFRow row = sheet.createRow((short) 0);

		List<String> header = excel.getHeader();
		if (header != null) {
			for (int i = 0; i < header.size(); i++) {
				// 在索引0的位置创建单元格（左上端）
				HSSFCell cell = row.createCell((short) i);
				// 定义单元格为字符串类型
				cell.setCellType(HSSFCell.CELL_TYPE_STRING);
				// 设置解码方式
				// cell.setEncoding((short)1);
				// 设置单元格的格式
				cell.setCellStyle(cellStyle);
				// 在单元格中写入表头信息
				cell.setCellValue((String) header.get(i));
			}
		}

		List<ExcelRowData> cdata = excel.getData();
		for (int i = 0; i < cdata.size(); i++) {
			// 从第二行开始
			HSSFRow row1 = sheet.createRow(i + 1);
			ExcelRowData rdata = (ExcelRowData) cdata.get(i);
			// 打印一行数据
			for (int j = 0; j < rdata.getData().size(); j++) {
				HSSFCell cell = row1.createCell((short) j);
				cell.setCellType(HSSFCell.CELL_TYPE_STRING);
				// 设置字符编码方式
				// cell.setEncoding((short)1);
				Object o = rdata.getData().get(j);

				// 造型,使写入到表中的数值型对象恢复为数值型，
				// 这样就可以进行运算了
				if (o instanceof BigDecimal) {
					BigDecimal b = (BigDecimal) o;
					cell.setCellValue(b.doubleValue());

				} else if (o instanceof Integer) {
					Integer it = (Integer) o;
					cell.setCellValue(it.intValue());

				} else if (o instanceof Long) {
					Long l = (Long) o;
					cell.setCellValue(l.intValue());

				} else if (o instanceof Double) {
					Double d = (Double) o;
					cell.setCellValue(d.doubleValue());

				} else if (o instanceof Float) {
					Float f = (Float) o;
					cell.setCellValue(f.floatValue());

				} else {
					cell.setCellValue(o + "");
				}
			}
		}
		return workbook;
	}

	/**
	 * Just to test
	 * 
	 * @param args
	 *            String[]
	 */
	public static void test(){
		List<ExcelRowData> data = new ArrayList<ExcelRowData>();
		List<String> header = new ArrayList<String>();
		header.add("学号");
		header.add("姓名");
		header.add("成绩");
		for (int i = 0; i < 3; i++) {
			ExcelRowData rowDataModel = new ExcelRowData();
			rowDataModel.setData(new ArrayList<String>());
			rowDataModel.getData().add((i + 1) + "");
			rowDataModel.getData().add("Name" + (i + 1));
			rowDataModel.getData().add("" + (80 + i));
			data.add(rowDataModel);
		}
		ExcelModel model = new ExcelModel();
		model.setPath("F:/test.xls");
		model.setHeader((ArrayList) header);
		model.setData((ArrayList) data);
		// model.setHeader(header);
		// model.setData(data);
		try {
			ExcelOperator.WriteExcel(model);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
		
	
	public static void main(String[] args) {
		   test();
	}	
}