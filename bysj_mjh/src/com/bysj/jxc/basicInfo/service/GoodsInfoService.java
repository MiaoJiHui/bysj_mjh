package com.bysj.jxc.basicInfo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bysj.jxc.basicInfo.model.GoodsInfo;
import com.bysj.jxc.dao.DaoSupport;
import com.bysj.util.pageData.PageData;

@Service
public class GoodsInfoService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	@SuppressWarnings("unchecked")
	public List<GoodsInfo> listPd(PageData pd) throws Exception{
		return (List<GoodsInfo>) dao.findForList("GoodsInfoMapper.listPd", pd);
	}
	@SuppressWarnings("unchecked")
	public List<GoodsInfo> listAll() throws Exception{
		return (List<GoodsInfo>) dao.findForList("GoodsInfoMapper.listAll");
	}
	//查找出下拉框中的数据
	@SuppressWarnings("unchecked")
	public List<String> listGoodsType() throws Exception{
		return (List<String>) dao.findForList("GoodsInfoMapper.listGoodsType");
	}
	public void insert(PageData pd)throws Exception{
		dao.insert("GoodsInfoMapper.insert", pd);
	}
	public void delete(PageData pd)throws Exception{
		dao.delete("GoodsInfoMapper.delete", pd);
	}
	public  PageData listById(PageData pd) throws Exception{
		return (PageData) dao.listById("GoodsInfoMapper.listById", pd);
	}
	@SuppressWarnings("unchecked")
	public List<PageData> listPageData() throws Exception{
		return  (List<PageData>) dao.listById("GoodsInfoMapper.listPageData", null);
	}
	public void update(PageData pd)throws Exception{
		dao.update("GoodsInfoMapper.update", pd);
	}
}
