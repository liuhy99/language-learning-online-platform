package com.yuanlrc.dao;


import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yuanlrc.model.Info;

@Repository
public class InfoDao extends SqlSessionDaoSupport{
	String ns="jxust_info.";
	
	public Info find(int id) {
		return this.getSqlSession().selectOne(ns+"find", id);
	}

	public void update(Info info) {
		this.getSqlSession().insert(ns+"update", info);
	}

}