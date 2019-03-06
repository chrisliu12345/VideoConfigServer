package com.gd.domain.windowmode;

import com.gd.domain.base.SerializID;


/**
 * 
 * 
 * @author tangjinhui
 * @email 100274718@qq.com
 * @date 2017-12-28 18:32:19
 */
public class TblWindowsModeDetail extends SerializID {

	//
	private String modeid;
	//
	private int width;
	//
	private int height;
	//
	private int vertexx;
	//
	private int vertexy;

	/**
	 * 设置：
	 */
	public void setModeid(String modeid) {
		this.modeid = modeid;
	}
	/**
	 * 获取：
	 */
	public String getModeid() {
		return modeid;
	}
	/**
	 * 设置：
	 */
	public void setWidth(int width) {
		this.width = width;
	}
	/**
	 * 获取：
	 */
	public int getWidth() {
		return width;
	}
	/**
	 * 设置：
	 */
	public void setHeight(int height) {
		this.height = height;
	}
	/**
	 * 获取：
	 */
	public int getHeight() {
		return height;
	}
	/**
	 * 设置：
	 */
	public void setVertexx(int vertexx) {
		this.vertexx = vertexx;
	}
	/**
	 * 获取：
	 */
	public int getVertexx() {
		return vertexx;
	}
	/**
	 * 设置：
	 */
	public void setVertexy(int vertexy) {
		this.vertexy = vertexy;
	}
	/**
	 * 获取：
	 */
	public int getVertexy() {
		return vertexy;
	}
}
