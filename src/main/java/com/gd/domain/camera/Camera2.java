package com.gd.domain.camera;

import com.gd.domain.channel.Channel;

/**
 * Created by Administrator on 2018/1/15 0015.
 */
public class Camera2 extends Channel {
    private int ResID;//资源ID
    private int PtzType;   //摄像机PTZ控制类型
    private int PositionType;  //摄像机位置属性
    private int RoomType;     //摄像机室内外属性
    private int SupplyLightType;        //摄像机补光属性
    private int DirectionType;            //监控方位属性
    private String BusinessGroupID;        //业务分组ID
    private String DownLoadSpeed;        //下载倍速范围
    private int SVCSpaceSupportMode;    //空域编码能力
    private int SVCTimeSupportMode;    //时域编码能力
    private String PtzURL;// 云台控制URL
    private double Height;// 摄摄像机安装高度
    private double PitchAngle;// 俯仰角
    private double Azimuth;// 方位角
    private String Alias;// 摄像机别名
    private int LockedUsr;//锁定用户ID
    private int StreamingID;//优先使用转发服务SERVICEID
    private int ReplayID;//优先使用回放服务ID



    public int getResID() {
        return ResID;
    }

    public void setResID(int resID) {
        ResID = resID;
    }

    public int getPtzType() {
        return PtzType;
    }

    public void setPtzType(int ptzType) {
        PtzType = ptzType;
    }

    public int getPositionType() {
        return PositionType;
    }

    public void setPositionType(int positionType) {
        PositionType = positionType;
    }

    public int getRoomType() {
        return RoomType;
    }

    public void setRoomType(int roomType) {
        RoomType = roomType;
    }



    public int getSupplyLightType() {
        return SupplyLightType;
    }

    public void setSupplyLightType(int supplyLightType) {
        SupplyLightType = supplyLightType;
    }

    public int getDirectionType() {
        return DirectionType;
    }

    public void setDirectionType(int directionType) {
        DirectionType = directionType;
    }



    public String getBusinessGroupID() {
        return BusinessGroupID;
    }

    public void setBusinessGroupID(String businessGroupID) {
        BusinessGroupID = businessGroupID;
    }

    public String getDownLoadSpeed() {
        return DownLoadSpeed;
    }

    public void setDownLoadSpeed(String downLoadSpeed) {
        DownLoadSpeed = downLoadSpeed;
    }

    public int getSVCSpaceSupportMode() {
        return SVCSpaceSupportMode;
    }

    public void setSVCSpaceSupportMode(int SVCSpaceSupportMode) {
        this.SVCSpaceSupportMode = SVCSpaceSupportMode;
    }

    public int getSVCTimeSupportMode() {
        return SVCTimeSupportMode;
    }

    public void setSVCTimeSupportMode(int SVCTimeSupportMode) {
        this.SVCTimeSupportMode = SVCTimeSupportMode;
    }

    public String getPtzURL() {
        return PtzURL;
    }

    public void setPtzURL(String ptzURL) {
        PtzURL = ptzURL;
    }

    public double getHeight() {
        return Height;
    }

    public void setHeight(double height) {
        Height = height;
    }

    public double getPitchAngle() {
        return PitchAngle;
    }

    public void setPitchAngle(double pitchAngle) {
        PitchAngle = pitchAngle;
    }

    public double getAzimuth() {
        return Azimuth;
    }

    public void setAzimuth(double azimuth) {
        Azimuth = azimuth;
    }

    public String getAlias() {
        return Alias;
    }

    public void setAlias(String alias) {
        Alias = alias;
    }

    public int getLockedUsr() {
        return LockedUsr;
    }

    public void setLockedUsr(int lockedUsr) {
        LockedUsr = lockedUsr;
    }

    public int getStreamingID() {
        return StreamingID;
    }

    public void setStreamingID(int streamingID) {
        StreamingID = streamingID;
    }

    public int getReplayID() {
        return ReplayID;
    }

    public void setReplayID(int replayID) {
        ReplayID = replayID;
    }


}
