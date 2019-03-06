package com.gd.controller.linkage;

import com.gd.domain.camera.Camera1;
import com.gd.domain.channel.Channel;
import com.gd.domain.org.LogView;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.service.linkage.*;
import com.gd.service.logview.ILogViewService;
import com.google.gson.Gson;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.*;

@RestController
@RequestMapping(value = "/linkRes")
public class LinkageCameraController {
    @Autowired
    private IResService resService;
    @Autowired
    private ChannelAdd channelController;
    @Autowired
    private ICameraService iCameraService;
    @Autowired
    private IChannelService channelService;
    @Autowired
    private ILogViewService iLogViewService;

    //添加摄像机
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addCamera(@RequestBody Map<String, String> map) {
        String site = map.get("SiteName");//位置名称
        System.out.println("摄像机名称：" + site);
        String url = map.get("url");//Ip地址
        String username = map.get("username");//用户名
        String password = map.get("password");//密码
        String Port = map.get("Port");//端口号
        String ProtocolType = map.get("ProtocolType");//摄像机类型
        int StreamingID = 2;  //转发服务ID
        //第二步向tbl_res_attr表，camera表，channel表中插入数据
        CameraAdd cameraServer = null;
        Res_Attr res_attr = null;
        Map<String, String> map1 = new HashMap<>();
        map1.put("Name", site);
        map1.put("IPAddress", url);
        map1.put("UsrName", username);
        map1.put("Password", password);
        map1.put("StreamingID", String.valueOf(StreamingID));
        map1.put("ResType", "132");
        map1.put("ProtocolType", ProtocolType);
        map1.put("Port", Port);
        cameraServer = new CameraAdd();
        res_attr = cameraServer.add(map1);
        this.resService.add(res_attr);
        String cameraName = ProtocolType;
        Integer cameraType = 132;
        Integer resid = this.resService.queryforResId(res_attr);
        Map<String, String> map2 = new HashMap<>();
        map2.put("Alias", site);
        map2.put("ResID", String.valueOf(resid));
        map2.put("StreamId", "2");
        Camera1 camera1 = cameraServer.addCam(map2);
        this.iCameraService.add(camera1);
        //IPC摄像机则只加一个通道
        this.channelController.addChannel(1, cameraType, cameraName, resid);

        Map<String, Object> map3 = new HashMap<>();
        map3.put("code", "200");
        map3.put("cameraId", resid);
        Gson gson = new Gson();
        return gson.toJson(map3);

    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestBody Map<String, Object> paramMap) {
        Integer q1 = Integer.parseInt(paramMap.get("ResID").toString());
        Res_Attr res_attr = this.resService.queryForObjectidByResId(q1);
        if (paramMap.get("SiteName") == null || paramMap.get("SiteName").toString().equals("")) {
        } else {
            String q2 = paramMap.get("SiteName").toString();
            res_attr.setName(q2);
        }
        if (paramMap.get("url") == null || paramMap.get("url").toString().equals("")) {
        } else {
            String q3 = paramMap.get("url").toString();
            res_attr.setIPAddress(q3);
        }
        if (paramMap.get("username") == null || paramMap.get("username").toString().equals("")) {
        } else {
            String q4 = paramMap.get("username").toString();
            res_attr.setUsrName(q4);
        }
        if (paramMap.get("password") == null || paramMap.get("password").toString().equals("")) {
        } else {
            String q5 = paramMap.get("password").toString();
            res_attr.setPassword(q5);
        }
        if (paramMap.get("Port") == null || paramMap.get("Port").toString().equals("")) {
        } else {
            Integer q6 = Integer.parseInt(paramMap.get("Port").toString());
            res_attr.setPort(q6);
        }
        if (paramMap.get("ProtocolType") == null || paramMap.get("ProtocolType").toString().equals("")) {
        } else {
            String q7 = paramMap.get("ProtocolType").toString();
            res_attr.setProtocolType(q7);
        }
        this.resService.update(res_attr);

        Map<String, Object> map3 = new HashMap<>();
        map3.put("code", "200");
        map3.put("data", "success");
        Gson gson = new Gson();
        return gson.toJson(map3);

    }

    //删除设备
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestBody Map<String, List> maps) {
        Map<String, Object> resultMap = new HashMap<>();
        Gson gson = new Gson();
        if (maps.get("ids") == null) {
            resultMap.put("code", "null");
            resultMap.put("data", "null data");
        } else {
            List<Integer> lists = (List<Integer>) maps.get("ids");
            for (Integer id : lists) {
                Res_Attr res = new Res_Attr();
                res.setResID(id);
                String res_attr = this.resService.queryforobject1(res);

                if (res_attr == null || res_attr.equals("null")) {
                    //说明选择的是设备
                    //1.删除通道
                    Channel channel = new Channel();
                    channel.setNvrID(id);
                    this.channelService.delete1(channel);
                    //2.删除设备下的摄像机
                    String deviceid = this.resService.queryforDeviceID(res);
                    List<String> ResID = this.resService.deviceIDtoResID(deviceid);
                    //删除res-attr表的摄像机
                    for (int i = 0; i < ResID.size(); i++) {
                        this.iCameraService.deleteForDeviceID(deviceid);
                        //删除camera表的摄像机
                        Camera1 camera1 = new Camera1();
                        camera1.setResID(Integer.parseInt(ResID.get(i)));
                        this.iCameraService.delete(camera1);
                    }
                    //删除channel表的通道。
                    Channel ch = new Channel();
                    ch.setCamID(id);
                    this.channelService.delete1(ch);
                    //3.删除设备
                    this.resService.delete(res);
                } else {
                    //否则是删除摄像机
                    //1.更新channel表中摄像机占用的通道，恢复为初始状态
                    Channel channel = new Channel();
                    channel.setCamID(id);
                    this.channelService.updateForObject0(channel);
                    Camera1 camera1 = new Camera1();
                    camera1.setResID(id);
                    //2.删除camera摄像机信息
                    this.iCameraService.delete(camera1);
                    //3.删除设备里的摄像机
                    this.resService.delete(res);
                }
            }
            resultMap.put("code", "200");
            resultMap.put("data", "success");
        }
        return gson.toJson(resultMap);

    }
}
