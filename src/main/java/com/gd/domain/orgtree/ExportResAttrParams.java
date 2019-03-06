package com.gd.domain.orgtree;

/**
 * Created by Administrator on 2018/3/20 0020.
 */
public class ExportResAttrParams {
      private String GroupID;
      private String GroupName;
      private String Name;
      private String ResAttrIP;
      private String username;
      private String password;
      private String playUrl;

    public String getGroupID() {
        return GroupID;
    }

    public void setGroupID(String groupID) {
        GroupID = groupID;
    }

    public String getGroupName() {
        return GroupName;
    }

    public void setGroupName(String groupName) {
        GroupName = groupName;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getResAttrIP() {
        return ResAttrIP;
    }

    public void setResAttrIP(String resAttrIP) {
        ResAttrIP = resAttrIP;
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

    public String getPlayUrl() {
        return playUrl;
    }

    public void setPlayUrl(String playUrl) {
        this.playUrl = playUrl;
    }
}
