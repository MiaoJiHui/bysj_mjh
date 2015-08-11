package com.bysj.jxc.purchase.model;

public class PayInfo {
     private Integer id ;
     private String supplier_id;
     private String supplier_name;
     private String pay_type;
     private String pay_id; //支付账号
     private String prepay_money;
     private String sum_money;
     private String pay_state;
     private String update_by;
     public String getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}
	private String remark;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	public String getPay_id() {
		return pay_id;
	}
	public void setPay_id(String pay_id) {
		this.pay_id = pay_id;
	}
	public String getPrepay_money() {
		return prepay_money;
	}
	public void setPrepay_money(String prepay_money) {
		this.prepay_money = prepay_money;
	}
	public String getSum_money() {
		return sum_money;
	}
	public void setSum_money(String sum_money) {
		this.sum_money = sum_money;
	}
	public String getPay_state() {
		return pay_state;
	}
	public void setPay_state(String pay_state) {
		this.pay_state = pay_state;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
