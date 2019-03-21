package com.gd.service.res_attr.impl;

import com.gd.dao.res_attr.IResAttrDao;
import com.gd.domain.camera.*;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.services.Services;
import com.gd.service.res_attr.IResService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/9/18.
 */
@Service("resService")
public class ResServiceImpl implements IResService {
    public static final String CACHE_KEY = "'resInfo'";
    public static final String DEMO_CACHE_NAME = "demo";

    @Autowired
    private IResAttrDao iResAttr;

    @Override
    public Services getSipName(Integer id) {
        return this.iResAttr.getSipName(id);
    }

    /*@Cacheable(value = DEMO_CACHE_NAME, key = CACHE_KEY)//存入缓存*/
    @Override
    public List<Res_Attr> list() {
        System.out.println("这是资源表的数据查询列表，没有走缓存");
        return this.iResAttr.queryForObject();
    }

    @Override
    public String queryForCamera(int id) {
        return this.iResAttr.queryForCamera(id);
    }

    @Override
    public String queryforobject2(Res_Attr res_attr) {
        return this.iResAttr.queryForObject2(res_attr);
    }

    @Override
    public List<String> deviceIDtoResID(String de) {
        return this.iResAttr.deviceIDtoResID(de);
    }

    @Override
    public List<Res_Attr> queryForResAttr(String civilCode) {
        return this.iResAttr.queryForResAttr(civilCode);
    }

    @Override
    public void deleteForEncoderChannel(Integer id) {
        this.iResAttr.deleteForEncoderChannel(id);
    }

    @Override
    public void saveAlarm(InAlarm inAlarm) {
        this.iResAttr.saveAlarm(inAlarm);
    }

    @Override
    public void deleteRule(int ruleId) {
        this.iResAttr.deleteRule(ruleId);
    }

    @Override
    public void deleteTask(int ResId) {
        this.iResAttr.deleteTask(ResId);
    }

    @Override
    public List<Res_Attr> queryAlarmList() {
        return this.iResAttr.queryAlarmList();
    }

    @Override
    public void deleteTaskStatus(int statusId) {
     this.iResAttr.deleteTaskStatus(statusId);
    }

    @Override
    public List<Task> queryForTask(int id) {
        return this.iResAttr.queryForTask(id);
    }

    @Override
    public void addTask(Task task) {
        this.iResAttr.addTask(task);
    }

    @Override
    public int addAnalysisRule(AnalysisRule analysisRule) {
        return this.iResAttr.addAnalysisRule(analysisRule);
    }

    @Override
    public int addTaskStatus(TaskStatus taskStatus) {
        return this.iResAttr.addTaskStatus(taskStatus);
    }

    @Override
    public Res_Attr queryForResAttrById(int id) {
        return this.iResAttr.queryForResAttrById(id);
    }

    @Override
    public String selectLastData() {
        return this.iResAttr.selectLastData();
    }

    @Override
    public String queryforDeviceID(Res_Attr res_attr) {
        return this.iResAttr.queryforDeviceID(res_attr);
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void add(Res_Attr res_attr) {

        this.iResAttr.addForObject(res_attr);
    }

    @Override
    public String queryforobject1(Res_Attr res_attr) {
        return this.iResAttr.queryForObject1(res_attr);
    }

    @Override
    public Integer queryforResId(Res_Attr res_attr) {
        return this.iResAttr.queryForResId(res_attr);
    }
    @Override
    public String queryForMaxDeviceId(){
        return this.iResAttr.queryForMaxDeviceId();
    }
    @Override
    public List<Services> getsip() {
        return this.iResAttr.getSip();
    }

    @Override
    public Integer queryforResIdtoChannel(Integer ss) {
        return this.iResAttr.queryforResIdtoChannel(ss);
    }



    @Override
    public List<Services> getsip1() {
        return this.iResAttr.getSip1();
    }

    @Override
    public Res_Attr DeviceIDforRes(String s) {
        return this.iResAttr.DeviceIDforRes(s);
    }

    @Override
    public List<ResIdName> getResIdName() {
        return this.iResAttr.getResIdandName();
    }


    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void update(Res_Attr attr) {
        this.iResAttr.updateForObject(attr);
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void delete(Res_Attr res) {
        this.iResAttr.deleteForObject(res);
    }
}
