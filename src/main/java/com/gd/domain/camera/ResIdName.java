package com.gd.domain.camera;

/**
 * Created by 郄梦岩 on 2017/11/7.
 */
public class ResIdName {
    private Integer ResID;
    private String Name;
    private String ProtocolType;
    private String DeviceID;
    private String ParentID;
    private String CivilCode;
    private String ResType;

    public String getResType() {
        return ResType;
    }

    public void setResType(String resType) {
        ResType = resType;
    }

    public String getCivilCode() {
        return CivilCode;
    }

    public void setCivilCode(String civilCode) {
        CivilCode = civilCode;
    }

    public String getParentID() {
        return ParentID;
    }

    public void setParentID(String parentID) {
        ParentID = parentID;
    }

    public String getDeviceID() {
        return DeviceID;
    }

    public void setDeviceID(String deviceID) {
        DeviceID = deviceID;
    }

    public String getProtocolType() {
        return ProtocolType;
    }

    public void setProtocolType(String protocolType) {
        ProtocolType = protocolType;
    }

    public Integer getResID() {
        return ResID;
    }

    public void setResID(Integer resID) {
        ResID = resID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }
}
