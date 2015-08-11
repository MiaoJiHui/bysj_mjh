package com.bysj.test;

public class ExcelVo {
	private String BRAND ;  //品牌
	private String MGFPN;  //料号
	private Integer QTY;   //数量
	private String MGFPN_2;  //待匹配的料号
	private Double LEAST;   //最小值   ,因为给定s的excel中有空所以只能用String修饰""
	private Double MOST;    //最大值
	public String getBRAND() {
		return BRAND;
	}
	public void setBRAND(String bRAND) {
		BRAND = bRAND;
	}
	public String getMGFPN() {
		return MGFPN;
	}
	public void setMGFPN(String mGFPN) {
		MGFPN = mGFPN;
	}

	public Integer getQTY() {
		return QTY;
	}
	public void setQTY(Integer qTY) {
		QTY = qTY;
	}
	public String getMGFPN_2() {
		return MGFPN_2;
	}
	public void setMGFPN_2(String mGFPN_2) {
		MGFPN_2 = mGFPN_2;
	}
	public Double getLEAST() {
		return LEAST;
	}
	public void setLEAST(Double lEAST) {
		LEAST = lEAST;
	}
	public Double getMOST() {
		return MOST;
	}
	public void setMOST(Double mOST) {
		MOST = mOST;
	}
}
