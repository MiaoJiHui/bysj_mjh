package com.bysj.jxc.purchase.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.dao.DaoSupport;
import com.bysj.jxc.purchase.model.PurchaseOrder;
import com.bysj.util.pageData.PageData;

@Service
public class PurchaseOrderService {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao ;
	
	@SuppressWarnings("unchecked")
	public List<PurchaseOrder> listPd(PageData pd)throws Exception{
		 return (List<PurchaseOrder>) dao.listAll("PurchaseOrderMapper.listPd", pd);
	}
	public boolean insert(PageData pd){
		try{
			dao.insert("PurchaseOrderMapper.insert",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(PageData pd){
		try{
			dao.update("PurchaseOrderMapper.update", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean delete(PageData pd){
		try{
			dao.delete("PurchaseOrderMapper.delete",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public PageData listById(PageData pd)throws Exception{
		return (PageData) dao.listById("PurchaseOrderMapper.listById", pd);
	}
}
