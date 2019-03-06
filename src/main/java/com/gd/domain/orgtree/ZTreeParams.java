package com.gd.domain.orgtree;

/**
 * Created by Administrator on 2018/1/11 0011.
 */
public class ZTreeParams {
    private String id;//组ID
    private String pId;//父组ID
    private String name;//名称
    private boolean isParent;//是否有子节点
    private String icon;//摄像机图片
    private String cameraNodes;
    private String ParentOrgID;
    private String VirtualOrgID;
    private String ResType;

    public String getResType() {
        return ResType;
    }

    public void setResType(String resType) {
        ResType = resType;
    }

    public String getVirtualOrgID() {
        return VirtualOrgID;
    }

    public void setVirtualOrgID(String virtualOrgID) {
        VirtualOrgID = virtualOrgID;
    }

    public String getParentOrgID() {
        return ParentOrgID;
    }

    public void setParentOrgID(String parentOrgID) {
        ParentOrgID = parentOrgID;
    }

    public String getCameraNodes() {
        return cameraNodes;
    }

    public void setCameraNodes(String cameraNodes) {
        this.cameraNodes = cameraNodes;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public boolean isParent() {
        return isParent;
    }

    public void setParent(boolean parent) {
        isParent = parent;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
