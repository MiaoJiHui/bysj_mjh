package com.bysj.jxc.model;

public class User {
	private Integer id;
	private String username;
	private String password;
	private String limitUser;

	public String getLimitUser() {
		return limitUser;
	}
	public void setLimitUser(String limitUser) {
		this.limitUser = limitUser;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
