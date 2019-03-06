package com.gd.controller.camera;

import com.gd.controller.common.Encrypt;
import com.gd.domain.camera.Camera1;
import com.gd.domain.channel.Channel;
import com.gd.domain.org.LogView;
import com.gd.domain.place.Place;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.service.account.IAccountService;
import com.gd.service.camera.ICameraService;
import com.gd.service.channel.IChannelService;
import com.gd.service.encoder.IEncoderService;
import com.gd.service.logview.ILogViewService;
import com.gd.service.res_attr.IResService;
import com.gd.util.ExcelUtils;
import com.gd.util.FileLoadUtils;
import com.gd.util.SetListUtils;
import com.google.gson.Gson;
import org.apache.commons.io.FileUtils;
import org.apache.xmlbeans.impl.piccolo.io.FileFormatException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Administrator on 2017/8/11 0011.
 */
@RestController
@RequestMapping("/camera")

public class CameraController {

    //资源类型对应表，待查
    private static LinkedHashMap<String,Integer> resTypeMap = new LinkedHashMap<>();
    private static LinkedHashMap<String,Integer> ptzTypeMap = new LinkedHashMap<>();
    private static LinkedHashMap<String,String> protocolTypeMap = new LinkedHashMap<>();
    {
        resTypeMap.put("DVR",111);
        resTypeMap.put("NVR",118);
        resTypeMap.put("摄像机",131);
        resTypeMap.put("IPC",132);

        ptzTypeMap.put("球机",1);
        ptzTypeMap.put("半球",2);
        ptzTypeMap.put("枪机",3);
        /*ptzTypeMap.put("固定枪机",3);
        ptzTypeMap.put("摇控枪机",4);*/

        protocolTypeMap.put("海康","HIK");
        protocolTypeMap.put("大华","DH");
        protocolTypeMap.put("宇视","UNIVIEW");
    }

