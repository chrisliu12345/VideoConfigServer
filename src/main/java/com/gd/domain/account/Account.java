package com.gd.domain.account;

import com.gd.domain.base.BaseModel;
import com.gd.domain.place.Place;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.List;

/**
 * Created by dell on 2017/1/11.
 * Good Luck !
 * へ　　　　　／|
 * 　　/＼7　　　 ∠＿/
 * 　 /　│　　 ／　／
 * 　│　Z ＿,＜　／　　 /`ヽ
 * 　│　　　　　ヽ　　 /　　〉
 * 　 Y　　　　　`　 /　　/
 * 　ｲ●　､　●　　⊂⊃〈　　/
 * 　()　 へ　　　　|　＼〈
 * 　　>ｰ ､_　 ィ　 │ ／／
 * 　 / へ　　 /　ﾉ＜| ＼＼
 * 　 ヽ_ﾉ　　(_／　 │／／
 * 　　7　　　　　　　|／
 * 　　＞―r￣￣`ｰ―＿
 */
@SuppressWarnings("unused")
@ApiModel(value = "账户对象",description = "Account")
public class Account extends BaseModel {
    @ApiModelProperty(value = "账户名称",required = true)
    private String username;
    @ApiModelProperty(value = "账户密码",required = true)
    private String password;
    @ApiModelProperty(value = "账户盐")
    private String salt;
    @ApiModelProperty(value = "账户token")
    private String token;
    @ApiModelProperty(value = "账户appId",required = true)
    private String appId;
    @ApiModelProperty(value = "环信ID",required = true)
    private String communicationId;
    //场所类型
    private List<Place> place;
    //虚拟组织ID
    private String validategroupid;
    //是否登录
    private Integer loginYes;

    public Account() {
    }

    public Account(String id, String ifuse, String createTime, String updateTime, String orderNum, String username, String password, String salt, String token, String appId, String communicationId) {
        super(id, ifuse, createTime, updateTime, orderNum);
        this.username = username;
        this.password = password;
        this.salt = salt;
        this.token = token;
        this.appId = appId;
        this.communicationId = communicationId;

    }

    public Integer getLoginYes() {
        return loginYes;
    }

    public void setLoginYes(Integer loginYes) {
        this.loginYes = loginYes;
    }

    public List<Place> getPlace() {
        return place;
    }

    public void setPlace(List<Place> place) {
        this.place = place;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getAppId() {
        return appId;
    }

    public void setCommunicationId(String communicationId) {
        this.communicationId = communicationId;
    }

    public String getCommunicationId() {

        return communicationId;
    }

    public String getValidategroupid() {
        return validategroupid;
    }

    public void setValidategroupid(String validategroupid) {
        this.validategroupid = validategroupid;
    }

}
