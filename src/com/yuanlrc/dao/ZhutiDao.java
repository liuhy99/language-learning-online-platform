package com.yuanlrc.dao;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yuanlrc.model.Zhuti;

@Repository
public class ZhutiDao extends SqlSessionDaoSupport{
	String ns="jxust_zhuti.";
	
	public List<Zhuti> find(Zhuti zhuti) {
		return this.getSqlSession().selectList(ns+"find", zhuti);
	}
	
	public int findmaxorderby(int bankuaiId) {
		return this.getSqlSession().selectOne(ns+"findmaxorderby", bankuaiId);
	}

	public void insert(Zhuti zhuti) {
		this.getSqlSession().insert(ns+"insert", zhuti);
	}

	public void delete(Integer id) {
		this.getSqlSession().delete(ns+"delete", id);
	}
	public void deletebyzhuti(Integer id) {
		this.getSqlSession().delete(ns+"deletebyzhuti", id);
	}

	public void update(Zhuti zhuti) {
		this.getSqlSession().update(ns+"update", zhuti);
	}

}