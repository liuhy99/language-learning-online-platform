package com.yuanlrc.model;
/*
 * 用户和组的关联表 目前设计为1对多
 * 
 */
public class GroupUser {
	
	
    private Integer id;

    //用户id
    private Integer userid;

    //用户组id
    private Integer groupid;
    
    

    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_group_user.id
     *
     * @param id the value for jxust_group_user.id
     *
     * @mbggenerated Wed May 10 14:42:20 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_group_user.userid
     *
     * @return the value of jxust_group_user.userid
     *
     * @mbggenerated Wed May 10 14:42:20 CST 2017
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_group_user.userid
     *
     * @param userid the value for jxust_group_user.userid
     *
     * @mbggenerated Wed May 10 14:42:20 CST 2017
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_group_user.groupid
     *
     * @return the value of jxust_group_user.groupid
     *
     * @mbggenerated Wed May 10 14:42:20 CST 2017
     */
    public Integer getGroupid() {
        return groupid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_group_user.groupid
     *
     * @param groupid the value for jxust_group_user.groupid
     *
     * @mbggenerated Wed May 10 14:42:20 CST 2017
     */
    public void setGroupid(Integer groupid) {
        this.groupid = groupid;
    }
}