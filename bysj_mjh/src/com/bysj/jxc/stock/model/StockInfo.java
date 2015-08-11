package com.bysj.jxc.stock.model;

public class StockInfo {
	private Integer id;
	private String goods_id;
	private String goods_name;
	private Integer in_count;
	private Integer out_count;
	private Integer remain_count;
	private String remark;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public Integer getIn_count() {
		return in_count;
	}
	public void setIn_count(Integer in_count) {
		this.in_count = in_count;
	}
	public Integer getOut_count() {
		return out_count;
	}
	public void setOut_count(Integer out_count) {
		this.out_count = out_count;
	}
	public Integer getRemain_count() {
		return remain_count;
	}
	public void setRemain_count(Integer remain_count) {
		this.remain_count = remain_count;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
