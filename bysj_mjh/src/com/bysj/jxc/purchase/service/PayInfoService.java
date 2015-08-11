package com.bysj.jxc.purchase.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.dao.DaoSupport;
import com.bysj.jxc.purchase.model.PayInfo;
import com.bysj.util.pageData.PageData;

@Service
public class PayInfoService {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao ;
	
	@SuppressWarnings("unchecked")
	public List<PayInfo> listPd(PageData pd)throws Exception{
		 return (List<PayInfo>) dao.listAll("PayInfoMapper.listPd", pd);
	}
	public boolean insert(PageData pd){
		try{
			dao.insert("PayInfoMapper.insert",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(PageData pd){
		try{
			dao.update("PayInfoMapper.update", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean delete(PageData pd){
		try{
			dao.delete("PayInfoMapper.delete",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public PageData listById(PageData pd)throws Exception{
		return (PageData) dao.listById("PayInfoMapper.listById", pd);
	}
}
