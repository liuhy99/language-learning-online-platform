package com.yuanlrc.model;


/*
 * 友情连接
 * 
 */


public class Link {
    private Integer id;

    //链接名称
    private String name;

    //链接地址
    private String link;

    //创建人
    private Integer createuserid;

    //创建时间
    private String createtime;

    //排序
    private Integer orderby;

    //板块id
    private Integer bankuaiid;
    
    //板块名称 用于显示
    private String bankuainame;

    //图片地址
    private String img;

    //类型
    private String type;

    //是否前台显示
    private String isshow;
    
    //创建人 用于反显
    private String username;
    
    
    public String getBankuainame() {
		return bankuainame;
	}

	public void setBankuainame(String bankuainame) {
		this.bankuainame = bankuainame;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getIsshow() {
		return isshow;
	}

	public void setIsshow(String isshow) {
		this.isshow = isshow;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.id
     *
     * @return the value of jxust_link.id
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.id
     *
     * @param id the value for jxust_link.id
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.name
     *
     * @return the value of jxust_link.name
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.name
     *
     * @param name the value for jxust_link.name
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.link
     *
     * @return the value of jxust_link.link
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public String getLink() {
        return link;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.link
     *
     * @param link the value for jxust_link.link
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setLink(String link) {
        this.link = link;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.createuserid
     *
     * @return the value of jxust_link.createuserid
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public Integer getCreateuserid() {
        return createuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.createuserid
     *
     * @param createuserid the value for jxust_link.createuserid
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setCreateuserid(Integer createuserid) {
        this.createuserid = createuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.createtime
     *
     * @return the value of jxust_link.createtime
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public String getCreatetime() {
        return createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.createtime
     *
     * @param createtime the value for jxust_link.createtime
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.orderby
     *
     * @return the value of jxust_link.orderby
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public Integer getOrderby() {
        return orderby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.orderby
     *
     * @param orderby the value for jxust_link.orderby
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setOrderby(Integer orderby) {
        this.orderby = orderby;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.bankuaiid
     *
     * @return the value of jxust_link.bankuaiid
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public Integer getBankuaiid() {
        return bankuaiid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.bankuaiid
     *
     * @param bankuaiid the value for jxust_link.bankuaiid
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setBankuaiid(Integer bankuaiid) {
        this.bankuaiid = bankuaiid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.img
     *
     * @return the value of jxust_link.img
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public String getImg() {
        return img;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.img
     *
     * @param img the value for jxust_link.img
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setImg(String img) {
        this.img = img;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_link.type
     *
     * @return the value of jxust_link.type
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_link.type
     *
     * @param type the value for jxust_link.type
     *
     * @mbggenerated Mon May 15 14:31:07 CST 2017
     */
    public void setType(String type) {
        this.type = type;
    }
}