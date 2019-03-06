package com.gd.service.res_attr;

import com.gd.domain.camera.*;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.services.Services;

import java.util.List;

/**
 * Created by Administrator on 2017/9/18.
 */
public interface IResService {
    List<Res_Attr> list();//查询所有设备信息

    void add(Res_Attr res_attr);//添加设备信息

    void delete(Res_Attr res);//删除设备信息

    void update(Res_Attr attr);//更新设备信息

    List<ResIdName> getResIdName();//查询设备为摄像机的父设备ID和名称

    String queryforobject1(Res_Attr res_attr);//根据设备ID查询设备的父设备ID

    Integer queryforResId(Res_Attr res_attr);//查询设备为摄像机的RESID，并给摄像机表使用

    String queryForMaxDeviceId();//查找tbl_res_attr表中deviceId后六位最大值

    List<Services> getsip();//获取sip服务

    List<Services> getsip1();//获取sip服务

    Services getSipName(Integer id);//根据streamid获取名称

    String queryforobject2(Res_Attr res_attr);

    String queryforDeviceID(Res_Attr res_attr);

    List<String> deviceIDtoResID(String de);

    Integer queryforResIdtoChannel(Integer ss);

    Res_Attr DeviceIDforRes(String s);

    String queryForCamera(int id);

    String selectLastData();

    List<Res_Attr> queryForResAttr(String civilCode);

    void deleteForEncoderChannel(Integer id);

    void saveAlarm(InAlarm inAlarm);

    Res_Attr queryForResAttrById(int id);

    int addTaskStatus(TaskStatus taskStatus);

    int addAnalysisRule(AnalysisRule analysisRule);

    void addTask(Task task);

    List<Task> queryForTask(int id);

    void deleteRule(int ruleId);

    void deleteTaskStatus(int statusId);

    void deleteTask(int ResId);

}
