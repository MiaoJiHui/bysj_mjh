package com.bysj.jxc.stock.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.dao.DaoSupport;
import com.bysj.jxc.stock.model.StockInfo;
import com.bysj.util.pageData.PageData;

@Service
public class StockInfoService {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao ;
	
	@SuppressWarnings("unchecked")
	public List<StockInfo> listPd(PageData pd)throws Exception{
		 return (List<StockInfo>) dao.listAll("StockInfoMapper.listPd", pd);
	}
	public boolean insert(PageData pd){
		try{
			dao.insert("StockInfoMapper.insert",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(PageData pd){
		try{
			dao.update("StockInfoMapper.update", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean delete(PageData pd){
		try{
			dao.delete("StockInfoMapper.delete",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public PageData listById(PageData pd)throws Exception{
		return (PageData) dao.listById("StockInfoMapper.listById", pd);
	}
}
