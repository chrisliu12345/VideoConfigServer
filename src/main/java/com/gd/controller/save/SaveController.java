package com.gd.controller.save;


import com.gd.controller.common.CommonController;
import com.gd.domain.save.SaveConfig;
import com.gd.domain.save.SaveCount;
import com.gd.domain.services.Services;
import com.gd.service.save.ISaveConfigService;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import org.omg.CORBA.ObjectHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import java.sql.*;
import java.util.*;

/**
 * Created by 郄梦岩 on 2017/11/10.
 */
@RequestMapping("/save")
@RestController
public class SaveController {
    @Autowired
    private ISaveConfigService iSaveConfigService;

    @RequestMapping(value = "/tt",method = RequestMethod.GET)
    public String gettest(){
        Gson gson=new Gson();
        String sk="该摄像机已删除";
        return gson.toJson(sk);
    }
    //查询存储计划
    @RequestMapping(method = RequestMethod.GET)
    public String get() {
    List<SaveConfig> saveConfigList=this.iSaveConfigService.queryForObject();
        Map<String,Object> map1=new HashMap<>();
        CommonController controller = new CommonController();
        for(int i=0;i<saveConfigList.size();i++){
            List<String> dataTemp=controller.ZXor(saveConfigList.get(i).getWorkDay());
            saveConfigList.get(i).setDayTemp(dataTemp);
            saveConfigList.get(i).setStart(saveConfigList.get(i).getStartTime().toString());
            saveConfigList.get(i).setStop(saveConfigList.get(i).getStopTime().toString());
            //用cameraID去查它的名字
            String camName=this.iSaveConfigService.queryForCameraName(saveConfigList.get(i).getCamID());
            if(camName==null ||camName.equals("")){
                saveConfigList.get(i).setCameraName("该摄像机已删除");
            }else{saveConfigList.get(i).setCameraName(camName);}

        }
        map1.put("data",saveConfigList);
        Gson gson=new Gson();
        return gson.toJson(map1);
    }
    //添加存储计划
    @RequestMapping(method = RequestMethod.POST)
    public String add(@RequestBody Map<String, Object> map) {
        List<String> listIds=(List<String>)map.get("cameraIds");
        System.out.println("我是选中的节点"+listIds);
        Map<String,String> map1=new HashMap<>();
        Gson gson=new Gson();
        for(int i=0;i<listIds.size();i++){
        SaveConfig saveConfig = new SaveConfig();
            System.out.println(listIds.get(i));
            saveConfig.setCamID(Integer.parseInt(listIds.get(i)));
        if (map.get("StartTime") == null || map.get("StartTime").toString().equals("")) {
            String StartTime = "00:00:00";
            saveConfig.setStartTime(Time.valueOf(StartTime));
        } else {
            String StartTime = map.get("StartTime").toString() + ":00";
            try{
                saveConfig.setStartTime(Time.valueOf(StartTime));
            }catch (IllegalArgumentException e){
                e.printStackTrace();
                map1.put("code","500");
                return gson.toJson(map1);
            }

        }
        if (map.get("StopTime") == null || map.get("StopTime").toString().equals("")) {
            String StopTime = "24:00:00";
            saveConfig.setStopTime(Time.valueOf(StopTime));
        } else {
            String StopTime = map.get("StopTime").toString() + ":00";
            try{
                saveConfig.setStopTime(Time.valueOf(StopTime));
            }catch (IllegalArgumentException e){
                e.printStackTrace();
                map1.put("code","500");
                return gson.toJson(map1);
            }
        }

        if (map.get("StreamingID") == null || map.get("StreamingID").toString().equals("")) {
            Integer StreamingID = 0;
            saveConfig.setStreamingID(StreamingID);
        } else {
            Integer StreamingID = Integer.valueOf(map.get("StreamingID").toString());
            saveConfig.setStreamingID(StreamingID);
        }
        if (map.get("KeepTime") == null || map.get("KeepTime").toString().equals("")) {
        } else {
            Integer KeepTime = Integer.valueOf(map.get("KeepTime").toString());
            saveConfig.setKeepTime(KeepTime);
        }
        if (map.get("IslostStop") == null || map.get("IslostStop").toString().equals("")) {
            Integer IslostStop = 0;
            saveConfig.setIslostStop(IslostStop);
        } else {
            Integer IslostStop = Integer.valueOf(map.get("IslostStop").toString());
            saveConfig.setIslostStop(IslostStop);
        }
        if (map.get("WorkDay") == null) {
        } else {
            List<String> workDay = (List) map.get("WorkDay");
            //调用异或运算方法
            CommonController controller = new CommonController();
            Integer ss = controller.Xor(workDay);
            saveConfig.setWorkDay(ss);
        }
            if (map.get("alarmTime").equals(0)) {
            } else {
                saveConfig.setAlarmTime(Integer.parseInt(map.get("alarmTime").toString()));
            }
        this.iSaveConfigService.add(saveConfig);
        }
        map1.put("code","OK");
        return gson.toJson(map1);
    }
    //更新存储计划
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestBody  Map<String, Object> map) {
        SaveConfig saveConfig = new SaveConfig();
        Map<String,String> map1=new HashMap<>();
        Gson gson=new Gson();
             saveConfig.setPlanID(Integer.parseInt(map.get("PlanID").toString()));
        if (map.get("StartTime") == null || map.get("StartTime").toString().equals("")) {
            String StartTime = "00:00:00";
            saveConfig.setStartTime(Time.valueOf(StartTime));
        } else {
            String StartTime = map.get("StartTime").toString() + ":00";
            try{
                saveConfig.setStartTime(Time.valueOf(StartTime));
            }catch (IllegalArgumentException e){
                e.printStackTrace();
                map1.put("code","500");
                return gson.toJson(map1);
            }

        }
        if (map.get("StopTime") == null || map.get("StopTime").toString().equals("")) {
            String StopTime = "24:00:00";
            saveConfig.setStopTime(Time.valueOf(StopTime));
        } else {
            String StopTime = map.get("StopTime").toString() + ":00";
            try{
                saveConfig.setStopTime(Time.valueOf(StopTime));
            }catch (IllegalArgumentException e){
                e.printStackTrace();
                map1.put("code","500");
                return gson.toJson(map1);
            }
        }
        if (map.get("CamID") == null || map.get("CamID").toString().equals("")) {
        } else {
            Integer CamID = Integer.valueOf(map.get("CamID").toString());
            saveConfig.setCamID(CamID);
        }
        if (map.get("StreamingID") == null || map.get("StreamingID").toString().equals("")) {
            Integer StreamingID = 0;
            saveConfig.setStreamingID(StreamingID);
        } else {
            Integer StreamingID = Integer.valueOf(map.get("StreamingID").toString());
            saveConfig.setStreamingID(StreamingID);
        }
        if (map.get("KeepTime") == null || map.get("KeepTime").toString().equals("")) {
        } else {
            Integer KeepTime = Integer.valueOf(map.get("KeepTime").toString());
            saveConfig.setKeepTime(KeepTime);
        }
        if (map.get("IslostStop") == null || map.get("IslostStop").toString().equals("")) {
            Integer IslostStop = 0;
            saveConfig.setIslostStop(IslostStop);
        } else {
            Integer IslostStop = Integer.valueOf(map.get("IslostStop").toString());
            saveConfig.setIslostStop(IslostStop);
        }
        if (map.get("dayTemp1") == null) {
            saveConfig.setWorkDay(Integer.parseInt(map.get("WorkDay").toString()));
        } else {
            List<String> workDay = (List) map.get("dayTemp1");
            //调用异或运算方法
            CommonController controller = new CommonController();
            Integer ss = controller.Xor(workDay);
            saveConfig.setWorkDay(ss);
        }
        this.iSaveConfigService.update(saveConfig);
        map1.put("code","OK");
        return gson.toJson(map1);
    }
    //根据选择的摄像机查询摄像机对应的serviceID
    @RequestMapping(value = "/serviceId", method = RequestMethod.POST)
    public String getServiceID(@RequestBody Integer id) {
        Services services = this.iSaveConfigService.queryForServiceID(id);
        Map<String, Object> map = new HashMap<>();
        map.put("data", services);
        Gson gson = new Gson();
        return gson.toJson(map);
    }

    //查询存储服务器负载情况
    @RequestMapping(value = "/selectService", method = RequestMethod.POST)
    public String getselectService(@RequestBody Integer id) {
        List<SaveCount> saveCountList = this.iSaveConfigService.getselectService();
        Map<String, String> map = new HashMap<>();
        Gson gson = new Gson();
        if (saveCountList.size()==0) {
            map.put("data", "OK");
        }else if(id.equals(saveCountList.get(0).getStreamingID())){
            map.put("data", "所选择服务器负载计划最多，建议选择别的服务器");
        }else{
            map.put("data", "OK");
        }
        return gson.toJson(map);
    }

    //删除录像计划
    @RequestMapping(value = "/deleteAll",method = RequestMethod.POST)
    public String deleteALL(@RequestBody List<Integer> ids){
        for(int i=0;i<ids.size();i++){
            this.iSaveConfigService.deleteAll(ids.get(i));
        }
        return "delete ok";
    }
    //删除单独录像计划
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public void deleteALL(@RequestBody Integer id){
            this.iSaveConfigService.deleteAll(id);
        }

}
