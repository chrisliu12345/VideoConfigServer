package com.gd.domain.camera;

public class Task {
    private int taskID;
    private int Type;
    private String ResourceName;
    private int PlatformID;
    private String URL;
    private int serviceID;
    private int RuleParamID;
    private int videoInfoID;
    private int Priorty;
    private int StatusID;
    private int ControlStatus;

    public int getTaskID() {
        return taskID;
    }

    public void setTaskID(int taskID) {
        this.taskID = taskID;
    }

    public int getType() {
        return Type;
    }

    public void setType(int type) {
        Type = type;
    }

    public String getResourceName() {
        return ResourceName;
    }

    public void setResourceName(String resourceName) {
        ResourceName = resourceName;
    }

    public int getPlatformID() {
        return PlatformID;
    }

    public void setPlatformID(int platformID) {
        PlatformID = platformID;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public int getRuleParamID() {
        return RuleParamID;
    }

    public void setRuleParamID(int ruleParamID) {
        RuleParamID = ruleParamID;
    }

    public int getVideoInfoID() {
        return videoInfoID;
    }

    public void setVideoInfoID(int videoInfoID) {
        this.videoInfoID = videoInfoID;
    }

    public int getPriorty() {
        return Priorty;
    }

    public void setPriorty(int priorty) {
        Priorty = priorty;
    }

    public int getStatusID() {
        return StatusID;
    }

    public void setStatusID(int statusID) {
        StatusID = statusID;
    }

    public int getControlStatus() {
        return ControlStatus;
    }

    public void setControlStatus(int controlStatus) {
        ControlStatus = controlStatus;
    }
}
