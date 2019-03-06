package com.gd.domain.account_camera;

import com.gd.domain.base.BaseModel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;



public class Account_Camera  {
    private int id;
    private String AccountId;
    private String AccountName;
    private String Type;
    private Integer GroupOrCameraId;
    private String GroupOrCameraName;

    public String getGroupOrCameraName() {
        return GroupOrCameraName;
    }

    public void setGroupOrCameraName(String groupOrCameraName) {
        GroupOrCameraName = groupOrCameraName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccountId() {
        return AccountId;
    }

    public void setAccountId(String accountId) {
        AccountId = accountId;
    }

    public String getAccountName() {
        return AccountName;
    }

    public void setAccountName(String accountName) {
        AccountName = accountName;
    }

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public Integer getGroupOrCameraId() {
        return GroupOrCameraId;
    }

    public void setGroupOrCameraId(Integer groupOrCameraId) {
        GroupOrCameraId = groupOrCameraId;
    }
}
