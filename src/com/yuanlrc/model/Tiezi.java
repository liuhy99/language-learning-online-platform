package com.yuanlrc.model;
/*
 * 帖子表
 * 
 */
public class Tiezi {
	
    private Integer id;

    //帖子标题
    private String name;

    //创建时间
    private String createtime;

    //创建人
    private Integer createuserid;

    //板块id
    private Integer bankuaiId;

    //帖子的html内容
    private String contenthtml;

    //帖子的文本内容（用于做摘要使用）
    private String contenttxt;
    //主题的id
    private String zhutiid;
    //最后编辑内容记录
    private String lastupdate;
    //是否为精华 1，2，3
    private String jinghua;
    //是否为置顶 1板块置顶 2是全局置顶
    private String zhiding;
    //查看次数
    private String findcount;
    //最后回复的id
    private String huifuid;

    //主题名称
    private String zhutiname;
    
    //板块名称
    private String bankuainame;
    //最后回复用户id
    private String huifuuserid;
    //最后回复用户名称
    private String huifuusername;
    //最后回复时间
    private String huifucreatetime;
    //回复总数
    private String huifucount;
    //帖子的userid
    private String tieziuserid;
    //帖子的用户名称
    private String tieziusername;
    //帖子的用户图片
    private String tieziuserimg;
    //排序
    private String orderby;
    
    //用于显示 的二级目录
    private String yuming;
    
    
    private String starttime;
    
    private String endtime;
    
	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getYuming() {
		return yuming;
	}

	public void setYuming(String yuming) {
		this.yuming = yuming;
	}

	public String getOrderby() {
		return orderby;
	}

	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}

	public String getTieziuserimg() {
		return tieziuserimg;
	}

	public void setTieziuserimg(String tieziuserimg) {
		this.tieziuserimg = tieziuserimg;
	}

	public String getTieziuserid() {
		return tieziuserid;
	}

	public void setTieziuserid(String tieziuserid) {
		this.tieziuserid = tieziuserid;
	}

	public String getTieziusername() {
		return tieziusername;
	}

	public void setTieziusername(String tieziusername) {
		this.tieziusername = tieziusername;
	}

	public String getHuifucount() {
		return huifucount;
	}

	public void setHuifucount(String huifucount) {
		this.huifucount = huifucount;
	}

	public String getHuifuuserid() {
		return huifuuserid;
	}

	public void setHuifuuserid(String huifuuserid) {
		this.huifuuserid = huifuuserid;
	}

	public String getHuifuusername() {
		return huifuusername;
	}

	public void setHuifuusername(String huifuusername) {
		this.huifuusername = huifuusername;
	}

	public String getHuifucreatetime() {
		return huifucreatetime;
	}

	public void setHuifucreatetime(String huifucreatetime) {
		this.huifucreatetime = huifucreatetime;
	}

	public String getBankuainame() {
		return bankuainame;
	}

	public void setBankuainame(String bankuainame) {
		this.bankuainame = bankuainame;
	}

	public String getZhutiname() {
		return zhutiname;
	}

	public void setZhutiname(String zhutiname) {
		this.zhutiname = zhutiname;
	}

	public String getJinghua() {
		return jinghua;
	}

	public void setJinghua(String jinghua) {
		this.jinghua = jinghua;
	}

	public String getZhiding() {
		return zhiding;
	}

	public void setZhiding(String zhiding) {
		this.zhiding = zhiding;
	}

	public String getFindcount() {
		return findcount;
	}

	public void setFindcount(String findcount) {
		this.findcount = findcount;
	}

	public String getHuifuid() {
		return huifuid;
	}

	public void setHuifuid(String huifuid) {
		this.huifuid = huifuid;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_tiezi.contenthtml
     *
     * @return the value of jxust_tiezi.contenthtml
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    
    public Integer getId() {
        return id;
    }

    public String getZhutiid() {
		return zhutiid;
	}

	public void setZhutiid(String zhutiid) {
		this.zhutiid = zhutiid;
	}

	public String getLastupdate() {
		return lastupdate;
	}

	public void setLastupdate(String lastupdate) {
		this.lastupdate = lastupdate;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_tiezi.id
     *
     * @param id the value for jxust_tiezi.id
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_tiezi.name
     *
     * @return the value of jxust_tiezi.name
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_tiezi.name
     *
     * @param name the value for jxust_tiezi.name
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_tiezi.createtime
     *
     * @return the value of jxust_tiezi.createtime
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public String getCreatetime() {
        return createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_tiezi.createtime
     *
     * @param createtime the value for jxust_tiezi.createtime
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_tiezi.createuserid
     *
     * @return the value of jxust_tiezi.createuserid
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public Integer getCreateuserid() {
        return createuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_tiezi.createuserid
     *
     * @param createuserid the value for jxust_tiezi.createuserid
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public void setCreateuserid(Integer createuserid) {
        this.createuserid = createuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_tiezi.bankuai_id
     *
     * @return the value of jxust_tiezi.bankuai_id
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public Integer getBankuaiId() {
        return bankuaiId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_tiezi.bankuai_id
     *
     * @param bankuaiId the value for jxust_tiezi.bankuai_id
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public void setBankuaiId(Integer bankuaiId) {
        this.bankuaiId = bankuaiId;
    }
    
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column jxust_tiezi.contenthtml
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
   
    public String getContenthtml() {
        return contenthtml;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_tiezi.contenthtml
     *
     * @param contenthtml the value for jxust_tiezi.contenthtml
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public void setContenthtml(String contenthtml) {
        this.contenthtml = contenthtml;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jxust_tiezi.contenttxt
     *
     * @return the value of jxust_tiezi.contenttxt
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public String getContenttxt() {
        return contenttxt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jxust_tiezi.contenttxt
     *
     * @param contenttxt the value for jxust_tiezi.contenttxt
     *
     * @mbggenerated Thu May 04 11:17:31 CST 2017
     */
    public void setContenttxt(String contenttxt) {
        this.contenttxt = contenttxt;
    }
}