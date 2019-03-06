package com.gd.controller.common;

import com.gd.domain.channel.Channel;
import com.gd.domain.encoder.EncoderChannel;
import com.gd.domain.group.GroupInfo;

import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.windowmode.WinToChannel;
import com.gd.service.channel.IChannelService;
import com.gd.service.group.IGroupService;
import com.gd.service.res_attr.IResService;
import com.google.gson.Gson;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.*;

/**
 * Created by 郄梦岩 on 2017/11/7.
 */
@RestController
@RequestMapping("/common")
public class CommonController {
    @Autowired
    private IChannelService iChannelService;
    @Autowired
    private IGroupService iGroupService;
    @Autowired
    private IResService iResService;
    @Value("${excel.path3}")
    private String path2;

    private int num=0;

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    //为设备添加摄像机通道(DVR/NVR/IPC)
    public void addChannel(Integer num, Integer type, String name, Integer id) {
        System.out.println("我是获得的设备类型"+name);
        //DVR或者IPC摄像机
        if (type == 111 || type == 132 || type == 138) {
            //DVR的哪个厂家
            //1.海康
            if (name.equals("HIK")) {
                for (int i = 1; i <= num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(0);
                    this.iChannelService.addForObject(channel);
                }
            }
            //2.宇视
            if (name.equals("UNIVIEW")||name.equals("ONVIF")||name.equals("SIP")) {
                for (int i = 1; i <= num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(0);
                    this.iChannelService.addForObject(channel);
                }
            }
            //3.大华
            if (name.equals("DH")) {
                for (int i = 0; i <num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(0);
                    this.iChannelService.addForObject(channel);
                }
            }

        }
        //NVR
        if (type == 118) {
            if (name.equals("HIK")) {
                for (int i = 33; i < num + 33; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(0);
                    this.iChannelService.addForObject(channel);
                }
            }
            if (name.equals("DH")) {
                for (int i = 0; i < num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(0);
                    this.iChannelService.addForObject(channel);
                }
            }
            if (name.equals("UNIVIEW")||name.equals("ONVIF")||name.equals("SIP")) {
                for (int i = 1; i <= num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(0);
                    this.iChannelService.addForObject(channel);
                }
            }
        }

    }
    //为设备增加通道（编码器）
    public void addEncoderChannel(int num,int cameraId){

        for (int i = 0; i < num; i++) {
            EncoderChannel encoderChannel=new EncoderChannel();
            encoderChannel.setProtocolType("tcp");
            encoderChannel.setDecoderID(cameraId);
            encoderChannel.setDecoderChannelID(i+1);
            encoderChannel.setCamID(0);
            encoderChannel.setMatrixID(0);
            encoderChannel.setMatrixInChannelNo(0);
            this.iChannelService.addEncoderChannelForObject(encoderChannel);
        }
        //查询tbl_windows_mode表的windowcount字段最大值
        int countMax=this.iChannelService.queryForwindowsmode();
        //根据摄像机ID查询的EncoderChannel数据条数的id号。
        List<Integer> ids=this.iChannelService.queryForEncoderChannelId(cameraId);
        if(countMax<=ids.size()) {
            for (int i = 0; i < countMax; i++) {
                WinToChannel winToChannel = new WinToChannel();
                winToChannel.setChannel_id(String.valueOf(ids.get(i)));
                winToChannel.setWin_seq(i + 1);
                //向wintochannel表加数据
                this.iChannelService.addWinToChannel(winToChannel);
            }
        }else {
            for (int i = 0; i < ids.size(); i++) {
                WinToChannel winToChannel = new WinToChannel();
                winToChannel.setChannel_id(String.valueOf(ids.get(i)));
                winToChannel.setWin_seq(i + 1);
                //向wintochannel表加数据
                this.iChannelService.addWinToChannel(winToChannel);
            }
            for(int j=ids.size()+1;j<=countMax;j++){
                WinToChannel winToChannel = new WinToChannel();
                winToChannel.setChannel_id("0");
                winToChannel.setWin_seq(j);
                //向wintochannel表加数据
                this.iChannelService.addWinToChannel(winToChannel);
            }
        }
        System.out.println("向WinToChannel表增加数据完毕！");

    }
    public int RandomNumber() {
        int r = (int) (Math.random() * 999999999);
        return r;
    }

