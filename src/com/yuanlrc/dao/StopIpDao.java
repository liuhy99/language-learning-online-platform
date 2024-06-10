package com.yuanlrc.dao;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yuanlrc.model.PageBean;
import com.yuanlrc.model.StopIp;
import com.yuanlrc.tool.PublicStatic;

@Repository
public class StopIpDao extends SqlSessionDaoSupport{
	String ns="jxust_stop_ip.";
	public List<StopIp> findpage(PageBean<StopIp> page) {
		return this.getSqlSession().selectList(ns+"findpage", page);
	}
	public int findpagecount(PageBean<StopIp> page) {
		return this.getSqlSession().selectOne(ns+"findpagecount", page);
	}
	
	public List<StopIp> select(StopIp StopIp) {
		return this.getSqlSession().selectList(ns+"select", StopIp);
	}

	public void insert(StopIp StopIp) {
		this.getSqlSession().insert(ns+"insert", StopIp);
	}

	public void delete(Integer id) {
		this.getSqlSession().delete(ns+"delete", id);
	}

	public void update(StopIp StopIp) {
		this.getSqlSession().update(ns+"update", StopIp);
	}
	
	public void staticstopip() {
		StopIp stopIp=new StopIp();
		stopIp.setIsuse("1");
		PublicStatic.stopipList=this.getSqlSession().selectList(ns+"select", stopIp);
	}
	
}