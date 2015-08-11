package com.bysj.jxc.basicInfo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.basicInfo.model.StaffInfo;
import com.bysj.jxc.dao.DaoSupport;
import com.bysj.util.pageData.PageData;

@Service
public class StaffInfoService {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao ;
	
	@SuppressWarnings("unchecked")
	public List<StaffInfo> listPd(PageData pd)throws Exception{
		 return (List<StaffInfo>) dao.listAll("StaffInfoMapper.listPd", pd);
	}
	public boolean insert(PageData pd){
		try{
			dao.insert("StaffInfoMapper.insert",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean update(PageData pd){
		try{
			dao.update("StaffInfoMapper.update", pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public boolean delete(PageData pd){
		try{
			dao.delete("StaffInfoMapper.delete",pd);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
	}
	public PageData listById(PageData pd)throws Exception{
		return (PageData) dao.listById("StaffInfoMapper.listById", pd);
	}
}
