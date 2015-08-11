package com.bysj.jxc.basicInfo.model;

import java.util.Date;

public class GoodsInfo {
	private Integer id;
	private String goods_id;
	private String goods_name;
	private String goods_type;    //货品类别
	private String goods_scale;  //规格型号
	private String goods_unit;  //货品单位
	private Integer count;
	private String goods_supplier;  //供应商
	public String getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}
	private double price;
	private String storage;  //仓库
	private Date in_date;   //入库时间
	private String update_by; //最后更新人
	private String remark;
public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	//	private Date expend_field;
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}

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
	public String getGoods_type() {
		return goods_type;
	}
	public void setGoods_type(String goods_type) {
		this.goods_type = goods_type;
	}
	public String getGoods_scale() {
		return goods_scale;
	}
	public void setGoods_scale(String goods_scale) {
		this.goods_scale = goods_scale;
	}
	public String getGoods_unit() {
		return goods_unit;
	}
	public void setGoods_unit(String goods_unit) {
		this.goods_unit = goods_unit;
	}
	public Integer getNum() {
		return count;
	}
	public void setNum(Integer count) {
		this.count = count;
	}
	public String getGoods_supplier() {
		return goods_supplier;
	}
	public void setGoods_supplier(String goods_supplier) {
		this.goods_supplier = goods_supplier;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getStorage() {
		return storage;
	}
	public void setStorage(String storage) {
		this.storage = storage;
	}
	public Date getIn_date() {
		return in_date;
	}
	public void setIn_date(Date in_date) {
		this.in_date = in_date;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	private String comment; //备注
}
