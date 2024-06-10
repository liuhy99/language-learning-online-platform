package com.yuanlrc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yuanlrc.dao.GroupDao;
import com.yuanlrc.model.Group;
import com.yuanlrc.model.GroupUser;
import com.yuanlrc.model.PageBean;


@Service
public class GroupService{
	@Autowired
	GroupDao GroupDao;
	
	public PageBean<Group> findpage(Group Group,PageBean<Group> page) {
		page.setBean(Group);
		int count = GroupDao.findpagecount(page);
		page.setTotalRecords(count);
		List<Group> list = GroupDao.findpage(page);
		page.setList(list);
		return page ;
	}
	

	public void insert(Group Group) {
		GroupDao.insert(Group);
	}

	public String delete(Integer id) {
		String result="1";
		GroupDao.delete(id);
		return result;
	}
	public void update(Group Group) {
		GroupDao.update(Group);
		
	}
	public Group findbyid(Group Group) {
		List<Group> list= GroupDao.find(Group);
		if(list.size()>0){
			Group=list.get(0);
		}
		return Group;
	}
	
	public List<Group> findbyparentId(Group Group) {
		List<Group> list= GroupDao.find(Group);
		return list;
	}


	public List<Group> find(Group Group) {
		// TODO Auto-generated method stub
		return GroupDao.find(Group);
	}
	
	public Group findbyGroupid(int id) {
		Group Group=new Group();
		Group.setId(id);
		List<Group> list= GroupDao.find(Group);
		if(list.size()>0){
			Group=list.get(0);
		}
		return Group;
	}
	
	public boolean updategroupbyuser(int userid,int groupid){
		boolean b=true;
		try {
			GroupDao.delgroupbyuser(userid);
			GroupUser groupUser=new GroupUser();
			groupUser.setGroupid(groupid);
			groupUser.setUserid(userid);
			GroupDao.insertgroupUser(groupUser);
		} catch (Exception e) {
			e.printStackTrace();
			b=false;
		}
		return b;
	}
}
