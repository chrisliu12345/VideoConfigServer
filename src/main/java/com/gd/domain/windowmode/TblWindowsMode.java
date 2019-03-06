package com.gd.domain.windowmode;

import com.gd.domain.base.SerializID;

import java.util.Date;
import java.util.List;


/**
 *
 * @author tangjinhui
 * @email 100274718@qq.com
 * @date 2017-12-28 18:32:19
 */
public class TblWindowsMode extends SerializID {

	//
	private String name;
	//
	private Integer width;
	//
	private Integer height;
	//
	private Integer windowcount;
	//
	private String creator;
	//
	private Date createtime;

	private String status;  //1 启用，0 停用


	private String type; //类型： 1快捷配置  2自定义配置
	private String disflag; //是否展示在列表 1是 0否
	private int sequence; //排序号--数字


 	private List<TblWindowsModeDetail> details;


	/**
	 * 设置：
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 获取：
	 */
	public String getName() {
		return name;
	}
	/**
	 * 设置：
	 */
	public void setWidth(Integer width) {
		this.width = width;
	}
	/**
	 * 获取：
	 */
	public Integer getWidth() {
		return width;
	}
	/**
	 * 设置：
	 */
	public void setHeight(Integer height) {
		this.height = height;
	}
	/**
	 * 获取：
	 */
	public Integer getHeight() {
		return height;
	}
	/**
	 * 设置：
	 */
	public void setWindowcount(Integer windowcount) {
		this.windowcount = windowcount;
	}
	/**
	 * 获取：
	 */
	public Integer getWindowcount() {
		return windowcount;
	}
	/**
	 * 设置：
	 */
	public void setCreator(String creator) {
		this.creator = creator;
	}
	/**
	 * 获取：
	 */
	public String getCreator() {
		return creator;
	}
	/**
	 * 设置：
	 */
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	/**
	 * 获取：
	 */
	public Date getCreatetime() {
		return createtime;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDisflag() {
		return disflag;
	}

	public void setDisflag(String disflag) {
		this.disflag = disflag;
	}

	public int getSequence() {
		return sequence;
	}

	public void setSequence(int sequence) {
		this.sequence = sequence;
	}

	public List<TblWindowsModeDetail> getDetails() {
		return details;
	}

	public void setDetails(List<TblWindowsModeDetail> details) {
		this.details = details;
	}
}