    @Value("${excel.path1}")
    private String filePath;
    @Value("${excel.path2}")
    private String path1;
    @Value("${excel.path3}")
    private String path2;
    @Autowired
    private ICameraService icc;
    @Autowired
    private IEncoderService ice;
    @Autowired
    private IChannelService ich;
    @Autowired
    private IResService irs;
    @Autowired
    private IAccountService iAccountService;
    @Autowired
    private ILogViewService iLogViewService;
    private  int deviceCount=0;
    /*获取摄像头列表信息的方法*/
    @RequestMapping(method = RequestMethod.GET)
    public String ss() {

        List<Camera1> appList = new ArrayList<>();
        Map<String, Object> resultMap = new HashMap<>();
        appList = this.icc.listForCamera1();
        for(int i=0;i<appList.size();i++){
            //根据StreamingID获取StreamingIP
            String StreamingIP=this.icc.queryForStreamingIP(appList.get(i).getStreamingID());
            appList.get(i).setStreamingIP(StreamingIP);
        }
        resultMap.put("code", "0000");
        resultMap.put("data", appList);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    //删除摄像头信息的方法
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestBody Map<String,String> maps) {
        Integer id=Integer.parseInt(maps.get("ResID"));
        LogView logView=new LogView();
        logView.setLogName("reslog");
        logView.setComments("删除");
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        logView.setLogDate(String.valueOf(simpleDateFormat.format(date)));
        logView.setUsrName(maps.get("accountName"));
        logView.setGroupOrCameraName("摄像机-"+maps.get("Alias"));
        this.iLogViewService.add(logView);
        //1.更新channel表中摄像机占用的通道，恢复为初始状态
        Channel channel=new Channel();
        channel.setCamID(id);
        this.ich.updateForObject0(channel);
        Camera1 camera1 = new Camera1();
        camera1.setResID(id);
        //2.删除camera摄像机信息
        this.icc.delete(camera1);
        //3.删除设备里的摄像机
        Res_Attr res = new Res_Attr();
        res.setResID(id);
        this.irs.delete(res);
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    /*添加摄像头的方法*/
    @RequestMapping(method = RequestMethod.POST)
    public String add(@RequestBody Map<String, Object> paramMap) {
        LogView logView=new LogView();
        logView.setLogName("reslog");
        logView.setComments("新增");
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        logView.setLogDate(String.valueOf(simpleDateFormat.format(date)));
        logView.setUsrName(paramMap.get("accountName").toString());
        logView.setGroupOrCameraName("摄像机-"+paramMap.get("Alias"));
        this.iLogViewService.add(logView);
        //先判断添加的是IPC摄像机还是普通摄像机
        if (paramMap.get("ResType") == null || paramMap.get("ResType").toString().equals("")) {
            System.out.println("我是走的普通摄像机");
            //先向资源表中添加摄像机信息
            Res_Attr res_attr = new Res_Attr();
            //设备的DEVICEID
            Res_Attr reds = this.irs.DeviceIDforRes(paramMap.get("ParentID").toString());
            if (paramMap.get("Alias") == null || paramMap.get("Alias").toString().equals("")) {
                String q3 = "null";
                res_attr.setName(q3);
            } else {
                String q3 = paramMap.get("Alias").toString();
                res_attr.setName(q3);
            }
            if (paramMap.get("codec16") == null || paramMap.get("codec16").toString().equals("")) {
                String uuid = UUID.randomUUID().toString();
                res_attr.setDeviceID(paramMap.get("codec16").toString());
            } else {
                String q2 = paramMap.get("codec16").toString();
                res_attr.setDeviceID(q2);
            }
            if (paramMap.get("Manufacturer") == null || paramMap.get("Manufacturer").toString().equals("")) {
                String q4 = reds.getManufacturer();
                res_attr.setManufacturer(q4);
            } else {
                String q4 = paramMap.get("Manufacturer").toString();
                res_attr.setManufacturer(q4);
            }
            if (paramMap.get("Model") == null || paramMap.get("Model").toString().equals("")) {
                String q5 = reds.getModel();
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
                String q9 = reds.getAddress();
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
                String q11 = "null";
                res_attr.setParentID(q11);
            } else {
                String q11 = paramMap.get("ParentID").toString();
                res_attr.setParentID(q11);
                //根据resid去查类型
                String ProtocolType = this.icc.queryForProtocolType(q11);
                res_attr.setProtocolType(ProtocolType);
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
                String q19 = reds.getIPAddress();
                res_attr.setIPAddress(q19);
            } else {
                String q19 = paramMap.get("IPAddress").toString();
                res_attr.setIPAddress(q19);
            }
            if (paramMap.get("Port") == null || paramMap.get("Port").toString().equals("")) {
                Integer q20 = reds.getPort();
                res_attr.setPort(q20);
            } else {
                Integer q20 = Integer.parseInt(paramMap.get("Port").toString());
                res_attr.setPort(q20);
            }
            if (paramMap.get("UsrName") == null || paramMap.get("UsrName").toString().equals("")) {
                String q21 = reds.getUsrName();
                res_attr.setUsrName(q21);
            } else {
                String q21 = paramMap.get("UsrName").toString();
                res_attr.setUsrName(q21);
            }
            if (paramMap.get("Password") == null || paramMap.get("Password").toString().equals("")) {
                res_attr.setPassword(reds.getPassword());
            } else {
                Encrypt encrypt = new Encrypt();
                encrypt.setKey("123456");
                String test1 = encrypt.setEncString(paramMap.get("Password").toString());

                String test2 = encrypt.setDesString(test1);

                res_attr.setPassword(test1);

            }
            if (paramMap.get("Status") == null || paramMap.get("Status").toString().equals("")) {
                String q23 = "ON";
                res_attr.setStatus(q23);
            } else {
                String q23 = paramMap.get("Status").toString();
                res_attr.setStatus(q23);
            }

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
            if (paramMap.get("PlatformID") == null || paramMap.get("PlatformID").toString().equals("")) {
                Integer q26 = reds.getPlatformID();
                res_attr.setPlatformID(q26);
            } else {
                Integer q26 = Integer.parseInt(paramMap.get("PlatformID").toString());
                res_attr.setPlatformID(q26);
            }
            if (paramMap.get("ResType") == null || paramMap.get("ResType").toString().equals("")) {
                Integer q27 = 131;
                res_attr.setResType(q27);
            } else {
                Integer q27 = Integer.parseInt(paramMap.get("ResType").toString());
                res_attr.setResType(q27);
            }
            if (paramMap.get("SipServiceID") == null || paramMap.get("SipServiceID").toString().equals("")) {
                if (paramMap.get("SipServiceID1") == null || paramMap.get("SipServiceID1").toString().equals("")) {
                    Integer q28 = reds.getSipServiceID();
                    res_attr.setSipServiceID(q28);
                } else {
                    Integer q28 = Integer.parseInt(paramMap.get("SipServiceID1").toString());
                    res_attr.setSipServiceID(q28);
                }
            } else {
                Integer q28 = Integer.parseInt(paramMap.get("SipServiceID").toString());
                res_attr.setSipServiceID(q28);
            }
            if (paramMap.get("GuardFlag") == null || paramMap.get("GuardFlag").toString().equals("")) {
                Integer q29 = 0;
                res_attr.setGuardFlag(q29);
            } else {
                Integer q29 = Integer.parseInt(paramMap.get("GuardFlag").toString());
                res_attr.setGuardFlag(q29);
            }
            this.irs.add(res_attr);
            //查询资源表中的ResID，并加入到摄像机表中
            Integer resid = this.irs.queryforResId(res_attr);

            Camera1 so = new Camera1();
            so.setResID(resid);

            if (paramMap.get("selectPlaceID") == null || paramMap.get("selectPlaceID").toString().equals("")) {
            } else {
                so.setPlaceID((String) paramMap.get("selectPlaceID"));
            }
            if (paramMap.get("Alias") == null || paramMap.get("Alias").toString().equals("")) {
            } else {
                so.setAlias((String) paramMap.get("Alias"));
            }
            if (paramMap.get("Azimuth") == null || paramMap.get("Azimuth").toString().equals("")) {
            } else {
                so.setAzimuth(Double.parseDouble(paramMap.get("Azimuth").toString()));
            }
            if (paramMap.get("BusinessGroupID") == null || paramMap.get("BusinessGroupID").toString().equals("")) {
            } else {
                so.setBusinessGroupID((String) paramMap.get("BusinessGroupID"));
            }
            if (paramMap.get("DirectionType") == null || paramMap.get("DirectionType").toString().equals("")) {
            } else {
                so.setDirectionType(Integer.parseInt(paramMap.get("DirectionType").toString()));
            }
            if (paramMap.get("DownLoadSpeed") == null || paramMap.get("DownLoadSpeed").toString().equals("")) {
            } else {
                so.setDownLoadSpeed((String) paramMap.get("DownLoadSpeed"));
            }
            so.setGroupID(Long.valueOf(paramMap.get("CivilCode").toString()));

            if (paramMap.get("Height") == null || paramMap.get("Height").toString().equals("")) {
            } else {
                so.setHeight(Double.parseDouble(paramMap.get("Height").toString()));
            }
            if (paramMap.get("LockedUsr") == null || paramMap.get("LockedUsr").toString().equals("")) {
            } else {
                so.setLockedUsr(Integer.parseInt(paramMap.get("LockedUsr").toString()));
            }

            if (paramMap.get("PitchAngle") == null || paramMap.get("PitchAngle").toString().equals("")) {
            } else {
                so.setPitchAngle(Double.parseDouble(paramMap.get("PitchAngle").toString()));
            }
            if (paramMap.get("PositionType") == null || paramMap.get("PositionType").toString().equals("")) {
            } else {
                so.setPositionType(Integer.parseInt(paramMap.get("PositionType").toString()));
            }
            if (paramMap.get("PtzType") == null || paramMap.get("PtzType").toString().equals("")) {
            } else {
                so.setPtzType(Integer.parseInt(paramMap.get("PtzType").toString()));
            }
            if (paramMap.get("PtzURL") == null || paramMap.get("PtzURL").toString().equals("")) {
            } else {
                so.setPtzURL((String) paramMap.get("PtzURL"));
            }

            if (paramMap.get("ReplayID") == null || paramMap.get("ReplayID").toString().equals("")) {
            } else {
                so.setReplayID(Integer.parseInt(paramMap.get("ReplayID").toString()));
            }
            if (paramMap.get("Resolution") == null || paramMap.get("Resolution").toString().equals("")) {
            } else {
                so.setResolution((String) paramMap.get("Resolution"));
            }
            if (paramMap.get("RoomType") == null || paramMap.get("RoomType").toString().equals("")) {
            } else {
                so.setRoomType(Integer.parseInt(paramMap.get("RoomType").toString()));
            }
            if (paramMap.get("StreamId") == null || paramMap.get("StreamId").toString().equals("")) {
            } else {
                so.setStreamingID(Integer.parseInt(paramMap.get("StreamId").toString()));
            }
            if (paramMap.get("SupplyLightType") == null || paramMap.get("SupplyLightType").toString().equals("")) {
            } else {
                so.setSupplyLightType(Integer.parseInt(paramMap.get("SupplyLightType").toString()));
            }
            if (paramMap.get("SVCSpaceSupportMode") == null || paramMap.get("SVCSpaceSupportMode").toString().equals("")) {
            } else {
                so.setSVCSpaceSupportMode(Integer.parseInt(paramMap.get("SVCSpaceSupportMode").toString()));
            }
            if (paramMap.get("SVCTimeSupportMode") == null || paramMap.get("SVCTimeSupportMode").toString().equals("")) {
            } else {
                so.setSVCTimeSupportMode(Integer.parseInt(paramMap.get("SVCTimeSupportMode").toString()));
            }
            if (paramMap.get("UseType") == null || paramMap.get("UseType").toString().equals("")) {
            } else {
                so.setUseType(Integer.parseInt(paramMap.get("UseType").toString()));
            }
            this.icc.add(so);

            Map<String, Object> resultMap = new HashMap<>();
            resultMap.put("code", "0000");
            resultMap.put("data", resid);
            Gson gson = new Gson();
            return gson.toJson(resultMap);
        }else{

            System.out.println("我是走的IPC摄像机");
            Res_Attr reds = this.irs.DeviceIDforRes(paramMap.get("ParentID").toString());
            Camera1 so = new Camera1();
            so.setResID(Integer.parseInt(paramMap.get("ResID").toString()));

            if (paramMap.get("selectPlaceID") == null || paramMap.get("selectPlaceID").toString().equals("")) {
            } else {
                so.setPlaceID((String) paramMap.get("selectPlaceID"));
            }
            if (paramMap.get("Alias") == null || paramMap.get("Alias").toString().equals("")) {
            } else {
                so.setAlias((String) paramMap.get("Alias"));
            }
            if (paramMap.get("Azimuth") == null || paramMap.get("Azimuth").toString().equals("")) {
            } else {
                so.setAzimuth(Double.parseDouble(paramMap.get("Azimuth").toString()));
            }
            if (paramMap.get("BusinessGroupID") == null || paramMap.get("BusinessGroupID").toString().equals("")) {
            } else {
                so.setBusinessGroupID((String) paramMap.get("BusinessGroupID"));
            }
            if (paramMap.get("DirectionType") == null || paramMap.get("DirectionType").toString().equals("")) {
            } else {
                so.setDirectionType(Integer.parseInt(paramMap.get("DirectionType").toString()));
            }
            if (paramMap.get("DownLoadSpeed") == null || paramMap.get("DownLoadSpeed").toString().equals("")) {
            } else {
                so.setDownLoadSpeed((String) paramMap.get("DownLoadSpeed"));
            }
            System.out.println(Long.valueOf(paramMap.get("CivilCode").toString()));
            so.setGroupID(Long.valueOf(paramMap.get("CivilCode").toString().trim()));

            if (paramMap.get("Height") == null || paramMap.get("Height").toString().equals("")) {
            } else {
                so.setHeight(Double.parseDouble(paramMap.get("Height").toString()));
            }
            if (paramMap.get("LockedUsr") == null || paramMap.get("LockedUsr").toString().equals("")) {
            } else {
                so.setLockedUsr(Integer.parseInt(paramMap.get("LockedUsr").toString()));
            }

            if (paramMap.get("PitchAngle") == null || paramMap.get("PitchAngle").toString().equals("")) {
            } else {
                so.setPitchAngle(Double.parseDouble(paramMap.get("PitchAngle").toString()));
            }
            if (paramMap.get("PositionType") == null || paramMap.get("PositionType").toString().equals("")) {
            } else {
                so.setPositionType(Integer.parseInt(paramMap.get("PositionType").toString()));
            }
            if (paramMap.get("PtzType") == null || paramMap.get("PtzType").toString().equals("")) {
                so.setPtzType(1);
            } else {
                so.setPtzType(Integer.parseInt(paramMap.get("PtzType").toString()));
            }
            if (paramMap.get("PtzURL") == null || paramMap.get("PtzURL").toString().equals("")) {
            } else {
                so.setPtzURL((String) paramMap.get("PtzURL"));
            }

            if (paramMap.get("ReplayID") == null || paramMap.get("ReplayID").toString().equals("")) {
            } else {
                so.setReplayID(Integer.parseInt(paramMap.get("ReplayID").toString()));
            }
            if (paramMap.get("Resolution") == null || paramMap.get("Resolution").toString().equals("")) {
            } else {
                so.setResolution((String) paramMap.get("Resolution"));
            }
            if (paramMap.get("RoomType") == null || paramMap.get("RoomType").toString().equals("")) {
            } else {
                so.setRoomType(Integer.parseInt(paramMap.get("RoomType").toString()));
            }

            if (paramMap.get("StreamId") == null || paramMap.get("StreamId").toString().equals("")) {
            } else {
                so.setStreamingID(Integer.parseInt(paramMap.get("StreamId").toString()));
            }

            if (paramMap.get("SupplyLightType") == null || paramMap.get("SupplyLightType").toString().equals("")) {
            } else {
                so.setSupplyLightType(Integer.parseInt(paramMap.get("SupplyLightType").toString()));
            }
            if (paramMap.get("SVCSpaceSupportMode") == null || paramMap.get("SVCSpaceSupportMode").toString().equals("")) {
            } else {
                so.setSVCSpaceSupportMode(Integer.parseInt(paramMap.get("SVCSpaceSupportMode").toString()));
            }
            if (paramMap.get("SVCTimeSupportMode") == null || paramMap.get("SVCTimeSupportMode").toString().equals("")) {
            } else {
                so.setSVCTimeSupportMode(Integer.parseInt(paramMap.get("SVCTimeSupportMode").toString()));
            }
            if (paramMap.get("UseType") == null || paramMap.get("UseType").toString().equals("")) {
            } else {
                so.setUseType(Integer.parseInt(paramMap.get("UseType").toString()));
            }
            this.icc.add(so);

            Map<String, Object> resultMap = new HashMap<>();
            resultMap.put("code", "0000");
            resultMap.put("data", paramMap.get("ResID").toString());
            Gson gson = new Gson();
            return gson.toJson(resultMap);
        }
    }

    //更新摄像头的方法
    @RequestMapping("/update1")
    public String update1(@RequestBody Map<String, Object> paramMap) {
        //更新RES——attr表
        Res_Attr res_attr=new Res_Attr();
        res_attr.setResID(Integer.parseInt(paramMap.get("ResID").toString()));
        if (paramMap.get("Alias") == null || paramMap.get("Alias").toString().equals("")) {
        } else {
            res_attr.setName((String) paramMap.get("Alias"));
        }
        this.icc.updateForName(res_attr);
        //更新摄像机表
        Camera1 so = new Camera1();

        so.setResID(Integer.parseInt(paramMap.get("ResID").toString()));
        if(paramMap.get("selectPlaceID").toString().equals(0)){

        }else{
            so.setPlaceID(paramMap.get("selectPlaceID").toString());
        }

        if (paramMap.get("Alias") == null || paramMap.get("Alias").toString().equals("")) {
        } else {

            so.setAlias((String) paramMap.get("Alias"));
        }

        if (paramMap.get("Azimuth") == null || paramMap.get("Azimuth").toString().equals("")) {
        } else {
            so.setAzimuth(Double.parseDouble(paramMap.get("Azimuth").toString()));
        }
        if (paramMap.get("BusinessGroupID") == null || paramMap.get("BusinessGroupID").toString().equals("")) {
        } else {
            so.setBusinessGroupID((String) paramMap.get("BusinessGroupID"));
        }
        if (paramMap.get("DirectionType") == null || paramMap.get("DirectionType").toString().equals("")) {
        } else {
            so.setDirectionType(Integer.parseInt(paramMap.get("DirectionType").toString()));
        }
        if (paramMap.get("DownLoadSpeed") == null || paramMap.get("DownLoadSpeed").toString().equals("")) {
        } else {
            so.setDownLoadSpeed((String) paramMap.get("DownLoadSpeed"));
        }
        if (paramMap.get("GroupID") == null || paramMap.get("GroupID").toString().equals("")) {
        } else {
            so.setGroupID(Long.valueOf(paramMap.get("GroupID").toString()));
        }
        if (paramMap.get("Height") == null || paramMap.get("Height").toString().equals("")) {
        } else {
            so.setHeight(Double.parseDouble(paramMap.get("Height").toString()));
        }

        if (paramMap.get("LockedUsr") == null || paramMap.get("LockedUsr").toString().equals("")) {
        } else {
            so.setLockedUsr(Integer.parseInt(paramMap.get("LockedUsr").toString()));
        }
        if (paramMap.get("PitchAngle") == null || paramMap.get("PitchAngle").toString().equals("")) {
        } else {
            so.setPitchAngle(Double.parseDouble(paramMap.get("PitchAngle").toString()));
        }
        if (paramMap.get("PositionType") == null || paramMap.get("PositionType").toString().equals("")) {
        } else {
            so.setPositionType(Integer.parseInt(paramMap.get("PositionType").toString()));
        }
        if (paramMap.get("PtzType") == null || paramMap.get("PtzType").toString().equals("")) {
            so.setPtzType(1);
        } else {
            so.setPtzType(Integer.parseInt(paramMap.get("PtzType").toString()));
        }
        if (paramMap.get("PtzURL") == null || paramMap.get("PtzURL").toString().equals("")) {
        } else {
            so.setPtzURL((String) paramMap.get("PtzURL"));
        }

        if (paramMap.get("ReplayID") == null || paramMap.get("ReplayID").toString().equals("")) {
        } else {
            so.setReplayID(Integer.parseInt(paramMap.get("ReplayID").toString()));
        }
        if (paramMap.get("Resolution") == null || paramMap.get("Resolution").toString().equals("")) {
        } else {
            so.setResolution((String) paramMap.get("Resolution"));
        }
        if (paramMap.get("RoomType") == null || paramMap.get("RoomType").toString().equals("")) {
        } else {
            so.setRoomType(Integer.parseInt(paramMap.get("RoomType").toString()));
        }
        so.setStreamingID(Integer.parseInt(paramMap.get("StreamingID").toString()));

        if (paramMap.get("SupplyLightType") == null || paramMap.get("SupplyLightType").toString().equals("")) {
        } else {
            so.setSupplyLightType(Integer.parseInt(paramMap.get("SupplyLightType").toString()));
        }
        if (paramMap.get("SVCSpaceSupportMode") == null || paramMap.get("SVCSpaceSupportMode").toString().equals("")) {
        } else {
            so.setSVCSpaceSupportMode(Integer.parseInt(paramMap.get("SVCSpaceSupportMode").toString()));
        }
        if (paramMap.get("SVCTimeSupportMode") == null || paramMap.get("SVCTimeSupportMode").toString().equals("")) {
        } else {
            so.setSVCTimeSupportMode(Integer.parseInt(paramMap.get("SVCTimeSupportMode").toString()));
        }
        if (paramMap.get("UseType") == null || paramMap.get("UseType").toString().equals("")) {
        } else {
            so.setUseType(Integer.parseInt(paramMap.get("UseType").toString()));
        }
        this.icc.update(so);
        //更新通道表
        Channel channel = new Channel();

        if (paramMap.get("PlayUrl") == null || paramMap.get("PlayUrl").toString().equals("")) {
        } else {
            channel.setPlayUrl((String) paramMap.get("PlayUrl"));

        }
        if (paramMap.get("NvrID")== null || paramMap.get("NvrID").toString().equals("")) {
        } else {
            channel.setNvrID(Integer.parseInt(paramMap.get("NvrID").toString()));

        }
        if (paramMap.get("ResID")== null || paramMap.get("ResID").toString().equals("")) {
        } else {
            channel.setCamID(Integer.parseInt(paramMap.get("ResID").toString()));

        }
        if (paramMap.get("NvrChannelID")== null || paramMap.get("NvrChannelID").toString().equals("")) {
        } else {
            channel.setNvrChannelID(paramMap.get("NvrChannelID").toString());
        }
        //把更改后的通道更新掉
        this.ich.updateForPlayUrl(channel);

        LogView logView=new LogView();
        logView.setLogName("reslog");
        logView.setComments("更新");
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        logView.setLogDate(String.valueOf(simpleDateFormat.format(date)));
        logView.setUsrName(paramMap.get("accountName").toString());
        logView.setGroupOrCameraName("摄像机-"+so.getAlias());
        this.iLogViewService.add(logView);
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", "0000");
        resultMap.put("data", "success");
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    //组织机构树为摄像机选择行政区划
    @RequestMapping(value = "/addPlaceId", method = RequestMethod.POST)
    public void addPlaceId(@RequestBody Map<String,Object> map) {
        Camera1 camera1=new Camera1();
        camera1.setPlaceID(map.get("placeId").toString());
        camera1.setResID(Integer.parseInt(map.get("ResID").toString()));
        this.icc.addPlaceId(camera1);
    }
    //批量删除摄像头
    @RequestMapping(value = "/delete_change", method = RequestMethod.POST)
    public void delete_change(@RequestBody List<Integer> kind) {

        for (int i = 0; i < kind.size(); i++) {
            /*Camera1 ee = new Camera1();
            ee.setResID(kind.get(i));
            Res_Attr res_attr=new Res_Attr();
            res_attr.setResID(kind.get(i));
            this.irs.delete(res_attr);
            this.icc.delete(ee);*/
            Channel channel=new Channel();
            channel.setCamID(kind.get(i));
            this.ich.updateForObject0(channel);
            Camera1 camera1 = new Camera1();
            camera1.setResID(kind.get(i));
            //2.删除camera摄像机信息
            this.icc.delete(camera1);
            //3.删除设备里的摄像机
            Res_Attr res = new Res_Attr();
            res.setResID(kind.get(i));
            this.irs.delete(res);
        }
        System.out.println("删除完成");
    }

    //下载摄像头信息模板
    @RequestMapping(value = "/downloadFile")
    public void downloadMcode(HttpServletResponse response) throws UnsupportedEncodingException {
        //String s1 = com.gd.controller.group.GroupController.class.getResource("/file/").getPath();
        FileLoadUtils.fileDownLoad(response, path1 + URLEncoder.encode("摄像头信息批量上传模板示例.xlsx","UTF-8"));


    }


    /*摄像头信息批量导入的方法*/
    @RequestMapping(value = "/camera_import", method = RequestMethod.POST)
    @ResponseBody
    public String cameraUpload(HttpServletRequest request, HttpServletResponse res, HttpSession ss) {

        List<Map<String, String>> fileContentList = new ArrayList<>();
        Gson gson = new Gson();

        String userExcel = "";


        //解析器解析request的上下文
        CommonsMultipartResolver muResolvers =
                new CommonsMultipartResolver(request.getSession().getServletContext());
        //先判断request中是否包涵multipart类型的数据，
        if (muResolvers.isMultipart(request)) {
            //再将request中的数据转化成multipart类型的数据
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator itter = multiRequest.getFileNames();
            while (itter.hasNext()) {
                //这里的name为fileItem的alias属性值，相当于form表单中name
                String name = (String) itter.next();

                //根据name值拿取文件
                MultipartFile file = multiRequest.getFile(name);
                if (file != null) {
                    String fileName = file.getOriginalFilename();
                    String path = "";
                    if (fileName.substring(fileName.length() - 3, fileName.length()).equals("xls")) {
                        path = filePath + fileName + "x";

                    } else {
                        path = filePath + fileName;

                    }

                    userExcel = path;
                    File localFile = new File(path);
                    if (!localFile.getParentFile().exists()) {
                        //如果目标文件所在的目录不存在，则创建父目录
                        localFile.getParentFile().mkdirs();
                        System.out.println("parent:" + localFile.getParentFile().getPath());
                    }
                    //写文件到本地
                    try {
                        //file.transferTo(localFile);
                        if (!localFile.exists()) {
                            localFile.createNewFile();
                        }
                        FileUtils.copyInputStreamToFile(file.getInputStream(), localFile);
                    } catch (IOException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();

                    }
                }
            }
        }
        File file = new File(userExcel);
        if (file.exists()) {
            System.out.println("我是读到的EXCEL" + file.getAbsolutePath());
            try {
                fileContentList = ExcelUtils.readExcel(file.getAbsolutePath());

                for (int i = 0; i < fileContentList.size(); i++) {

                    Camera1 cc1 = new Camera1();
                    if (fileContentList.get(i).get("0") == null || fileContentList.get(i).get("0").equals("")) {
                    } else {
                        cc1.setResID(Integer.parseInt(fileContentList.get(i).get("0")));
                    }

                    if (fileContentList.get(i).get("1") == null || fileContentList.get(i).get("1").equals("")) {
                    } else {
                        cc1.setPtzType(Integer.parseInt(fileContentList.get(i).get("1")));
                    }
                    if (fileContentList.get(i).get("2") == null || fileContentList.get(i).get("2").equals("")) {
                    } else {
                        cc1.setPositionType(Integer.parseInt(fileContentList.get(i).get("2")));
                    }
                    if (fileContentList.get(i).get("3") == null || fileContentList.get(i).get("3").equals("")) {
                    } else {
                        cc1.setRoomType(Integer.parseInt(fileContentList.get(i).get("3")));
                    }
                    if (fileContentList.get(i).get("4") == null || fileContentList.get(i).get("4").equals("")) {
                    } else {
                        cc1.setUseType(Integer.parseInt(fileContentList.get(i).get("4")));
                    }
                    if (fileContentList.get(i).get("5") == null || fileContentList.get(i).get("5").equals("")) {
                    } else {
                        cc1.setSupplyLightType(Integer.parseInt(fileContentList.get(i).get("5")));
                    }
                    if (fileContentList.get(i).get("6") == null || fileContentList.get(i).get("6").equals("")) {
                    } else {
                        cc1.setDirectionType(Integer.parseInt(fileContentList.get(i).get("6")));
                    }
                    if (fileContentList.get(i).get("7") == null || fileContentList.get(i).get("7").equals("")) {
                    } else {
                        cc1.setResolution(fileContentList.get(i).get("7"));
                    }
                    if (fileContentList.get(i).get("8") == null || fileContentList.get(i).get("8").equals("")) {
                    } else {
                        cc1.setBusinessGroupID(fileContentList.get(i).get("8"));
                    }
                    if (fileContentList.get(i).get("9") == null || fileContentList.get(i).get("9").equals("")) {
                    } else {
                        cc1.setDownLoadSpeed(fileContentList.get(i).get("9"));
                    }

                    if (fileContentList.get(i).get("10") == null || fileContentList.get(i).get("10").equals("")) {
                    } else {
                        cc1.setSVCSpaceSupportMode(Integer.parseInt(fileContentList.get(i).get("10")));
                    }
                    if (fileContentList.get(i).get("11") == null || fileContentList.get(i).get("11").equals("")) {
                    } else {
                        cc1.setSVCTimeSupportMode(Integer.parseInt(fileContentList.get(i).get("11")));
                    }
                    if (fileContentList.get(i).get("12") == null || fileContentList.get(i).get("12").equals("")) {
                    } else {
                        cc1.setPtzURL(fileContentList.get(i).get("12"));
                    }
                    if (fileContentList.get(i).get("13") == null || fileContentList.get(i).get("13").equals("")) {
                    } else {
                        cc1.setHeight(Double.parseDouble(fileContentList.get(i).get("13")));
                    }
                    if (fileContentList.get(i).get("14") == null || fileContentList.get(i).get("14").equals("")) {
                    } else {
                        cc1.setPitchAngle(Double.parseDouble(fileContentList.get(i).get("14")));
                    }
                    if (fileContentList.get(i).get("15") == null || fileContentList.get(i).get("15").equals("")) {
                    } else {
                        cc1.setAzimuth(Double.parseDouble(fileContentList.get(i).get("15")));
                    }
                    if (fileContentList.get(i).get("16") == null || fileContentList.get(i).get("16").equals("")) {
                    } else {
                        cc1.setAlias(fileContentList.get(i).get("16"));
                    }
                    if (fileContentList.get(i).get("17") == null || fileContentList.get(i).get("17").equals("")) {
                    } else {
                        cc1.setLockedUsr(Integer.parseInt(fileContentList.get(i).get("17")));
                    }
                    if (fileContentList.get(i).get("18") == null || fileContentList.get(i).get("18").equals("")) {
                    } else {
                        cc1.setStreamingID(Integer.parseInt(fileContentList.get(i).get("18")));
                    }

                    if (fileContentList.get(i).get("19") == null || fileContentList.get(i).get("19").equals("")) {
                    } else {
                        cc1.setReplayID(Integer.parseInt(fileContentList.get(i).get("19")));
                    }
                    this.icc.add(cc1);
                }

                file.delete();

            } catch (FileNotFoundException e) {
                e.printStackTrace();

            } catch (FileFormatException e) {
                e.printStackTrace();

            }

            if (fileContentList.size() == 0) {
                Map<String, Object> resultMap = new HashMap<String, Object>();
                resultMap.put("code", "10004");
                resultMap.put("data", "excel is null");
                return gson.toJson(resultMap);
            }


        }

        return null;
    }



    /*摄像头获
    域信息的方法*/
    @RequestMapping(value = "/getGroup", method = RequestMethod.GET)
    public String geiGropu() {
        List<String> ss = new ArrayList<>();
        ss = this.ice.listGroup();
        Map<String, Object> result = new HashMap<>();
        result.put("code", "000");
        result.put("data", ss);
        Gson k = new Gson();
        return k.toJson(result);

    }
    //根据摄像机ID查询通道信息

    @RequestMapping(value = "/CameraToChannel", method = RequestMethod.POST)
    public String getCameraToChannel(@RequestBody Integer id) {
        List<Channel> ss = new ArrayList<>();
        ss = this.icc.getCameraToChannel(id);
        Map<String, Object> result = new HashMap<>();
        result.put("code", "000");
        result.put("data", ss);
        Gson k = new Gson();
        return k.toJson(result);

    }
    //根据摄像机ID查询对应的设备信息
    @RequestMapping(value = "/CameraToResID", method = RequestMethod.POST)
    public String getCameraToResID(@RequestBody Integer id) {
        Res_Attr  ss = this.icc.getCameraToResID(id);
        Map<String, Object> result = new HashMap<>();
        result.put("code", "000");
        result.put("data", ss);
        Gson k = new Gson();
        return k.toJson(result);

    }


    /*摄像头信息批量导入的方法*/
    @RequestMapping(value = "/camera_import_new", method = RequestMethod.POST)
    @ResponseBody
    @Transactional
    public String cameraUploadNew(HttpServletRequest request, HttpServletResponse res, HttpSession ss) {
        deviceCount = Integer.parseInt(this.irs.queryForMaxDeviceId())+1;
        List<Map<String, String>> fileContentList = new ArrayList<>();
        Gson gson = new Gson();

        String userExcel = "";


        //解析器解析request的上下文
        CommonsMultipartResolver muResolvers =
                new CommonsMultipartResolver(request.getSession().getServletContext());
        //先判断request中是否包涵multipart类型的数据，
        if (muResolvers.isMultipart(request)) {
            //再将request中的数据转化成multipart类型的数据
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            Iterator itter = multiRequest.getFileNames();
            while (itter.hasNext()) {
                //这里的name为fileItem的alias属性值，相当于form表单中name
                String name = (String) itter.next();

                //根据name值拿取文件
                MultipartFile file = multiRequest.getFile(name);
                if (file != null) {
                    String fileName = file.getOriginalFilename();
                    String path = "";
                    if (fileName.substring(fileName.length() - 3, fileName.length()).equals("xls")) {
                        path = filePath + fileName + "x";

                    } else {
                        path = filePath + fileName;

                    }

                    userExcel = path;
                    File localFile = new File(path);
                    if (!localFile.getParentFile().exists()) {
                        //如果目标文件所在的目录不存在，则创建父目录
                        localFile.getParentFile().mkdirs();
                        System.out.println("parent:" + localFile.getParentFile().getPath());
                    }
                    //写文件到本地
                    try {
                        //file.transferTo(localFile);
                        if (!localFile.exists()) {
                            localFile.createNewFile();
                        }
                        FileUtils.copyInputStreamToFile(file.getInputStream(), localFile);
                    } catch (IOException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();

                    }
                }
            }
        }
        File file = new File(userExcel);
        if (file.exists()) {
            System.out.println("我是读到的EXCEL" + file.getAbsolutePath());
            try {
                fileContentList = ExcelUtils.readExcel(file.getAbsolutePath());
                Map<String, Object> resultMap = new HashMap<String, Object>();
                List<Res_Attr> raList = new SetListUtils<>();
                List<Camera1> camList = new LinkedList<>();
                for (int i = 0; i < fileContentList.size(); i++) {
                    //遍历excel拿到的结果，分别将不同栏目存到不同的集合中，以便后面分别添加设备tbl_res_attr和摄像机tbl_camera表
                    Res_Attr ra1 = new Res_Attr();
                    Camera1 cc1 = new Camera1();
                    if(fileContentList.get(i).get("0") == null || fileContentList.get(i).get("0").trim().equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "资源名称不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        ra1.setName(fileContentList.get(i).get("0").trim());
                    }
                    if(fileContentList.get(i).get("1") == null || fileContentList.get(i).get("1").trim().equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "接入方式不能为空");
                        return gson.toJson(resultMap);
                    }else if(fileContentList.get(i).get("1").trim().equalsIgnoreCase("SIP")){
                        ra1.setProtocolType("SIP");
                        ra1.setDeviceType(protocolTypeMap.get(fileContentList.get(i).get("3").trim()));    //存入设备厂家，供后面生成通道表时通道号起始值使用
                    }else if(fileContentList.get(i).get("1").trim().equalsIgnoreCase("SDK")){
                        ra1.setProtocolType(protocolTypeMap.get(fileContentList.get(i).get("3").trim()));
                        ra1.setDeviceType(protocolTypeMap.get(fileContentList.get(i).get("3").trim()));
                    }
                    if(fileContentList.get(i).get("2") == null || fileContentList.get(i).get("2").trim().equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "资源类型不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        Integer resTypeDm = resTypeMap.get(fileContentList.get(i).get("2"));
                        ra1.setResType(resTypeDm);
                    }

                    if(fileContentList.get(i).get("4") == null || fileContentList.get(i).get("4").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "IP地址不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        ra1.setIPAddress(fileContentList.get(i).get("4"));
                    }
                    if(fileContentList.get(i).get("5") == null || fileContentList.get(i).get("5").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "端口不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        ra1.setPort(Integer.parseInt(fileContentList.get(i).get("5")));
                    }
                    if(fileContentList.get(i).get("6") == null || fileContentList.get(i).get("6").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "用户名不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        ra1.setUsrName(fileContentList.get(i).get("6"));
                    }
                    if(fileContentList.get(i).get("7") == null || fileContentList.get(i).get("7").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "密码不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        ra1.setPassword(fileContentList.get(i).get("7"));
                    }
                    if(fileContentList.get(i).get("8") == null || fileContentList.get(i).get("8").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "通道数据不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        ra1.setChannelNum(Integer.parseInt(fileContentList.get(i).get("8")));
                    }
                    if(fileContentList.get(i).get("12") == null || fileContentList.get(i).get("12").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "单位编码不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        ra1.setCivilCode(fileContentList.get(i).get("12"));
                    }


                    //下面是一些数据库字段要求非空，暂时先填默认值
                    //ra1.setDeviceID(generateDeviceId(ra1.getCivilCode(), ra1.getResType()));
                    ra1.setManufacturer(ra1.getProtocolType());
                    ra1.setModel("1.0");
                    ra1.setOwner(ra1.getCivilCode());

                    ra1.setAddress(ra1.getName().trim());
                    ra1.setParental(0);
                    ra1.setRegisterWay(1);
                    ra1.setSecrecy(0);
                    ra1.setStatus("ON");
                    ra1.setPlatformID(5);   //待查
                    ra1.setSipServiceID(5); //对应tbl_service表里ServiceType=4的ServiceId
                    //加入到raList集合，存储有序不重复列表
                    boolean addFlag = raList.add(ra1);
                    //if(addFlag==false) deviceCount--;   //如果没有增加记录成功，则deviceId后六位计数器不用自增1

                    if(fileContentList.get(i).get("9") == null || fileContentList.get(i).get("9").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "通道序号不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        cc1.setChannelNo(fileContentList.get(i).get("9"));
                    }
                    if(fileContentList.get(i).get("10") == null || fileContentList.get(i).get("10").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "摄像机名称不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        cc1.setAlias(fileContentList.get(i).get("10"));
                    }
                    if(fileContentList.get(i).get("11") == null || fileContentList.get(i).get("11").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "摄像机类型不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        Integer ptzTypeDm = ptzTypeMap.get(fileContentList.get(i).get("11"));
                        cc1.setPtzType(ptzTypeDm);
                    }
                    if(fileContentList.get(i).get("13") == null || fileContentList.get(i).get("13").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "场所类型不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        cc1.setPlaceID(fileContentList.get(i).get("13"));
                    }
                    if(fileContentList.get(i).get("14") == null || fileContentList.get(i).get("14").equals("")){
                        resultMap.put("code", "10001");   //错误码方式待查
                        resultMap.put("data", "转发服务ID不能为空");
                        return gson.toJson(resultMap);
                    }else{
                        cc1.setStreamingID(Integer.parseInt(fileContentList.get(i).get("14")));
                    }
                    if(fileContentList.get(i).get("15") == null && fileContentList.get(i).get("15").trim().equals("")){
                        cc1.setPlayUrl("");
                    }else{
                        cc1.setPlayUrl(fileContentList.get(i).get("15"));
                    }
                    //表格内的每一条记录存入到摄像机列表集合中
                    camList.add(cc1);
                    //System.out.println(this.icc.add(cc1));
                }
                file.delete();
                int camCount = 0;   //camCount用来对camList计数，使得在每次循环以后获取的cam信息为camList的下一条记录
                //大循环遍历设备集合，对应每一条设备记录新增该设备下对应的摄像机资源
                for(int i=0;i<raList.size();i++){
                    Res_Attr ra2 = raList.get(i);
                    ra2.setDeviceID(generateDeviceId(ra2.getCivilCode(), ra2.getResType()));
                    ra2.setParentID(ra2.getDeviceID());
                    this.irs.add(ra2);
                    Integer resId = ra2.getResID();

                    for(int j=0;j<ra2.getChannelNum();j++){
                        Camera1 cc2 = camList.get(camCount++);    //该对象用来存储tbl_camera表的摄像机信息
                        if(ra2.getResType()==132){  //'132'代表IPC摄像机
                            cc2.setResID(resId);
                        }else if(ra2.getResType()==111 || ra2.getResType()==118){   //'111'代表DVR设备，'118'代表NVR设备
                            Res_Attr ra3 = new Res_Attr();  //该对象用来存储tbl_res_attr表的摄像机信息
                            ra3.setName(cc2.getAlias());
                            ra3.setResType(131);    //与设备信息唯一的区别是resType不同,'131'代表的是摄像机
                            ra3.setProtocolType(ra2.getProtocolType());
                            ra3.setIPAddress(ra2.getIPAddress());
                            ra3.setPort(ra2.getPort());
                            ra3.setUsrName(ra2.getUsrName());
                            ra3.setPassword(ra2.getPassword());
                            ra3.setSipServiceID(ra2.getSipServiceID());
                            ra3.setCivilCode(ra2.getCivilCode());
                            ra3.setDeviceID(generateDeviceId(ra2.getCivilCode(), ra3.getResType()));

                            ra3.setManufacturer(ra2.getProtocolType());
                            ra3.setModel("1.0");
                            ra3.setOwner(ra2.getCivilCode());
                            ra3.setAddress(ra2.getName());
                            ra3.setParental(0);
                            ra3.setParentID(ra2.getDeviceID());
                            ra3.setRegisterWay(1);
                            ra3.setSecrecy(0);
                            ra3.setStatus("ON");
                            ra3.setPlatformID(5);
                            this.irs.add(ra3);
                            Integer resId_cam = ra3.getResID();
                            cc2.setResID(resId_cam);
                        }
                        this.icc.add(cc2);

                        //Integer cameraId = cc2.getResID();
                        //下一步生成相关通道号的通道表
                        Channel channel = new Channel();
                        channel.setCamID(cc2.getResID());//对应插入的tbl_camera表的resid
                        channel.setNvrID(ra2.getResID());//对应插入的tbl_res_attr表的resid
                        //channel.setNvrChannelID(new Integer(j + 1).toString());
                        //channel.setPlayUrl(generatePlayUrl(j, ra2.getProtocolType(),ra2.getDeviceType(),ra2.getResType()));
                        channel.setNvrChannelID(cc2.getChannelNo());
                        //channel.setPlayUrl(generatePlayUrl(ra2.getChannelNum(), ra2.getProtocolType(), ra2.getDeviceType(), ra2.getResType()));
                        if(cc2.getPlayUrl().equals("")){
                            channel.setPlayUrl(generatePlayUrl(Integer.parseInt(cc2.getChannelNo()),ra2.getProtocolType(), ra2.getDeviceType(), ra2.getResType()));
                        }else{
                            channel.setPlayUrl(cc2.getPlayUrl());
                        }
                        channel.setUseType(1);

                        this.ich.addForObject(channel);
                    }
                }


            } catch (FileNotFoundException e) {
                e.printStackTrace();

            } catch (FileFormatException e) {
                e.printStackTrace();

            }


            if (fileContentList.size() == 0) {
                Map<String, Object> resultMap = new HashMap<String, Object>();
                resultMap.put("code", "10004");
                resultMap.put("data", "excel is null");
                return gson.toJson(resultMap);
            }
        }

        return null;
    }

    private String generateDeviceId(String civilCode,Integer resType){
        System.out.println("deviceCount:"+deviceCount);
        String f = getZXBM(civilCode);  //前10位，中心编码
        while(f.length()<10){
            f=f.concat("0");
        }
        f = f.concat(resType.toString());   //11-13位，类型编码
        f = f.concat("5");  //第14位，网络标识 5为公安信息网
        f = f.concat(String.format("%0"+6+"d", deviceCount++));   //后六位，递增，不够6位前面补零

        return f;
        //return civilCode.concat(resType.toString())+(count++);
    }
    private String generatePlayUrl(int channelNo,String protocalType,String deviceType,int resType){
        String playUrl="";
        //StringBuilder tmp;
        if(protocalType.equalsIgnoreCase("SIP")){
            playUrl = playUrl.concat("UDP://");
        }else{
            playUrl = playUrl.concat("TCP://");
        }
        if(deviceType.equalsIgnoreCase("HIK")){
            if(resType==111){   //DVR，通道号从1开始
                //playUrl = playUrl.concat(new Integer(channelNo+1).toString());
                playUrl = playUrl.concat(new Integer(channelNo).toString());
            }else if(resType==118){ //NVR，通道号从33开始
                //playUrl = playUrl.concat(new Integer(channelNo+33).toString());
                playUrl = playUrl.concat(new Integer(channelNo).toString());
            }
        }else if(deviceType.equalsIgnoreCase("DH")){    //通道号从0开始
            playUrl = playUrl.concat(new Integer(channelNo).toString());
        }else if(deviceType.equalsIgnoreCase("UNIVIEW")){   //通道号从1开始
            //playUrl = playUrl.concat(new Integer(channelNo+1).toString());
            playUrl = playUrl.concat(new Integer(channelNo).toString());
        }else{  //其他默认通道号从1开始
           // playUrl = playUrl.concat(new Integer(channelNo+1).toString());
            playUrl = playUrl.concat(new Integer(channelNo).toString());
        }
        playUrl = playUrl.concat(":0"); //码流类型：默认为主码流
        return playUrl;
    }

    private String getZXBM(String civilCode){   //由单位所属编码获得中心编码
        return civilCode;
    }

    //获取当前摄像机的场所类型
    @RequestMapping(value = "/CameraToPlaceId", method = RequestMethod.POST)
    public String getCameraToPlaceId(@RequestBody String id) {
        //获取子场所类型
        Place ss = this.icc.getCameraToPlaceId(id);
        //用子场所类型的id去查父场所类型
        Place sk=this.icc.getCameraToPlaceId(ss.getFJCSBH());
        String newString=sk.getCSLXMC()+"-"+ss.getCSLXMC();
        Map<String, Object> result = new HashMap<>();
        result.put("code", "000");
        result.put("data", newString);
        Gson k = new Gson();
        return k.toJson(result);

    }

    @RequestMapping(value = "/searchCameraUrl", method = RequestMethod.POST)
    public String delete(@RequestBody Integer resId) {
        String serviceUrl = this.icc.searchCameraUrl(resId);
        Map<String, Object> result = new HashMap<>();
        result.put("code", "000");
        result.put("data", serviceUrl);
        Gson k = new Gson();
        return k.toJson(result);
    }
}


