package com.bysj.jxc.purchase.model;

import java.util.Date;

public class InInfo {
	private Integer id;
	private String goods_id;
	private String goods_name;
	private Integer count;
	private String storage_id;
	private String storage_address;
	private Date in_date;
	private String charge_man;
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
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getStorage_id() {
		return storage_id;
	}
	public void setStorage_id(String storage_id) {
		this.storage_id = storage_id;
	}
	public String getStorage_address() {
		return storage_address;
	}
	public void setStorage_address(String storage_address) {
		this.storage_address = storage_address;
	}
	public Date getIn_date() {
		return in_date;
	}
	public void setIn_date(Date in_date) {
		this.in_date = in_date;
	}
	public String getCharge_man() {
		return charge_man;
	}
	public void setCharge_man(String charge_man) {
		this.charge_man = charge_man;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
