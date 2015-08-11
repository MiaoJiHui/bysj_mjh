package com.bysj.jxc.basicInfo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.basicInfo.model.StorageInfo;
import com.bysj.jxc.dao.DaoSupport;
import com.bysj.util.pageData.PageData;

@Service
public class StorageInfoService {
	@Resource(name="daoSupport")
	private DaoSupport dao ;
	
	@SuppressWarnings("unchecked")
	public List<StorageInfo> listPd(PageData pd)throws Exception{
		return (List<StorageInfo>) dao.listAll("StorageInfoMapper.listPd", pd);
	}
	public boolean insert(PageData pd){
		try{
			dao.insert("StorageInfoMapper.insert",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean delete(PageData pd){
		try{
			dao.delete("StorageInfoMapper.delete", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(PageData pd){
		try{
			dao.update("StorageInfoMapper.update", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public PageData listById(PageData pd)throws Exception{
		return (PageData) dao.listById("StorageInfoMapper.listById", pd);
	}
	
}
