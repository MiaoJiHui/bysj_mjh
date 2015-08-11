package com.bysj.util.excel;

import java.util.List;

public class ExcelRowData {
	  private List<String>  data;
	  private int length;//此行的数量
	public List<String> getData() {
		return data;
	}
	public void setData(List<String> data) {
		this.data = data;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	   
}
