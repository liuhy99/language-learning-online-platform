package com.yuanlrc.dao;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yuanlrc.model.Jifen;
import com.yuanlrc.model.PageBean;

@Repository
public class JifenDao extends SqlSessionDaoSupport{
	String ns="jxust_jifen.";
	public List<Jifen> findpage(PageBean<Jifen> page) {
		return this.getSqlSession().selectList(ns+"findpage", page);
	}
	public int findpagecount(PageBean<Jifen> page) {
		return this.getSqlSession().selectOne(ns+"findpagecount", page);
	}
	public int findnowcount(Jifen jifen) {
		return this.getSqlSession().selectOne(ns+"findnowcount", jifen);
	}
	
	public List<Jifen> find(Jifen Jifen) {
		return this.getSqlSession().selectList(ns+"find", Jifen);
	}

	public void insert(Jifen Jifen) {
		this.getSqlSession().insert(ns+"insert", Jifen);
	}

	public void delete(Integer id) {
		this.getSqlSession().delete(ns+"delete", id);
	}

	public void update(Jifen Jifen) {
		this.getSqlSession().update(ns+"update", Jifen);
	}
}