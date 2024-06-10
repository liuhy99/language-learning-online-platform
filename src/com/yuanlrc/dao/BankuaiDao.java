package com.yuanlrc.dao;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yuanlrc.model.Bankuai;
import com.yuanlrc.model.PageBean;

@Repository
public class BankuaiDao extends SqlSessionDaoSupport{
	String ns="jxust_bankuai.";
	public List<Bankuai> findpage(PageBean<Bankuai> page) {
		return this.getSqlSession().selectList(ns+"findpage", page);
	}
	public int findpagecount(PageBean<Bankuai> page) {
		return this.getSqlSession().selectOne(ns+"findpagecount", page);
	}
	public int findmaxorderby(int parentid) {
		return this.getSqlSession().selectOne(ns+"findmaxorderby", parentid);
	}
	
	public List<Bankuai> find(Bankuai bankuai) {
		return this.getSqlSession().selectList(ns+"find", bankuai);
	}
	public List<Bankuai> select(Bankuai bankuai) {
		return this.getSqlSession().selectList(ns+"select", bankuai);
	}

	public void insert(Bankuai bankuai) {
		this.getSqlSession().insert(ns+"insert", bankuai);
	}

	public void delete(Integer id) {
		this.getSqlSession().delete(ns+"delete", id);
	}

	public void update(Bankuai bankuai) {
		this.getSqlSession().update(ns+"update", bankuai);
	}
	public Bankuai findfbankuaibyid(int parseInt) {
		return this.getSqlSession().selectOne(ns+"findfbankuaibyid", parseInt);
	}

}