package com.bysj.jxc.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.dao.DaoSupport;
import com.bysj.jxc.model.User;
import com.bysj.util.pageData.PageData;

@Service
public class LoginService {
	 @Resource(name="daoSupport")
	 private DaoSupport dao ;
	 
	public List<PageData> listPd(PageData pd)throws Exception{
		return (List<PageData>) dao.listAll("UserMapper.listPd", pd);
	}
	 @SuppressWarnings("unchecked")
	public List<User> getUser(User user) throws Exception{
		 return (List<User>)dao.listAll("UserMapper.listAll", user);
	 }
	 public PageData listById(PageData pd)throws Exception{
		 return (PageData)dao.listById("UserMapper.findById", pd);
	 }
	 public boolean update(PageData pd){
		 try{
			 dao.update("UserMapper.update", pd);
			 return true;
		 }catch(Exception e){
			 e.printStackTrace();
			 return false;
		 }
	 }
	 public void updateAll(PageData pd){
		 try{
			 dao.update("UserMapper.update2", pd);
		 }catch(Exception e){
			 e.printStackTrace();
		 }
	 }
	 public void insert(PageData pd)throws Exception{
		 dao.insert("UserMapper.insert", pd);
	 }
	public void delete(PageData pd) throws Exception{
		dao.delete("UserMapper.delete", pd);
		
	}
}
