package com.bysj.jxc.dao;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.bysj.jxc.basicInfo.model.GoodsInfo;
import com.bysj.util.pageData.PageData;
import com.ibatis.sqlmap.client.SqlMapClient;

@Repository("daoSupport")
public class DaoSupport implements DaoFather {

	@Resource(name="sqlMapClient")
	private SqlMapClient sqlMapClient;
	
	@Override
	public Object listAll(String str ,Object obj) throws Exception {
			return sqlMapClient.queryForList(str, obj);
	}

	@Override
	public Object listById(String id , Object obj) throws Exception {
		return sqlMapClient.queryForObject(id, obj);
	}
	@Override
    public Object ListAll(String id)throws Exception{
    	return sqlMapClient.queryForList(id);
    }
	@Override
	public Object insert(String str , Object obj)throws Exception {
		return sqlMapClient.insert(str, obj);
	}

	public Object update(String str , Object obj)throws Exception {
        return sqlMapClient.update(str, obj);
		
	}

	@Override
	public Object delete(String str , Object obj)throws Exception {
		return sqlMapClient.delete(str, obj);
		
	}

	public Object findForList(String string, Object obj) {
		// TODO Auto-generated method stub
		try {
			return sqlMapClient.queryForList(string, obj);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public Object findForList(String string) {
		// TODO Auto-generated method stub
		try {
			return sqlMapClient.queryForList(string);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Object listById(String id) throws Exception {
		return sqlMapClient.queryForObject(id);
	}


}
