package com.yuanlrc.dao;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yuanlrc.model.Pic;

@Repository
public class PicDao extends SqlSessionDaoSupport{
	String ns="jxust_pic.";
	public List<Pic> selectbyindex(Pic Pic) {
		return this.getSqlSession().selectList(ns+"selectbyindex", Pic);
	}

	public void insert(Pic Pic) {
		this.getSqlSession().insert(ns+"insert", Pic);
	}

	public void delete(Integer id) {
		this.getSqlSession().delete(ns+"delete", id);
	}
	//根据帖子删除图片
	public void deletebytieziid(Integer tieziid) {
		this.getSqlSession().delete(ns+"deletebytieziid", tieziid);
	}

	public void update(Pic Pic) {
		this.getSqlSession().update(ns+"update", Pic);
	}
}