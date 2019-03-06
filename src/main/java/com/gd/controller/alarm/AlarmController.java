package com.gd.controller.alarm;

import com.gd.controller.common.CommonController;
import com.gd.domain.alarm.Alarm;
import com.gd.domain.app.App;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.service.alarm.IAlarmService;
import com.gd.service.res_attr.IResService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/alarm")
public class AlarmController {
    @Autowired
    private IAlarmService iAlarmService;
    @Autowired
    private IResService iResService;
    @Autowired
    private com.gd.service.linkage.IResService linkResService;
    //查看报警联动设备
    @RequestMapping(method = RequestMethod.GET)
    public String queryForList() {
        List<Alarm> appList = new ArrayList<>();
        Map<String, Object> resultMap = new HashMap<>();
        appList = this.iAlarmService.queryForList();
        for(int i=0;i<appList.size();i++){
           /* String DeviceName=this.iResService.queryForCamera(Integer.parseInt(appList.get(i).getDeviceid()));
            appList.get(i).setDeviceName(DeviceName);*/
            switch (appList.get(i).getAlarmMethod()){
                case 1:appList.get(i).setAlarmMethodName("电话报警");break;
                case 2:appList.get(i).setAlarmMethodName("设备报警");
                        switch (appList.get(i).getAlarmType()){
                            case 1:appList.get(i).setAlarmTypeName("视频丢失");break;
                            case 2:appList.get(i).setAlarmTypeName("设备防拆报警");break;
                            case 3:appList.get(i).setAlarmTypeName("存储设备磁盘满报警");break;
                            case 4:appList.get(i).setAlarmTypeName("设备高温报警");break;
                            case 5:appList.get(i).setAlarmTypeName("设备低温报警");break;

                        }
                break;
                case 3:appList.get(i).setAlarmMethodName("短信报警");break;
                case 4:appList.get(i).setAlarmMethodName("GPS报警");break;
                case 5:appList.get(i).setAlarmMethodName("视频报警");
                    switch (appList.get(i).getAlarmType()){
                        case 1:appList.get(i).setAlarmTypeName("人工视频报警");break;
                        case 2:appList.get(i).setAlarmTypeName("运动目标检测报警");break;
                        case 3:appList.get(i).setAlarmTypeName("遗留物检测报警");break;
                        case 4:appList.get(i).setAlarmTypeName("物体移除检测报警");break;
                        case 5:appList.get(i).setAlarmTypeName("绊线检测报警");break;
                        case 6:appList.get(i).setAlarmTypeName("入侵检测报警");break;
                        case 7:appList.get(i).setAlarmTypeName("逆行检测报警");break;
                        case 8:appList.get(i).setAlarmTypeName("徘徊检测报警");break;
                        case 9:appList.get(i).setAlarmTypeName("流量统计报警");break;
                        case 10:appList.get(i).setAlarmTypeName("密度检测报警");break;
                        case 11:appList.get(i).setAlarmTypeName("视频异常检测报警");break;
                        case 12:appList.get(i).setAlarmTypeName("快速移动报警");break;
                    }
                break;
                case 6:appList.get(i).setAlarmMethodName("设备故障报警");
                    switch (appList.get(i).getAlarmType()){
                        case 1:appList.get(i).setAlarmTypeName("存储设备磁盘故障报警");break;
                        case 2:appList.get(i).setAlarmTypeName("存储设备风扇故障报警");break;
                    }
                break;
                case 7:appList.get(i).setAlarmMethodName("其他报警");break;
            }
            CommonController controller = new CommonController();
            List<String> dataTemp=controller.ZXorAlarm(appList.get(i).getLinkage_Method());
            appList.get(i).setLinkage_MethodName(dataTemp);

        }

        resultMap.put("code", "0000");
        resultMap.put("data", appList);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //添加报警联动设置
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(@RequestBody Map<String,Object> map) {
        Alarm alarm=new Alarm();
        Res_Attr res_attr=this.linkResService.queryForObjectidByResId(Integer.parseInt(map.get("ResId").toString()));
        alarm.setDeviceid(res_attr.getDeviceID());
        alarm.setAlarm_event_name(map.get("Alarm_event_name").toString());
        alarm.setInput_channel(Integer.parseInt(map.get("Input_channel").toString()));
        alarm.setAlarmMethod(Integer.parseInt(map.get("AlarmMethod").toString()));
        String s1="{\"ctrlval\":\""+map.get("Linkage_Info").toString()+"\",\"duration\":\""
                +map.get("Prest2").toString()+"\"}";
        alarm.setLinkage_Info(s1);

        if(map.get("AlarmType")!=null){
            alarm.setAlarmType(Integer.parseInt(map.get("AlarmType").toString()));
        }
        List<String> personList=(List)map.get("Notified_person");
        alarm.setNotified_person(personList.toString().substring(1,personList.toString().length()-1));
        List<String> cameraList=(List)map.get("Linkage_Camera");
        alarm.setLinkage_Camera(cameraList.toString().substring(1,cameraList.toString().length()-1));
        List<String> workDay = (List) map.get("Linkage_Method");
        //调用异或运算方法
        CommonController controller = new CommonController();
        Integer ss = controller.Xor(workDay);
        alarm.setLinkage_Method(ss);
        this.iAlarmService.add(alarm);
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", "0000");
        resultMap.put("data", "add ok!");
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //批量删除报警联动设备
    @RequestMapping(value = "/deleteAll",method = RequestMethod.POST)
    public void deleteALL(@RequestBody List<Integer> ids){
        for(int i=0;i<ids.size();i++){
            this.iAlarmService.delete(ids.get(i));
        }
    }
    //删除报警联动设备
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public void deleteALL(@RequestBody Integer id){
        this.iAlarmService.delete(id);
    }
}
