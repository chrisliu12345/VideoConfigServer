package com.gd.service.camera.impl;

import com.gd.dao.camera.ICameraDao;
import com.gd.dao.res_attr.IResAttrDao;

import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.camera.Camera1;

import com.gd.domain.camera.Camera2;
import com.gd.domain.channel.Channel;
import com.gd.domain.place.Place;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.service.camera.ICameraService;
import com.gd.service.channel.IChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/8/11 0011.
 */
@Service("cameraService")
public class CameraServiceImpl implements ICameraService {
    public static final String CACHE_KEY = "'camInfo'";
    public static final String DEMO_CACHE_NAME = "demo";
    @Autowired
    private ICameraDao icc;
    @Autowired
    private IChannelService ich;
    @Autowired
    private IResAttrDao irs;
    @CacheEvict(value=DEMO_CACHE_NAME,key=CACHE_KEY)//清除缓存
    @Override
    public String add(Camera1 camera) {
        this.icc.addObject(camera);

        return null;
    }
    @Cacheable(value=DEMO_CACHE_NAME,key=CACHE_KEY)//存入缓存
    @Override
    public List<Camera2> list() {
        return icc.queryForObject();
    }



    @Override
    public Res_Attr getCameraToResID(Integer id) {
        return icc.getCameraToResID(id);
    }

    @Override
    public List<Channel> getCameraToChannel(Integer id) {
        return icc.getCameraToChannel(id);
    }

    @Override
    public List<Camera1> listForCamera1() {
        return this.icc.listForCamera1();
    }

    @CacheEvict(value=DEMO_CACHE_NAME,key=CACHE_KEY)//清除缓存
    @Override
    public void delete(Camera1 camera) {
        this.icc.deleteObject(camera);
        Channel channel=new Channel();

        channel.setCamID(camera.getResID());
        this.ich.delete1(channel);
    }
    @CacheEvict(value=DEMO_CACHE_NAME,key=CACHE_KEY)//清除缓存
    @Override
    public void update(Camera1 camera) {
        this.icc.updateObject(camera);
    }

    @Override
    public String queryForProtocolType(String ss) {
        return this.icc.queryForProtocolType(ss);
    }


    @Override
    public List<Res_Attr> queryForCamera3Nodes(TreeUseData treeUseData) {
        return this.icc.queryForCamera3Nodes(treeUseData);
    }

    @Override
    public List<Res_Attr> queryForCamera4Nodes(TreeUseData treeUseData) {
        return this.icc.queryForCamera4Nodes(treeUseData);
    }

    @Override
    public List<Res_Attr> queryForCamera2Nodes(TreeUseData treeUseData) {
        return this.icc.queryForCamera2Nodes(treeUseData);
    }

    @Override
    public List<Res_Attr> searchResAttrName(Res_Attr res_attr) {
        if(res_attr.getKey().equals("1")){
            //按设备名称搜索
            return this.irs.searchResAttrName(res_attr);
        }else{
            //按IP地址搜索
            return this.irs.searchResAttrIP(res_attr);
        }

    }
    @Override
    public List<Res_Attr> searchCameraName(Res_Attr res_attr) {

        if(res_attr.getKey().equals("2")){
            //按摄像机名称搜索
            return this.irs.searchCameraName(res_attr);
        }else{
            //按摄像机IP地址搜索
            return this.irs.searchCameraIP(res_attr);
        }

    }

    @Override
    public void addPlaceId(Camera1 camera1) {
        this.icc.addPlaceId(camera1);
    }

    @Override
    public Place getCameraToPlaceId(String id) {
        return this.icc.getCameraToPlaceId(id);
    }

    @Override
    public List<Res_Attr> queryForCameraNodesToAlarm(TreeUseData treeUseData) {
        return this.icc.queryForCameraNodesToAlarm(treeUseData);
    }


    @Override
    public String queryForStreamingIP(int s) {
        return this.icc.queryForStreamingIP(s);
    }

    @Override
    public List<Res_Attr> queryForCameraNodes(TreeUseData treeUseData) {
        return this.icc.queryForCameraNodes(treeUseData);
    }

    @Override
    public String searchCameraUrl(Integer id) {
        return this.icc.searchCameraUrl(id);
    }

    @Override
    public List<Res_Attr> queryForCameraNodesByType3(TreeUseData treeUseData) {
        return this.icc.queryForCameraNodesByType3(treeUseData);
    }

    @Override
    public void updateForName(Res_Attr res_attr) {
        this.irs.updateForName(res_attr);
    }

    @Override
    public void deleteForDeviceID(String de) {
        this.icc.deleteForDeviceID(de);
    }

    @Override
    public void updateAlias(Camera1 camera1) {
        this.icc.updateAlias(camera1);
    }

    @Override
    public List<Res_Attr> queryForCameralist() {
        return this.icc.queryForCameralist();
    }


}
