package com.gd.domain.org;

public class LogView {
    private int LogID;
    private String LogName;
    private String LogDate;
    private String UsrName;
    private int ActionType;
    private int HigherID;
    private int LowerID;
    private String SourceIP;
    private String Comments;
    private String GroupOrCameraName;

    public String getGroupOrCameraName() {
        return GroupOrCameraName;
    }

    public void setGroupOrCameraName(String groupOrCameraName) {
        GroupOrCameraName = groupOrCameraName;
    }

    public int getLogID() {
        return LogID;
    }

    public void setLogID(int logID) {
        LogID = logID;
    }

    public String getLogName() {
        return LogName;
    }

    public void setLogName(String logName) {
        LogName = logName;
    }

    public String getLogDate() {
        return LogDate;
    }

    public void setLogDate(String logDate) {
        LogDate = logDate;
    }

    public String getUsrName() {
        return UsrName;
    }

    public void setUsrName(String usrName) {
        UsrName = usrName;
    }

    public int getActionType() {
        return ActionType;
    }

    public void setActionType(int actionType) {
        ActionType = actionType;
    }

    public int getHigherID() {
        return HigherID;
    }

    public void setHigherID(int higherID) {
        HigherID = higherID;
    }

    public int getLowerID() {
        return LowerID;
    }

    public void setLowerID(int lowerID) {
        LowerID = lowerID;
    }

    public String getSourceIP() {
        return SourceIP;
    }

    public void setSourceIP(String sourceIP) {
        SourceIP = sourceIP;
    }

    public String getComments() {
        return Comments;
    }

    public void setComments(String comments) {
        Comments = comments;
    }
}
