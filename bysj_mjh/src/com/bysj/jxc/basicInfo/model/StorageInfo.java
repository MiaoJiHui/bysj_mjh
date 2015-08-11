package com.bysj.jxc.basicInfo.model;

public class StorageInfo {
	private Integer id;
	private String storage_id;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStorage_id() {
		return storage_id;
	}
	public void setStorage_id(String storage_id) {
		this.storage_id = storage_id;
	}
	public String getStorage_name() {
		return storage_name;
	}
	public void setStorage_name(String storage_name) {
		this.storage_name = storage_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLinkman() {
		return linkman;
	}
	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	public String getLinkman_phone() {
		return linkman_phone;
	}
	public void setLinkman_phone(String linkman_phone) {
		this.linkman_phone = linkman_phone;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	private String storage_name;
	private String address;
	private String scale;
	private String type ;
	private String linkman;
	private String linkman_phone;
	private String remark;
}
