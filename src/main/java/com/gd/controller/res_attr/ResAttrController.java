package com.gd.controller.res_attr;

import com.gd.controller.common.CommonController;
import com.gd.controller.logview.LogViewController;
import com.gd.domain.camera.*;
import com.gd.domain.channel.Channel;
import com.gd.domain.org.LogView;
import com.gd.domain.orgtree.ZTreeParams;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.services.Services;
import com.gd.domain.updown.UpDown;
import com.gd.service.account.IAccountService;
import com.gd.service.camera.ICameraService;
import com.gd.service.channel.IChannelService;
import com.gd.service.logview.ILogViewService;
import com.gd.service.res_attr.IResService;
import com.gd.service.updown.IUpDownService;
import com.google.gson.Gson;

import com.google.gson.reflect.TypeToken;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Administrator on 2017/9/18.
 */

@RestController
@RequestMapping(value = "/res")
public class ResAttrController {
    @Autowired
    private IResService ires;
    @Autowired
    private IUpDownService iUpDownService;
    @Autowired
    private CommonController commonController;
    @Autowired
    private ICameraService iCameraService;
    @Autowired
    private IChannelService ic;
    @Autowired
    private IAccountService iAccountService;
    @Autowired
    private ILogViewService iLogViewService;

    //查询设备
    @RequestMapping(method = RequestMethod.GET)
    public String list() {

        List<Res_Attr> appList = new ArrayList<>();
        Map<String, Object> resultMap = new HashMap<>();
        appList = this.ires.list();
        resultMap.put("code", "0000");
        resultMap.put("data", appList);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    //添加设备
    @RequestMapping(method = RequestMethod.POST)
    public String add(@RequestBody Map<String, Object> paramMap) {
        //添加到资源表的信息
        Res_Attr res_attr = new Res_Attr();
        /*Integer q1 = Integer.parseInt(paramMap.get("ResID").toString());
        res_attr.setResID(q1);*/
        if (paramMap.get("config") == null || paramMap.get("config").toString().equals("")) {
            String q30 = "null";
            res_attr.setProtocolType(q30);
        } else {
            String q30 = paramMap.get("config").toString();
            res_attr.setProtocolType(q30);
        }
        if (paramMap.get("DeviceID") == null || paramMap.get("DeviceID").toString().equals("")) {
          res_attr.setDeviceID("null");
        } else {
            res_attr.setDeviceID(paramMap.get("DeviceID").toString());
        }
        if (paramMap.get("Name") == null || paramMap.get("Name").toString().equals("")) {
            String q3 = "null";
            res_attr.setName(q3);
        } else {
            String q3 = paramMap.get("Name").toString();
            res_attr.setName(q3);
        }
        if (paramMap.get("Manufacturer") == null || paramMap.get("Manufacturer").toString().equals("")) {
            String q4 = "null";
            res_attr.setManufacturer(q4);
        } else {
            String q4 = paramMap.get("Manufacturer").toString();
            res_attr.setManufacturer(q4);
        }
        if (paramMap.get("Model") == null || paramMap.get("Model").toString().equals("")) {
            String q5 = "null";
            res_attr.setModel(q5);
        } else {
            String q5 = paramMap.get("Model").toString();
            res_attr.setModel(q5);
        }
        if (paramMap.get("Owner") == null || paramMap.get("Owner").toString().equals("")) {
            String q6 = "0";
            res_attr.setOwner(q6);
        } else {
            String q6 = paramMap.get("Owner").toString();
            res_attr.setOwner(q6);
        }
        if (paramMap.get("CivilCode") == null || paramMap.get("CivilCode").toString().equals("")) {
            String q7 = "null";
            res_attr.setCivilCode(q7);
        } else {
            String q7 = paramMap.get("CivilCode").toString();
            res_attr.setCivilCode(q7);
        }
        if (paramMap.get("Block") == null || paramMap.get("Block").toString().equals("")) {
            String q8 = "null";
            res_attr.setBlock(q8);
        } else {
            String q8 = paramMap.get("Block").toString();
            res_attr.setBlock(q8);
        }
        if (paramMap.get("Address") == null || paramMap.get("Address").toString().equals("")) {
            String q9 = paramMap.get("Name").toString();
            res_attr.setAddress(q9);
        } else {
            String q9 = paramMap.get("Address").toString();
            res_attr.setAddress(q9);
        }
        if (paramMap.get("Parental") == null || paramMap.get("Parental").toString().equals("")) {
            Integer q10 = 0;
            res_attr.setParental(q10);
        } else {
            Integer q10 = Integer.parseInt(paramMap.get("Parental").toString());
            res_attr.setParental(q10);
        }
        if (paramMap.get("ParentID") == null || paramMap.get("ParentID").toString().equals("")) {
            //如果是没选，就是自身的DeviceID
            String q11 = paramMap.get("DeviceID").toString();
            res_attr.setParentID(q11);
        } else {
            String q11 = paramMap.get("ParentID").toString();
            res_attr.setParentID(q11);
        }

        if (paramMap.get("SafetyWay") == null || paramMap.get("SafetyWay").toString().equals("")) {
        } else {
            Integer q12 = Integer.parseInt(paramMap.get("SafetyWay").toString());
            res_attr.setSafetyWay(q12);
        }
        if (paramMap.get("RegisterWay") == null || paramMap.get("RegisterWay").toString().equals("")) {
            Integer q13 = 1;
            res_attr.setRegisterWay(q13);
        } else {
            Integer q13 = Integer.parseInt(paramMap.get("RegisterWay").toString());
            res_attr.setRegisterWay(q13);
        }
        if (paramMap.get("CertNum") == null || paramMap.get("CertNum").toString().equals("")) {
        } else {
            String q14 = paramMap.get("CertNum").toString();
            res_attr.setCertNum(q14);
        }
        if (paramMap.get("Certifiable") == null || paramMap.get("Certifiable").toString().equals("")) {
        } else {
            Integer q15 = Integer.parseInt(paramMap.get("Certifiable").toString());
            res_attr.setCertifiable(q15);
        }

        if (paramMap.get("ErrCode") == null || paramMap.get("ErrCode").toString().equals("")) {
        } else {
            Integer q16 = Integer.parseInt(paramMap.get("ErrCode").toString());
            res_attr.setErrCode(q16);
        }
        if (paramMap.get("EndTime") == null || paramMap.get("EndTime").toString().equals("")) {
        } else {
            Timestamp q17 = Timestamp.valueOf(paramMap.get("EndTime").toString());
            res_attr.setEndTime(q17);
        }
        if (paramMap.get("Secrecy") == null || paramMap.get("Secrecy").toString().equals("")) {
            Integer q18 = 0;
            res_attr.setSecrecy(q18);
        } else {
            Integer q18 = Integer.parseInt(paramMap.get("Secrecy").toString());
            res_attr.setSecrecy(q18);
        }
        if (paramMap.get("IPAddress") == null || paramMap.get("IPAddress").toString().equals("")) {
        } else {
            String q19 = paramMap.get("IPAddress").toString();
            res_attr.setIPAddress(q19);
        }
        if (paramMap.get("Port") == null || paramMap.get("Port").toString().equals("")) {
        } else {
            Integer q20 = Integer.parseInt(paramMap.get("Port").toString());
            res_attr.setPort(q20);
        }
        if ((paramMap.get("UsrName") == null) || paramMap.get("UsrName").toString().equals("")) {
        } else {
            String q21 = paramMap.get("UsrName").toString();
            res_attr.setUsrName(q21);
        }
        if ((paramMap.get("Password") == null) || paramMap.get("Password").toString().equals("")) {
        } else {

            res_attr.setPassword(paramMap.get("Password").toString());

        }
        if (paramMap.get("Status") == null || paramMap.get("Status").toString().equals("")) {
            String q23 = "ON";
            res_attr.setStatus(q23);
        } else {
            String q23 = paramMap.get("Status").toString();
            res_attr.setStatus(q23);
        }

        if ((paramMap.get("Longitude") == null) || paramMap.get("Longitude").toString().equals("")) {
        } else {
            double q24 = Double.parseDouble(paramMap.get("Longitude").toString());
            res_attr.setLongitude(q24);
        }
        if (paramMap.get("Latitude") == null || paramMap.get("Latitude").toString().equals("")) {
        } else {
            double q25 = Double.parseDouble(paramMap.get("Latitude").toString());
            res_attr.setLatitude(q25);
        }
        if (paramMap.get("PlatformID") == null || paramMap.get("PlatformID").toString().equals("")) {
            Integer q26 = 0;
            res_attr.setPlatformID(q26);
        } else {
            Integer q26 = Integer.parseInt(paramMap.get("PlatformID").toString());
            res_attr.setPlatformID(q26);
        }
        if (paramMap.get("ResType") == null || paramMap.get("ResType").toString().equals("")) {
            Integer q27 = 0;
            res_attr.setResType(q27);
        } else {
            Integer q27 = Integer.parseInt(paramMap.get("ResType").toString());
            res_attr.setResType(q27);
        }

        if (paramMap.get("SipServiceID") == null || paramMap.get("SipServiceID").toString().equals("")) {
            if (paramMap.get("SipServiceID1") == null || paramMap.get("SipServiceID1").toString().equals("")) {
                Integer q28 = 5;
                res_attr.setSipServiceID(q28);
            } else {
                Integer q28 = Integer.parseInt(paramMap.get("SipServiceID1").toString());
                res_attr.setSipServiceID(q28);
            }
        } else {

            Integer q123 = Integer.parseInt(paramMap.get("SipServiceID").toString());

            res_attr.setSipServiceID(q123);


        }
        if (paramMap.get("GuardFlag") == null || paramMap.get("GuardFlag").toString().equals("")) {
            Integer q29 = 0;
            res_attr.setGuardFlag(q29);
        } else {
            Integer q29 = Integer.parseInt(paramMap.get("GuardFlag").toString());
            res_attr.setGuardFlag(q29);
        }

        this.ires.add(res_attr);
        //插入日志
        LogView logView=new LogView();
        logView.setLogName("reslog");
        logView.setComments("新增");
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        logView.setLogDate(String.valueOf(simpleDateFormat.format(date)));
        logView.setUsrName(paramMap.get("accountName").toString());
        logView.setGroupOrCameraName("设备-"+res_attr.getName());
        LogViewController logViewController=new LogViewController();
       this.iLogViewService.add(logView);
        //根据DeviceID去查询这条新添加进去的数据，然后返回，以便树结构使用。
        Integer ResId=this.ires.queryforResId(res_attr);
        ZTreeParams zTreeParams=new ZTreeParams();
        zTreeParams.setId(String.valueOf(ResId));
        zTreeParams.setpId(res_attr.getCivilCode());
        zTreeParams.setName(res_attr.getName());
        zTreeParams.setCameraNodes("B");
        zTreeParams.setResType(res_attr.getResType().toString());
        if(res_attr.getResType()!=134){
            zTreeParams.setIcon("/img/resattr.png");
        }else{
            zTreeParams.setIcon("/img/alarm.jpg");
        }

        //向通道表添加通道数
        if (paramMap.get("channel") == null || paramMap.get("channel").toString().equals("")) {

        } else {
           String  cameraName= paramMap.get("config").toString();
            Integer channelNum = Integer.parseInt(paramMap.get("channel").toString());//通道数量
            System.out.println("我是摄像机通道数量："+channelNum);
            Integer cameraType = Integer.parseInt(paramMap.get("ResType").toString());//摄像机类型
            Integer resid=this.ires.queryforResId(res_attr);//设备ID
            //如果是IPC摄像机则只加一个通道
            if(paramMap.get("ResType").toString().equals("132")){
                this.commonController.addChannel(1 ,cameraType,cameraName,resid);
            }else if(paramMap.get("ResType").toString().equals("138")){
                 this.commonController.addEncoderChannel(channelNum,resid);
            }else{
                this.commonController.addChannel(channelNum ,cameraType,cameraName,resid);
            }

        }
       /* //默认向account——camera表中加一条记录。
        Account_Camera account_camera=new Account_Camera();
        account_camera.setAccountId(paramMap.get("accountId").toString());
        account_camera.setAccountName(paramMap.get("accountName").toString());
        account_camera.setGroupOrCameraId(ResId);
        account_camera.setGroupOrCameraName(paramMap.get("Name").toString());
        account_camera.setType("CAMERA");
        this.iAccountService.addForAccountCamera(account_camera);*/
        //判断添加的设备是否为解码器，如果是解码器，还需要向解码器表中添加数据
        /*if(res_attr.getResType()==134){
            Integer ResiD=this.ires.queryforResId(res_attr);
            Encoder1 encoder1=new Encoder1();
            encoder1.setProtocolType(paramMap.get("config").toString());
            encoder1.setDecoderID(ResiD);
            Integer channelNum1 = Integer.parseInt(paramMap.get("channel").toString());
            encoder1.setDecoderChannelID(channelNum1);
            if (paramMap.get("CamID") == null || paramMap.get("CamID").toString().equals("")) {

            }
            encoder1.setCamID();
        }*/
        Map<String,Object> map=new HashMap<>();
        map.put("data",zTreeParams);
        Gson gson=new Gson();
       return gson.toJson(map);
    }

    //删除设备
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestBody Map<String,String> maps) {
        int id=Integer.parseInt(maps.get("ResID"));
        Res_Attr res = new Res_Attr();
        res.setResID(id);
        String res_attr = this.ires.queryforobject1(res);

        if (res_attr==null ||res_attr.equals("null")) {
            //说明选择的是设备
            //1.删除通道
            Channel channel = new Channel();
            channel.setNvrID(id);
            this.ic.delete1(channel);
            //2.删除设备下的摄像机
            String deviceid=this.ires.queryforDeviceID(res);
            List<String> ResID=this.ires.deviceIDtoResID(deviceid);
            //删除res-attr表的摄像机
            for(int i=0;i<ResID.size();i++){
                this.iCameraService.deleteForDeviceID(deviceid);
                //删除camera表的摄像机
                Camera1 camera1 = new Camera1();
                camera1.setResID(Integer.parseInt(ResID.get(i)));
                this.iCameraService.delete(camera1);
            }
            //删除channel表的通道。
            Channel ch=new Channel();
            ch.setCamID(id);
            this.ic.delete1(ch);
            //3.删除设备
            this.ires.delete(res);
        } else {
            //否则是删除摄像机
            //1.更新channel表中摄像机占用的通道，恢复为初始状态
            Channel channel=new Channel();
            channel.setCamID(id);
            this.ic.updateForObject0(channel);
            Camera1 camera1 = new Camera1();
            camera1.setResID(id);
            //2.删除camera摄像机信息
            this.iCameraService.delete(camera1);
            //3.删除设备里的摄像机
            this.ires.delete(res);
        }
        //插入日志
        LogView logView=new LogView();
        logView.setLogName("reslog");
        logView.setComments("删除");
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        logView.setLogDate(String.valueOf(simpleDateFormat.format(date)));
        logView.setUsrName(maps.get("accountName"));
        logView.setGroupOrCameraName("设备-"+maps.get("name"));
        this.iLogViewService.add(logView);
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    //删除编码器设备
    @RequestMapping(value = "/deleteEncoder", method = RequestMethod.POST)
    public void delete_change(@RequestBody Integer id) {
        System.out.println("我是走的编码器删除！"+id);
        Res_Attr res = new Res_Attr();
        res.setResID(id);
        this.ires.delete(res);
        this.ires.deleteForEncoderChannel(id);

        System.out.println("删除完成");
    }

    //修改设备信息
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestBody Map<String, Object> paramMap) {
        System.out.println("我是获取的名字:"+paramMap.get("accountName").toString());
        Res_Attr res_attr = new Res_Attr();
        Integer q1 = Integer.parseInt(paramMap.get("ResID").toString());
        String q2 = paramMap.get("DeviceID").toString();
        String q3 = paramMap.get("name").toString();
        String q4 = paramMap.get("Manufacturer").toString();
        String q5 = paramMap.get("Model").toString();
        String q6 = paramMap.get("Owner").toString();
        String q7 = paramMap.get("CivilCode").toString();
        String qa8=paramMap.get("ProtocolType").toString();
        if (paramMap.get("config") == null || paramMap.get("config").toString().equals("")) {
            String q30 = "null";
            res_attr.setProtocolType(q30);
        } else {
            String q30 = paramMap.get("config").toString();
            res_attr.setProtocolType(q30);
        }
        if (paramMap.get("Block") == null || paramMap.get("Block").toString().equals("")) {
        } else {
            String q8 = paramMap.get("Block").toString();
            res_attr.setBlock(q8);
        }
        String q9 = paramMap.get("Address").toString();
        Integer q10 = Integer.parseInt(paramMap.get("Parental").toString());
        String q11 = paramMap.get("ParentID").toString();
        if (paramMap.get("SafetyWay") == null || paramMap.get("SafetyWay").toString().equals("")) {
        } else {
            Integer q12 = Integer.parseInt(paramMap.get("SafetyWay").toString());
            res_attr.setSafetyWay(q12);
        }
        Integer q13 = Integer.parseInt(paramMap.get("RegisterWay").toString());
        if (paramMap.get("CertNum") == null || paramMap.get("CertNum").toString().equals("")) {
        } else {
            String q14 = paramMap.get("CertNum").toString();
            res_attr.setCertNum(q14);
        }
        if (paramMap.get("Certifiable") == null || paramMap.get("Certifiable").toString().equals("")) {
        } else {
            Integer q15 = Integer.parseInt(paramMap.get("Certifiable").toString());
            res_attr.setCertifiable(q15);
        }

        if (paramMap.get("ErrCode") == null || paramMap.get("ErrCode").toString().equals("")) {
        } else {
            Integer q16 = Integer.parseInt(paramMap.get("ErrCode").toString());
            res_attr.setErrCode(q16);
        }
        if (paramMap.get("EndTime") == null || paramMap.get("EndTime").toString().equals("")) {
        } else {
            Timestamp q17 = Timestamp.valueOf(paramMap.get("EndTime").toString());
            res_attr.setEndTime(q17);
        }
        Integer q18 = Integer.parseInt(paramMap.get("Secrecy").toString());
        if (paramMap.get("IPAddress") == null || paramMap.get("IPAddress").toString().equals("")) {
        } else {
            String q19 = paramMap.get("IPAddress").toString();
            res_attr.setIPAddress(q19);
        }
        if (paramMap.get("Port") == null || paramMap.get("Port").toString().equals("")) {
        } else {
            Integer q20 = Integer.parseInt(paramMap.get("Port").toString());
            res_attr.setPort(q20);
        }
        if (paramMap.get("UsrName") == null || paramMap.get("UsrName").toString().equals("")) {
        } else {
            String q21 = paramMap.get("UsrName").toString();
            res_attr.setUsrName(q21);
        }
        if (paramMap.get("Password") == null || paramMap.get("Password").toString().equals("")) {
        } else {
            String q22 = paramMap.get("Password").toString();
            res_attr.setPassword(q22);
        }
        String q23 = paramMap.get("Status").toString();

        if (paramMap.get("Longitude") == null || paramMap.get("Longitude").toString().equals("")) {
        } else {
            double q24 = Double.parseDouble(paramMap.get("Longitude").toString());
            res_attr.setLongitude(q24);
        }
        if (paramMap.get("Latitude") == null || paramMap.get("Latitude").toString().equals("")) {
        } else {
            double q25 = Double.parseDouble(paramMap.get("Latitude").toString());
            res_attr.setLatitude(q25);
        }
        Integer q26 = Integer.parseInt(paramMap.get("PlatformID").toString());
        Integer q27 = Integer.parseInt(paramMap.get("ResType").toString());
        if (paramMap.get("SipServiceID") == null || paramMap.get("SipServiceID").toString().equals("")) {
        } else {
            Integer q28 = Integer.parseInt(paramMap.get("SipServiceID").toString());
            res_attr.setSipServiceID(q28);
        }
        if (paramMap.get("GuardFlag") == null || paramMap.get("GuardFlag").toString().equals("")) {
        } else {
            Integer q29 = Integer.parseInt(paramMap.get("GuardFlag").toString());
            res_attr.setGuardFlag(q29);
        }

        res_attr.setResID(q1);
        res_attr.setDeviceID(q2);
        res_attr.setName(q3);
        //如果修改的是摄像机131，则对应修改摄像机的名称
        if(paramMap.get("ResType").toString().equals("131")){
            Camera1 camera1=new Camera1();
            camera1.setAlias(q3);
            camera1.setResID(q1);
            this.iCameraService.updateAlias(camera1);
        }
        res_attr.setManufacturer(q4);
        res_attr.setModel(q5);
        res_attr.setOwner(q6);
        res_attr.setCivilCode(q7);
        res_attr.setAddress(q9);
        res_attr.setParental(q10);
        res_attr.setParentID(q11);
        res_attr.setRegisterWay(q13);
        res_attr.setProtocolType(qa8);
        res_attr.setSecrecy(q18);
        res_attr.setStatus(q23);
        res_attr.setPlatformID(q26);
        res_attr.setResType(q27);
        this.ires.update(res_attr);
        //插入日志
        LogView logView=new LogView();
        logView.setLogName("reslog");
        logView.setComments("更新");
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        logView.setLogDate(String.valueOf(simpleDateFormat.format(date)));
        logView.setUsrName(paramMap.get("accountName").toString());
        logView.setGroupOrCameraName("设备-"+res_attr.getName());
        LogViewController logViewController=new LogViewController();
        this.iLogViewService.add(logView);
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //获取平台id
    @RequestMapping(value = "/platformid", method = RequestMethod.GET)
    public String getplatformid() {
        List<UpDown> platformids = new ArrayList<>();
        platformids = this.iUpDownService.list(new UpDown());
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", platformids);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    //获取摄像机父设备ID、父设备名称，父设备包括：IPC摄像机/NVR/DVR
    @RequestMapping(value = "/resIdName", method = RequestMethod.GET)
    public String getResid() {
        List<ResIdName> resids = new ArrayList<>();
        resids = this.ires.getResIdName();
        List<ResIdName> resIdNameList=new ArrayList<>();
        for(int i=0;i<resids.size();i++){
            //查询该设备下是否还有通道
            Integer num=this.ires.queryforResIdtoChannel(resids.get(i).getResID());
            if(num<=0){

            }else{
                resIdNameList.add(resids.get(i));
            }
        }
        Map<String, Object> resultMap = new HashMap<>();
        if(resids.size()<=0){
            resultMap.put("code", "0000");
            resultMap.put("data", "null");
        }else {
            resultMap.put("code", "0000");
            resultMap.put("data", resIdNameList);
        }
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //根据摄像机ID查询摄像机所在的设备
    @RequestMapping(value="/queryOne",method = RequestMethod.POST)
    public String getRes(@RequestBody Integer id){
        Res_Attr res_attr=new Res_Attr();
        res_attr.setResID(id);
        String ss=this.ires.queryforobject1(res_attr);
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", ss);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
  //获取sip服务
    @RequestMapping(value = "/sip",method = RequestMethod.GET)
    public String getSip(){
        List<Services> services=this.ires.getsip();
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", services);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //获取sip服务(存储计划)
    @RequestMapping(value = "/sip1",method = RequestMethod.GET)
    public String getSip1(){
        List<Services> services=this.ires.getsip1();
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", services);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //根据StreamID获取Stream名称
    @RequestMapping(value = "/sipName",method = RequestMethod.POST)
    public String getSipName(@RequestBody Integer id){
        Services services=this.ires.getSipName(id);
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", services);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //查询tbl_res_attr表的最后一条记录的deviceID
    @RequestMapping(value = "/selectLastData",method = RequestMethod.GET)
    public String selectLastData(){
       String LastDeviceID=this.ires.selectLastData();
       if (LastDeviceID==null || LastDeviceID.equals("")){
           LastDeviceID="11022419911117412325";
       }
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", LastDeviceID);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //存储摄像机入侵告警
    @RequestMapping(value = "/saveAlarm",method = RequestMethod.POST)
    public String saveAlarm(@RequestBody Map<String,Object> map){
        Gson gson = new Gson();
        //获得的摄像机ID
        int resId=Integer.parseInt(map.get("ResId").toString());
        //根据摄像机ID去资源表里查询出他的数据
        Res_Attr res_attr=this.ires.queryForResAttrById(resId);
        String test1=gson.toJson(map.get("data"));
        //设置入侵告警数据条数
        List<InAlarm> ls=gson.fromJson(test1,new TypeToken<List<InAlarm>>(){}.getType());
        for(int i=0;i<ls.size();i++){
            //先向任务状态表里加数据
            TaskStatus taskStatus=new TaskStatus();
            Date data = new Date();
            Timestamp timestamp=new Timestamp(data.getTime());
            taskStatus.setCommitTime(timestamp);
            taskStatus.setStatus(3);
            int taskStatusId=this.ires.addTaskStatus(taskStatus);
            //再向规则表里加数据
            AnalysisRule analysisRule=new AnalysisRule();
            analysisRule.setRuleName(ls.get(i).getName());
            analysisRule.setRuleCode(ls.get(i).getId());
            analysisRule.setVertex(ls.get(i).getPath());
            int ruleID=this.ires.addAnalysisRule(analysisRule);
            //最后向任务表插入数据
            Task task=new Task();
            task.setTaskID(taskStatusId);
            task.setTaskID(ls.get(i).getId());
            task.setResourceName(res_attr.getName());
            task.setPlatformID(res_attr.getPlatformID());
            //拼接url。
            String resultURL="rtsp://"+res_attr.getUsrName()+":"+res_attr.getPassword()+"@"+res_attr.getIPAddress()+"/main/av_stream";
            task.setURL(resultURL);
            task.setServiceID(res_attr.getSipServiceID());
            task.setVideoInfoID(res_attr.getResID());
            task.setPriorty(1);
            task.setStatusID(taskStatus.getTaskID());
            task.setControlStatus(1);
            task.setRuleParamID(analysisRule.getRuleID());
            this.ires.addTask(task);
        }
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "200");
        Gson gson1 = new Gson();
        return gson1.toJson(resultMap);
    }
    //删除入侵告警设置
    @RequestMapping(value = "/deleteAlarm",method = RequestMethod.POST)
    public void deleteAlarm(@RequestBody Integer ResId){
        //根据ResId获取tbl_task的数据
        List<Task> task=this.ires.queryForTask(ResId);
        for(Task t: task){
            //删除对应的tbl_analysisrule和tbl_taskstatus数据
            this.ires.deleteRule(t.getRuleParamID());
            this.ires.deleteTaskStatus(t.getStatusID());
        }
        //删除tbl_task表数据
        this.ires.deleteTask(ResId);
    }
}
