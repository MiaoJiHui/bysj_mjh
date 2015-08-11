package com.bysj.jxc.purchase.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.dao.DaoSupport;
import com.bysj.jxc.purchase.model.InInfo;
import com.bysj.util.pageData.PageData;

@Service
public class InInfoService {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao ;
	
	@SuppressWarnings("unchecked")
	public List<InInfo> listPd(PageData pd)throws Exception{
		 return (List<InInfo>) dao.listAll("InInfoMapper.listPd", pd);
	}
	public boolean insert(PageData pd){
		try{
			dao.insert("InInfoMapper.insert",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(PageData pd){
		try{
			dao.update("InInfoMapper.update", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean delete(PageData pd){
		try{
			dao.delete("InInfoMapper.delete",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public PageData listById(PageData pd)throws Exception{
		return (PageData) dao.listById("InInfoMapper.listById", pd);
	}
}
