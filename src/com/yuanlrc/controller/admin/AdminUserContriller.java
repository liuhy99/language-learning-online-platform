package com.yuanlrc.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yuanlrc.model.PageBean;
import com.yuanlrc.model.User;
import com.yuanlrc.service.GroupService;
import com.yuanlrc.service.JifenGroupService;
import com.yuanlrc.service.UserService;
import com.yuanlrc.tool.PublicStatic;
import com.yuanlrc.tool.Tool;

/*
 * 后台用户管理页面
 * 
 */
@Controller
@RequestMapping("/admin/user")
public class AdminUserContriller {
	
	@Autowired
	UserService userService;
	
	@Autowired
	GroupService groupService;
	
	@Autowired
	JifenGroupService jifenGroupService;
	
	//跳转首页
	@RequestMapping("index.do")
	public String add(HttpServletRequest request, Model model,User user,PageBean<User> page) {
		page = userService.findpage(user,page);
		model.addAttribute("page", page);
		model.addAttribute("quser", user);
		return "jsp/admin/user/index";
	}
	
	//更新
	@RequestMapping("update.do")
	public String update(HttpServletRequest request, Model model,User user) {
		User sessionuser=(User)request.getSession().getAttribute(PublicStatic.USER);
		user.setId(sessionuser.getId());
		userService.update(user);
		return "redirect:/user/index.do";
	}
	
	//删除
	@ResponseBody
	@RequestMapping("del.do")
	public String del(HttpServletRequest request, Model model,User user) {
		return userService.delete(user.getId());
	}
	//重置密码
	@ResponseBody
	@RequestMapping("updatepwd.do")
	public String updatepwd(HttpServletRequest request, Model model,User user) {
		String pwd="123456";
		user.setPwd(Tool.MD5(pwd));
		userService.update(user);
		return "1";
	}
	//重置密码
	@ResponseBody
	@RequestMapping("updateflag.do")
	public String updateflag(HttpServletRequest request, Model model,User user) {
		userService.update(user);
		return "1";
	}
	
	//设置管理员
	@ResponseBody
	@RequestMapping("updategroup.do")
	public String updategroup(HttpServletRequest request, Model model,User user,int groupid) {
		boolean b = groupService.updategroupbyuser(user.getId(), groupid);
		if(b){
			return "1";
		}else{
			return "0";
		}
	}
	
	//删除用户帖子 留言 回帖 图片等信息信息
	@ResponseBody
	@RequestMapping("deluserallinfo.do")
	public String deluserallinfo(HttpServletRequest request, Model model,User user) {
		boolean b = userService.deluserallinfo(user.getId());
		if(b){
			return "1";
		}else{
			return "0";
		}
	}
	@RequestMapping("tooptions.do")
	public String tooptions(HttpServletRequest request, Model model,User user){
		user = userService.findbyid(user);
		model.addAttribute("user", user);
		return "jsp/admin/user/option";
	}
	
	/**
	 * 设置用户vip等级
	 * @param request
	 * @param model
	 * @param user
	 * @return
	 */
	@RequestMapping(value="set_vip.do",method=RequestMethod.GET)
	public String setVip(Model model,User user){
		user = userService.findbyid(user);
		model.addAttribute("user", user);
		model.addAttribute("jifenGroupList", jifenGroupService.find(null));
		return "jsp/admin/user/set_vip";
	}
	
	/**
	 * 设置用户vip等级表单提交
	 * @param userId
	 * @param jifen
	 * @return
	 */
	@RequestMapping(value="set_vip.do",method=RequestMethod.POST)
	public String setVip(Integer userId, String vipLevel){
		User user = new User();
		user.setId(userId);
		user = userService.findbyid(user);
		user.setVipLevel(vipLevel);
		userService.update(user);
		return "redirect:index.do";
	}
}
