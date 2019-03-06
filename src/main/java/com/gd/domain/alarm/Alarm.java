package com.gd.domain.alarm;

import java.util.List;

public class Alarm {
    private int Id;//主键
    private String Alarm_event_name;//报警事件名称
    private String Deviceid;//设备ID
    private int Input_channel;//报警输入号
    private int AlarmMethod;//报警方式
    private int AlarmType;//报警类型
    private String Notified_person;//通知人
    private int Linkage_Method;//联动方式
    private String Linkage_Camera;//联动摄像机
    private String Linkage_Info;//联动消息
    private String AlarmMethodName;
    private String AlarmTypeName;
    private String DeviceName;
    private List<String> Linkage_MethodName;

    public String getDeviceName() {
        return DeviceName;
    }

    public void setDeviceName(String deviceName) {
        DeviceName = deviceName;
    }

    public String getAlarmMethodName() {
        return AlarmMethodName;
    }

    public void setAlarmMethodName(String alarmMethodName) {
        AlarmMethodName = alarmMethodName;
    }

    public String getAlarmTypeName() {
        return AlarmTypeName;
    }

    public void setAlarmTypeName(String alarmTypeName) {
        AlarmTypeName = alarmTypeName;
    }

    public List<String> getLinkage_MethodName() {
        return Linkage_MethodName;
    }

    public void setLinkage_MethodName(List<String> linkage_MethodName) {
        Linkage_MethodName = linkage_MethodName;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getAlarm_event_name() {
        return Alarm_event_name;
    }

    public void setAlarm_event_name(String alarm_event_name) {
        Alarm_event_name = alarm_event_name;
    }

    public String getDeviceid() {
        return Deviceid;
    }

    public void setDeviceid(String deviceid) {
        Deviceid = deviceid;
    }

    public int getInput_channel() {
        return Input_channel;
    }

    public void setInput_channel(int input_channel) {
        Input_channel = input_channel;
    }

    public int getAlarmMethod() {
        return AlarmMethod;
    }

    public void setAlarmMethod(int alarmMethod) {
        AlarmMethod = alarmMethod;
    }

    public int getAlarmType() {
        return AlarmType;
    }

    public void setAlarmType(int alarmType) {
        AlarmType = alarmType;
    }

    public String getNotified_person() {
        return Notified_person;
    }

    public void setNotified_person(String notified_person) {
        Notified_person = notified_person;
    }

    public int getLinkage_Method() {
        return Linkage_Method;
    }

    public void setLinkage_Method(int linkage_Method) {
        Linkage_Method = linkage_Method;
    }

    public String getLinkage_Camera() {
        return Linkage_Camera;
    }

    public void setLinkage_Camera(String linkage_Camera) {
        Linkage_Camera = linkage_Camera;
    }

    public String getLinkage_Info() {
        return Linkage_Info;
    }

    public void setLinkage_Info(String linkage_Info) {
        Linkage_Info = linkage_Info;
    }
}
