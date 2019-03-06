package com.gd.domain.encoder;


import com.gd.domain.group.GroupInfo;

import java.util.List;

/**
 * Created by Administrator on 2017/8/21 0021.
 */
public class RootTree {
    private String groups;
    private List<GroupInfo> children;
private String branch;
private int id;
private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }
/*   private List<EncoderTree> children;
    public List<EncoderTree> getChildren() {
        return children;
    }



    public void setChildren(List<EncoderTree> children) {
        this.children = children;
    }


   */

    public List<GroupInfo> getChildren() {
        return children;
    }

    public void setChildren(List<GroupInfo> children) {
        this.children = children;
    }

    public String getGroups() {
        return groups;
    }

    public void setGroups(String groups) {
        this.groups = groups;
    }


}
