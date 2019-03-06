package com.gd.domain.account_camera;

/**
 * Created by Administrator on 2018/2/28 0028.
 */
//此实体类用于树在加载下级节点时，接收前端传来的账户名和父节点ID
public class TreeUseData {
    private Integer id;
    private String accountName;
    private String vid;
    private Integer grouporcameraid;
    private Integer Type;


    public Integer getType() {
        return Type;
    }

    public void setType(Integer type) {
        Type = type;
    }

    public Integer getGrouporcameraid() {
        return grouporcameraid;
    }

    public void setGrouporcameraid(Integer grouporcameraid) {
        this.grouporcameraid = grouporcameraid;
    }

    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }
}
