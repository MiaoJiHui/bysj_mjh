package com.bysj.jxc.basicInfo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.basicInfo.model.SupplierInfo;
import com.bysj.jxc.dao.DaoSupport;
import com.bysj.util.pageData.PageData;

@Service
public class SupplierInfoService {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao ;
	
	@SuppressWarnings("unchecked")
	public List<SupplierInfo> listPd(PageData pd)throws Exception{
		 return (List<SupplierInfo>) dao.listAll("SupplierInfoMapper.listPd", pd);
	}
	public boolean insert(PageData pd){
		try{
			dao.insert("SupplierInfoMapper.insert",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(PageData pd){
		try{
			dao.update("SupplierInfoMapper.update", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean delete(PageData pd){
		try{
			dao.delete("SupplierInfoMapper.delete",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public PageData listById(PageData pd)throws Exception{
		return (PageData) dao.listById("SupplierInfoMapper.listById", pd);
	}
}
