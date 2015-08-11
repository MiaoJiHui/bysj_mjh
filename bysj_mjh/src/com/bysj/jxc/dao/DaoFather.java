package com.bysj.jxc.dao;


public interface DaoFather {
	
	public Object listAll(String str, Object obj) throws Exception;

	public Object ListAll(String id) throws Exception;     //重载
	
	public Object listById(String id) throws Exception ;
	
	public Object insert(String str, Object obj) throws Exception;
	
	public Object delete(String str, Object obj) throws Exception;
	
	public Object update(String str, Object obj) throws Exception;

	public Object listById(String id, Object obj) throws Exception;

	
}
