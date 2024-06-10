package com.yuanlrc.dao;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yuanlrc.model.PageBean;
import com.yuanlrc.model.User;

@Repository
public class UserDao extends SqlSessionDaoSupport{
	String ns="jxust_user.";
	public List<User> findpage(PageBean<User> page) {
		return this.getSqlSession().selectList(ns+"findpage", page);
	}
	public int findpagecount(PageBean<User> page) {
		return this.getSqlSession().selectOne(ns+"findpagecount", page);
	}
	public int findmaxorderby(int parentid) {
		return this.getSqlSession().selectOne(ns+"findmaxorderby", parentid);
	}
	
	public List<User> find(User User) {
		return this.getSqlSession().selectList(ns+"find", User);
	}

	public void insert(User User) {
		this.getSqlSession().insert(ns+"insert", User);
	}

	public void delete(Integer id) {
		this.getSqlSession().delete(ns+"delete", id);
	}

	public void update(User User) {
		this.getSqlSession().update(ns+"update", User);
	}
	public void updatejifen(Integer userid) {
		this.getSqlSession().update(ns+"updatejifen", userid);
	}
	public Map<String, Object> userjifengroup(User user) {
		return this.getSqlSession().selectOne(ns+"getjifengroup", user);
	}
	public Map<String, Object> findziliao(User user) {
		return this.getSqlSession().selectOne(ns+"findziliao", user);
	}
	public void updateuseronlinetime(User user) {
		this.getSqlSession().update(ns+"updateuseronlinetime", user.getId());
	}

}