package com.gd.domain.place;

/**
 * Created by Administrator on 2018/1/26 0026.
 */
public class Place {
    private int ID;//id
    private String CSLXBH;//场所类型编号
    private String CSLXMC;//场所名称
    private String FJCSBH;//父场所类型编号

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getCSLXBH() {
        return CSLXBH;
    }

    public void setCSLXBH(String CSLXBH) {
        this.CSLXBH = CSLXBH;
    }

    public String getCSLXMC() {
        return CSLXMC;
    }

    public void setCSLXMC(String CSLXMC) {
        this.CSLXMC = CSLXMC;
    }

    public String getFJCSBH() {
        return FJCSBH;
    }

    public void setFJCSBH(String FJCSBH) {
        this.FJCSBH = FJCSBH;
    }
}
