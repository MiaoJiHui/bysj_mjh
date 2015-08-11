package com.bysj.jxc.out.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.dao.DaoSupport;
import com.bysj.jxc.out.model.OutInfo;
import com.bysj.util.pageData.PageData;

@Service
public class OutInfoService {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao ;
	
	@SuppressWarnings("unchecked")
	public List<OutInfo> listPd(PageData pd)throws Exception{
		 return (List<OutInfo>) dao.listAll("OutInfoMapper.listPd", pd);
	}
	public boolean insert(PageData pd){
		try{
			dao.insert("OutInfoMapper.insert",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(PageData pd){
		try{
			dao.update("OutInfoMapper.update", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean delete(PageData pd){
		try{
			dao.delete("OutInfoMapper.delete",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public PageData listById(PageData pd)throws Exception{
		return (PageData) dao.listById("OutInfoMapper.listById", pd);
	}
}