    //查询没有被使用的设备的通道数量
    @RequestMapping(value = "/CamId", method = RequestMethod.POST)
    public String getChannelId(@RequestBody String camid) {
        Channel channel = new Channel();
        channel.setCamID(Integer.parseInt(camid));
        List<Integer> channels = new ArrayList<>();
        channels = this.iChannelService.queryForChannelID(channel);
        System.out.println("查询没有被使用的设备的通道数量" + channels);
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if (channels == null || channels.size() == 0) {
            resultMap.put("code", "null");
        } else {
            resultMap.put("code", "10004");
            resultMap.put("data", channels);
        }
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    //根据摄像机ID查询该摄像机是否已设置了通道,并且该摄像机所在的设备是否还有通道
    @RequestMapping(value = "/CameraId", method = RequestMethod.POST)
    public String getCameraId(@RequestBody String resid) {
        Channel channel = new Channel();
        Map<String, Object> resultMap = new HashMap<String, Object>();
        Gson gson = new Gson();
        channel.setCamID(Integer.parseInt(resid));
        List<Integer> channels = this.iChannelService.queryForChannelID(channel);
        Integer count = this.iChannelService.queryForCameraId(channel);
        if (channels.size() == 0) {

            resultMap.put("code", "Occupied");

            return gson.toJson(resultMap);
        } else {
            resultMap.put("code", "ok");
            return gson.toJson(resultMap);
        }

    }

    //AES加密算法
    public static byte[] encrypt(String content, String password) {
        try {
            KeyGenerator kgen = KeyGenerator.getInstance("AES");
            kgen.init(128, new SecureRandom(password.getBytes()));
            SecretKey secretKey = kgen.generateKey();
            byte[] enCodeFormat = secretKey.getEncoded();
            SecretKeySpec key = new SecretKeySpec(enCodeFormat, "AES");
            Cipher cipher = Cipher.getInstance("AES");// 创建密码器
            byte[] byteContent = content.getBytes("utf-8");
            cipher.init(Cipher.ENCRYPT_MODE, key);// 初始化
            byte[] result = cipher.doFinal(byteContent);
            return result; // 加密
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (NoSuchPaddingException e) {
            e.printStackTrace();
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IllegalBlockSizeException e) {
            e.printStackTrace();
        } catch (BadPaddingException e) {
            e.printStackTrace();
        }
        return null;
    }

    //AES解密算法
    public static byte[] decrypt(byte[] content, String password) {
        try {
            KeyGenerator kgen = KeyGenerator.getInstance("AES");
            kgen.init(128, new SecureRandom(password.getBytes()));
            SecretKey secretKey = kgen.generateKey();
            byte[] enCodeFormat = secretKey.getEncoded();
            SecretKeySpec key = new SecretKeySpec(enCodeFormat, "AES");
            Cipher cipher = Cipher.getInstance("AES");// 创建密码器
            cipher.init(Cipher.DECRYPT_MODE, key);// 初始化
            byte[] result = cipher.doFinal(content);
            return result; // 加密
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (NoSuchPaddingException e) {
            e.printStackTrace();
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (IllegalBlockSizeException e) {
            e.printStackTrace();
        } catch (BadPaddingException e) {
            e.printStackTrace();
        }
        return null;
    }

    //异或运算方法
    public Integer Xor(List<String> mm) {
        int s = 0;
        for (int i = 0; i < mm.size(); i++) {
            if (mm.get(i).equals("A1")) {
                s = s | 1;
            }
            if (mm.get(i).equals("A2")) {
                s = s | 1 << 1;
            }
            if (mm.get(i).equals("A3")) {
                s = s | 1 << 2;
            }
            if (mm.get(i).equals("A4")) {
                s = s | 1 << 3;
            }
            if (mm.get(i).equals("A5")) {
                s = s | 1 << 4;
            }
            if (mm.get(i).equals("A6")) {
                s = s | 1 << 5;
            }
            if (mm.get(i).equals("A7")) {
                s = s | 1 << 6;
            }
        }
        return s;
       /* return  s;*/
    }

    public List<String> ZXor(Integer days) {

        //int ui=18;
        int s;
        List<String> list=new ArrayList<>();
        for(int i=0;i<7;i++){
            s=days >>i & 1;
            if(s==1){
                if(i==1){
                    list.add("星期一");
                }
                if(i==2){
                    list.add("星期二");
                }
                if(i==3){
                    list.add("星期三");
                }
                if(i==4){
                    list.add("星期四");
                }
                if(i==5){
                    list.add("星期五");
                }
                if(i==6){
                    list.add("星期六");
                }
                if(i==0){
                    list.add("星期日");
                }

            }

        }

        return list;

    }

    public List<String> ZXorAlarm(Integer days) {

        //int ui=18;
        int s;
        List<String> list=new ArrayList<>();
        for(int i=0;i<6;i++){
            s=days >>i & 1;
            if(s==1){
                if(i==0){
                    list.add("调看摄像头");
                }
                if(i==1){
                    list.add("短信通知");
                }
                if(i==2){
                    list.add("邮件通知");
                }
                if(i==3){
                    list.add("设备动作");
                }
                if(i==4){
                    list.add("预置位报警");
                }
                if(i==5){
                    list.add("报警录像");
                }


            }

        }

        return list;

    }

    /* 摄像头批量导出的方法*/
    @RequestMapping(value = "/camera_export", method = RequestMethod.POST)
    public void cameraexport(@RequestBody Map<String,String> map,HttpServletResponse res) {
        //看它自己是根组不？如果是，则在下次用parentid查询的时候，可以查出来。如果不是，则手动把它查出来加到list中。
        GroupInfo groupInfoMyself=this.iGroupService.listForNodes2(Integer.parseInt(map.get("id")));
        List<GroupInfo> groupA= new ArrayList();
        groupA=this.iGroupService.queryForGroupInfoList(map.get("id"));
        if(!groupInfoMyself.getGroupID().equals(groupInfoMyself.getParentID())){
            groupA.add(groupInfoMyself);
        }
        List<GroupInfo> grouptemp=new ArrayList<>();
        for(int i=0;i<groupA.size();i++) {
            if (!groupA.get(i).getParentID().equals(groupA.get(i).getGroupID())) {
                List<GroupInfo> groupB = this.iGroupService.queryForGroupInfoList(String.valueOf(groupA.get(i).getGroupID()));
                if (groupB.size() > 0) {
                    for (GroupInfo groupInfo : groupB) {
                        groupA.add(groupInfo);

                    }
                }
            }
            grouptemp.add(groupA.get(i));
        }
        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet("摄像头数据");
        sheet.autoSizeColumn(1);
        HSSFCellStyle style = wb.createCellStyle();
        HSSFFont fontSearch = wb.createFont();
        fontSearch.setFontHeightInPoints((short) 15);
        style.setFont(fontSearch);
        style.setBorderBottom(HSSFCellStyle.BORDER_DOUBLE);
        style.setBorderLeft(HSSFCellStyle.BORDER_DOUBLE);
        style.setBorderRight(HSSFCellStyle.BORDER_DOUBLE);
        style.setBorderTop(HSSFCellStyle.BORDER_DOUBLE);
        HSSFRow head = sheet.createRow(0);
        HSSFCell encoder_name1 = head.createCell(0);
        encoder_name1.setCellValue("组名称");
        HSSFCell encoder_port11 = head.createCell(1);
        encoder_port11.setCellValue("虚拟组ID");
        HSSFCell encoder_port1 = head.createCell(2);
        encoder_port1.setCellValue("摄像机或设备名称");
        HSSFCell encoder_channel1 = head.createCell(3);
        encoder_channel1.setCellValue("所属设备IP");
        HSSFCell encoder_stream_number1 = head.createCell(4);
        encoder_stream_number1.setCellValue("端口号");
        HSSFCell decoder_channel1 = head.createCell(5);
        decoder_channel1.setCellValue("用户名");
        HSSFCell decoder_channel2 = head.createCell(6);
        decoder_channel2.setCellValue("密码");
        HSSFCell decoder_channel3 = head.createCell(7);
        decoder_channel3.setCellValue("PlayUrl");
        int k=0;
        for(int u=0;u<grouptemp.size();u++){
            System.out.println(grouptemp.get(u).getName());
        List<Res_Attr> res_attrList=this.iResService.queryForResAttr(grouptemp.get(u).getVirtualOrgID());
        if(res_attrList.size()>0) {

            for (int i = 0; i < res_attrList.size(); i++) {
                k++;
                List<String> PlayUrls = this.iChannelService.queryForPlayUrls(res_attrList.get(i).getResID());
                HSSFRow rowHeard = sheet.createRow(k);
                HSSFCell groupName = rowHeard.createCell(0);
                groupName.setCellValue(grouptemp.get(u).getName());
                HSSFCell groupResId = rowHeard.createCell(1);
                groupResId.setCellValue(grouptemp.get(u).getVirtualOrgID());
                HSSFCell resCamName = rowHeard.createCell(2);
                resCamName.setCellValue(res_attrList.get(i).getName());
                HSSFCell resIp = rowHeard.createCell(3);
                resIp.setCellValue(res_attrList.get(i).getIPAddress());
                HSSFCell port = rowHeard.createCell(4);
                if(res_attrList.get(i).getPort()==null||res_attrList.get(i).getPort()==0){
                    port.setCellValue(0);
                }else {
                    port.setCellValue(res_attrList.get(i).getPort());
                }
                HSSFCell username = rowHeard.createCell(5);
                username.setCellValue(res_attrList.get(i).getUsrName());
                HSSFCell password = rowHeard.createCell(6);
                password.setCellValue(res_attrList.get(i).getPassword());
                HSSFCell encoder_port = rowHeard.createCell(7);
                if (PlayUrls.size() <= 0) {
                } else {
                    encoder_port.setCellValue(listToString(PlayUrls));
                }

            }
        }
        }

       /* String path1="/home/ccf/nginx/www/export/cameras.xls";*/
        String path1 ="cameras" + ".xls";

        try {
            FileOutputStream fileout = new FileOutputStream(path1);
            wb.write(fileout);
            fileout.flush();
            fileout.close();
            System.out.println(path1);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        try {
            File ss = new File(path1);
            if (!ss.exists()) {
                ss.mkdir();
            }
            OutputStream os = res.getOutputStream();
            res.reset();
            res.setHeader("Content-Disposition", "attachment; filename=dict.txt");
            res.setContentType("application/octet-stream; charset=utf-8");
            os.write(FileUtils.readFileToByteArray(ss));
            System.out.println(os);
            os.flush();
            os.close();
        } catch (Exception ex) {
            ex.printStackTrace();


        }
    }
    public  String listToString(List<String> list){
        if(list==null){
            return null;
        }
        StringBuilder result = new StringBuilder();
        boolean first = true;
        //第一个前面不拼接","
        for(String string :list) {
            if(first) {
                first=false;
            }else{
                result.append(",");
            }
            result.append(string);
        }
        return result.toString();
    }

    ///* 组批量导出的方法*/
    @RequestMapping(value = "/group_export", method = RequestMethod.POST)
    public void groupexport(@RequestBody Map<String,String> map,HttpServletResponse res) {
        System.out.println(map.get("id")+"//"+map.get("accountid"));
        //看它自己是根组不？如果是，则在下次用parentid查询的时候，可以查出来。如果不是，则手动把它查出来加到list中。
        GroupInfo groupInfoMyself=this.iGroupService.listForNodes2(Integer.parseInt(map.get("id")));
        List<GroupInfo> groupA= new ArrayList();
        groupA=this.iGroupService.queryForGroupInfoList(map.get("id"));
        if(!groupInfoMyself.getGroupID().equals(groupInfoMyself.getParentID())){
            groupA.add(groupInfoMyself);
        }
        List<GroupInfo> grouptemp=new ArrayList<>();
           for(int i=0;i<groupA.size();i++) {
               if (!groupA.get(i).getParentID().equals(groupA.get(i).getGroupID())) {
                   List<GroupInfo> groupB = this.iGroupService.queryForGroupInfoList(String.valueOf(groupA.get(i).getGroupID()));
                   if (groupB.size() > 0) {
                       for (GroupInfo groupInfo : groupB) {
                           groupA.add(groupInfo);

                       }
                   }
               }
               grouptemp.add(groupA.get(i));
           }
        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet("组数据");
        sheet.autoSizeColumn(1,true);
        HSSFCellStyle style = wb.createCellStyle();
        HSSFFont fontSearch = wb.createFont();
        fontSearch.setFontHeightInPoints((short) 15);
        style.setFont(fontSearch);
        style.setBorderBottom(HSSFCellStyle.BORDER_DOUBLE);
        style.setBorderLeft(HSSFCellStyle.BORDER_DOUBLE);
        style.setBorderRight(HSSFCellStyle.BORDER_DOUBLE);
        style.setBorderTop(HSSFCellStyle.BORDER_DOUBLE);

        HSSFRow head = sheet.createRow(0);
        HSSFCell encoder_name1 = head.createCell(0);
        encoder_name1.setCellValue("它的父组ID");
        HSSFCell encoder_channel1 = head.createCell(1);
        encoder_channel1.setCellValue("组ID");
        HSSFCell encoder_address1 = head.createCell(2);
        encoder_address1.setCellValue("组名称");
        HSSFCell encoder_address11 = head.createCell(3);
        encoder_address11.setCellValue("组类型");
        HSSFCell encoder_port1 = head.createCell(4);
        encoder_port1.setCellValue("虚拟组织ID");
        HSSFCell encoder_stream_number1 = head.createCell(5);
        encoder_stream_number1.setCellValue("父虚拟组织ID");
        HSSFCell decod_channel1 = head.createCell(6);
        decod_channel1.setCellValue("业务分组ID");
        for (int j = 0; j < grouptemp.size(); j++) {
            HSSFRow rowHeard = sheet.createRow(j + 1);
            HSSFCell groupName = rowHeard.createCell(0);
            groupName.setCellValue(grouptemp.get(j).getParentID());
            HSSFCell groupId = rowHeard.createCell(1);
            groupId.setCellValue(grouptemp.get(j).getGroupID());
            HSSFCell groupResId = rowHeard.createCell(2);
            groupResId.setCellValue(grouptemp.get(j).getName());
            HSSFCell resCamName = rowHeard.createCell(3);
            resCamName.setCellValue(grouptemp.get(j).getType());
            HSSFCell resIp = rowHeard.createCell(4);
            resIp.setCellValue(grouptemp.get(j).getVirtualOrgID());
            HSSFCell port = rowHeard.createCell(5);
            port.setCellValue(grouptemp.get(j).getParentOrgID());
            HSSFCell username = rowHeard.createCell(6);
            username.setCellValue(grouptemp.get(j).getBusinessGroupID());
        }
      /*  File path = new File(path2);
        if (!path.exists()) {
            path.mkdir();
        }*/
        String path1 ="test" + ".xls";
        //String path1 = com.gd.controller.group.GroupController.class.getResource("/file/导出EXCEL").getPath() + File.separator + "下载测试文档" + ".xls";

        try {
            FileOutputStream fileout = new FileOutputStream(path1);
            wb.write(fileout);
            fileout.flush();
            fileout.close();
            System.out.println(path1);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        try {
            File ss = new File(path1);
            if (!ss.exists()) {
                ss.mkdir();
            }
            OutputStream os = res.getOutputStream();
            res.reset();
            res.setHeader("Content-Disposition", "attachment; filename=dict.txt");
            res.setContentType("application/octet-stream; charset=utf-8");
            os.write(FileUtils.readFileToByteArray(ss));
            System.out.println(os);
            os.flush();
            os.close();
        } catch (Exception ex) {
            ex.printStackTrace();


        }
    }

@RequestMapping(value = "/group_export_new",method = RequestMethod.POST)
    public void exportGroup(@RequestBody Map<String,String> map,HttpServletResponse res){
        //一级节点
    GroupInfo groupInfo = this.iGroupService.listForNodes2(Integer.parseInt(map.get("id")));
    groupInfo.setLevel(1);
    //二级节点
    List<GroupInfo> groupInfoList = this.iGroupService.queryForGroupInfoList(String.valueOf(groupInfo.getGroupID()));
    if(groupInfoList.size()>0){
        groupInfo.setGroupChildren(groupInfoList);
        for(GroupInfo gro:groupInfoList){
            if(!gro.getGroupID().equals(gro.getParentID())) {
                getGroupChildren(gro, 2);
            }
        }
    }
    //以上所有方法执行完毕，groupinfo已经形成一个树形结构
    //进行写入excel
    HSSFWorkbook wb = new HSSFWorkbook();
    HSSFSheet sheet = wb.createSheet("组织机构信息表");
    sheet.autoSizeColumn(1,true);
    HSSFCellStyle style = wb.createCellStyle();
    HSSFFont fontSearch = wb.createFont();
    fontSearch.setFontHeightInPoints((short) 15);
    style.setFont(fontSearch);
    style.setBorderBottom(HSSFCellStyle.BORDER_DOUBLE);
    style.setBorderLeft(HSSFCellStyle.BORDER_DOUBLE);
    style.setBorderRight(HSSFCellStyle.BORDER_DOUBLE);
    style.setBorderTop(HSSFCellStyle.BORDER_DOUBLE);
    HSSFRow head = sheet.createRow(0);
    HSSFCell encoder_name1 = head.createCell(0);
    encoder_name1.setCellValue(groupInfo.getName());
    HSSFCell encoder_channel1 = head.createCell(1);
    encoder_channel1.setCellValue(groupInfo.getVirtualOrgID());

    for(int i=0;i<groupInfo.getGroupChildren().size();i++){
        if(!groupInfo.getGroupChildren().get(i).getGroupID().equals(groupInfo.getGroupChildren().get(i).getParentID()))
        writeExcel(groupInfo.getGroupChildren().get(i),wb);
    }
    this.setNum(0);
    /*File path = new File(path2);
    if (!path.exists()) {
        path.mkdir();
    }*/
    String path1 ="group" + ".xls";
    //String path1 = com.gd.controller.group.GroupController.class.getResource("/file/导出EXCEL").getPath() + File.separator + "下载测试文档" + ".xls";

    try {
        FileOutputStream fileout = new FileOutputStream(path1);
        wb.write(fileout);
        fileout.flush();
        fileout.close();
        System.out.println(path1);
    } catch (Exception ex) {
        ex.printStackTrace();
    }

    try {
        File ss = new File(path1);
        if (!ss.exists()) {
            ss.mkdir();
        }
        OutputStream os = res.getOutputStream();
        res.reset();
        res.setHeader("Content-Disposition", "attachment; filename=dict.txt");
        res.setContentType("application/octet-stream; charset=utf-8");
        os.write(FileUtils.readFileToByteArray(ss));
        System.out.println(os);
        os.flush();
        os.close();
    } catch (Exception ex) {
        ex.printStackTrace();


    }
}

private void getGroupChildren(GroupInfo groupInfo,int level){
    groupInfo.setLevel(level);
    List<GroupInfo> groupInfoList = this.iGroupService.queryForGroupInfoList(String.valueOf(groupInfo.getGroupID()));
    if(groupInfoList.size()>0){
        groupInfo.setGroupChildren(groupInfoList);

        for(GroupInfo gro:groupInfoList){
            getGroupChildren(gro,level+1);
        }
    }else{
        groupInfo.setGroupChildren(null);
    }
}
private void writeExcel(GroupInfo groupInfo,HSSFWorkbook wb){
    HSSFSheet sheet = wb.getSheet("组织机构信息表");
    this.setNum(this.getNum()+1);
    HSSFRow head = sheet.createRow(this.getNum());
    int j=0;
    for(;j<(groupInfo.getLevel()-1)*2;j++){
        head.createCell(j).setCellValue("");
    }
    HSSFCell groupName = head.createCell(j);
    groupName.setCellValue(groupInfo.getName());
    HSSFCell virtualOrgID = head.createCell(j+1);
    virtualOrgID.setCellValue(groupInfo.getVirtualOrgID());
    List<GroupInfo> groupList = groupInfo.getGroupChildren();

    if(groupList!=null) {
        for (GroupInfo gf : groupList) {
            writeExcel(gf, wb);
        }
    }
}


}
