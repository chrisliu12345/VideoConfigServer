package com.gd.controller.channel;

import com.gd.domain.channel.Channel;
import com.gd.domain.orgtree.ZTreeParams;
import com.gd.service.camera.ICameraService;
import com.gd.service.channel.IChannelService;
import com.gd.service.res_attr.IResService;
import com.gd.util.ExcelUtils;
import com.gd.util.FileLoadUtils;
import com.google.gson.Gson;

import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.*;
import org.apache.xmlbeans.impl.piccolo.io.FileFormatException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.*;

/**
 * Created by 郄梦岩 on 2017/10/19.
 */
@RestController
@RequestMapping("/channel")
public class ChannelController {
    String filePath = "file/导入EXCEL";
    @Autowired
    private IChannelService iChannelService;
    @Autowired
    private ICameraService iCameraService;
    @Autowired
    private IResService iResService;
    //手动添加通道信息
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public void add(@RequestBody Map<String, Object> maps) {
        Channel channel = new Channel();
        channel.setChannelID(Integer.parseInt(maps.get("ChannelID").toString()));
        channel.setCamID(Integer.parseInt(maps.get("CamID").toString()));
        channel.setNvrID(Integer.parseInt(maps.get("NvrID").toString()));
        if (maps.get("NvrChannelID") == null || maps.get("NvrChannelID").toString().equals("")) {
        } else {
            channel.setNvrChannelID(maps.get("NvrChannelID").toString());
        }
        if (maps.get("FrameRate") == null || maps.get("FrameRate").toString().equals("")) {
        } else {
            channel.setFrameRate(Integer.parseInt(maps.get("FrameRate").toString()));
        }
        if (maps.get("BitRateType") == null || maps.get("BitRateType").toString().equals("")) {
        } else {
            channel.setBitRateType(maps.get("BitRateType").toString());
        }
        channel.setPlayUrl(maps.get("PlayUrl").toString());
        if (maps.get("BitRate") == null || maps.get("BitRate").toString().equals("")) {
        } else {
            channel.setBitRate(Integer.parseInt(maps.get("BitRate").toString()));
        }
        if (maps.get("Resolution") == null || maps.get("Resolution").toString().equals("")) {
        } else {
            channel.setResolution(maps.get("Resolution").toString());
        }
        if (maps.get("AudioBitRate") == null || maps.get("AudioBitRate").toString().equals("")) {
        } else {
            channel.setAudioBitRate(Integer.parseInt(maps.get("AudioBitRate").toString()));
        }
        if (maps.get("AudioFlag") == null || maps.get("AudioFlag").toString().equals("")) {
        } else {
            channel.setAudioFlag(Integer.parseInt(maps.get("AudioFlag").toString()));
        }
        if (maps.get("AudioEncoderType") == null || maps.get("AudioEncoderType").toString().equals("")) {
        } else {
            channel.setAudioEncoderType(Integer.parseInt(maps.get("AudioEncoderType").toString()));
        }
        if (maps.get("AudioSampleRate") == null || maps.get("AudioSampleRate").toString().equals("")) {
        } else {
            channel.setAudioSampleRate(Integer.parseInt(maps.get("AudioSampleRate").toString()));
        }
        channel.setUseType(Integer.parseInt(maps.get("UseType").toString()));
        this.iChannelService.addForObject(channel);
    }
    //查询所有通道
    @RequestMapping(method = RequestMethod.GET)
    public String list() {
        List<Channel> channelList = this.iChannelService.list();
        Map<String, Object> map = new HashMap<>();
        map.put("code", "000");
        map.put("data", channelList);
        Gson gson = new Gson();
        return gson.toJson(map);
    }
    //更新通道信息
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestBody Map<String, Object> maps) {
        Channel channel = new Channel();
        channel.setCamID(Integer.parseInt(maps.get("CamID").toString()));
        channel.setNvrID(Integer.parseInt(maps.get("NvrID").toString()));
        if (maps.get("NvrChannelID") == null || maps.get("NvrChannelID").toString().equals("")) {
        } else {
            channel.setNvrChannelID(maps.get("NvrChannelID").toString());
        }
        if (maps.get("FrameRate") == null || maps.get("FrameRate").toString().equals("")) {
        } else {
            channel.setFrameRate(Integer.parseInt(maps.get("FrameRate").toString()));
        }
        if (maps.get("BitRateType") == null || maps.get("BitRateType").toString().equals("")) {
        } else {
            channel.setBitRateType(maps.get("BitRateType").toString());
        }
        if (maps.get("PlayUrl") == null || maps.get("PlayUrl").toString().equals("")) {
            channel.setPlayUrl("null");
        } else {
            channel.setPlayUrl(maps.get("PlayUrl").toString());
        }

        if (maps.get("BitRate") == null || maps.get("BitRate").toString().equals("")) {
        } else {
            channel.setBitRate(Integer.parseInt(maps.get("BitRate").toString()));

        }
        if (maps.get("Resolution") == null || maps.get("Resolution").toString().equals("")) {
        } else {
            channel.setResolution(maps.get("Resolution").toString());
        }
        if (maps.get("AudioBitRate") == null || maps.get("AudioBitRate").toString().equals("")) {
        } else {
            channel.setAudioBitRate(Integer.parseInt(maps.get("AudioBitRate").toString()));
        }
        if (maps.get("AudioFlag") == null || maps.get("AudioFlag").toString().equals("")) {
        } else {
            channel.setAudioFlag(Integer.parseInt(maps.get("AudioFlag").toString()));
        }
        if (maps.get("AudioEncoderType") == null || maps.get("AudioEncoderType").toString().equals("")) {
        } else {
            channel.setAudioEncoderType(Integer.parseInt(maps.get("AudioEncoderType").toString()));
        }
        if (maps.get("AudioSampleRate") == null || maps.get("AudioSampleRate").toString().equals("")) {
        } else {
            channel.setAudioSampleRate(Integer.parseInt(maps.get("AudioSampleRate").toString()));
        }
        if (maps.get("UseType") == null || maps.get("UseType").toString().equals("")) {
            channel.setUseType(0);
        } else {
            channel.setUseType(Integer.parseInt(maps.get("UseType").toString()));
        }

        this.iChannelService.updateForObject(channel);
        //根据摄像机id查询摄像机名称
         String CameraName=this.iResService.queryForCamera(channel.getCamID());
        ZTreeParams zTreeParams=new ZTreeParams();
        zTreeParams.setpId(String.valueOf(channel.getNvrID()));
        zTreeParams.setId(String.valueOf(channel.getCamID()));
        zTreeParams.setName(CameraName);
        zTreeParams.setCameraNodes("C");
        zTreeParams.setIcon("/img/camera.jpg");
        //返回数据供树节点使用
        Map<String,Object> map=new HashMap<>();
        map.put("data",zTreeParams);

        Gson gson=new Gson();
        return gson.toJson(map);
    }


    //清空通道信息的方法
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") int id) {

        Channel ee = new Channel();
        ee.setChannelID(id);
        this.iChannelService.delete(ee);
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //批量删除通道信息
    @RequestMapping(value = "/delete_change", method = RequestMethod.POST)
    public void delete_change(@RequestBody List<Integer> kind) {

        for (int i = 0; i < kind.size(); i++) {
            Channel ee = new Channel();
            ee.setChannelID(kind.get(i));
            this.iChannelService.delete(ee);
        }
        System.out.println("删除完成");
    }
    //批量导出通道信息
    @RequestMapping(value = "/channel_export", method = RequestMethod.GET)
    public void export(HttpServletResponse res) {
        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet("通道数据");
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
        encoder_name1.setCellValue("ChannelID");
        HSSFCell group1 = head.createCell(1);
        group1.setCellValue("CamID");
        HSSFCell encoder_address1 = head.createCell(2);
        encoder_address1.setCellValue("NvrID");
        HSSFCell encoder_port1 = head.createCell(3);
        encoder_port1.setCellValue("NvrChannelID");
        HSSFCell encoder_channel1 = head.createCell(4);
        encoder_channel1.setCellValue("FrameRate");
        HSSFCell encoder_stream_number1 = head.createCell(5);
        encoder_stream_number1.setCellValue("BitRateType");
        HSSFCell decod_channel1 = head.createCell(6);
        decod_channel1.setCellValue("BitRate");
        HSSFCell ss1 = head.createCell(7);
        ss1.setCellValue("PlayUrl");
        HSSFCell ss2 = head.createCell(8);
        ss2.setCellValue("Resolution");
        HSSFCell ss3 = head.createCell(9);
        ss3.setCellValue("AudioFlag");
        HSSFCell ss4 = head.createCell(10);
        ss4.setCellValue("AudioEncoderType");
        HSSFCell ss5 = head.createCell(11);
        ss5.setCellValue("AudioBitRate");
        HSSFCell ss6 = head.createCell(12);
        ss6.setCellValue("AudioSampleRate");
        HSSFCell ss7 = head.createCell(13);
        ss7.setCellValue("UseType");

        Channel ec = new Channel();
        List<Channel> channels = this.iChannelService.list();
        for (int i = 0; i < channels.size(); i++) {
            HSSFRow rowHeard = sheet.createRow(i + 1);
            HSSFCell encoder_name = rowHeard.createCell(0);
            encoder_name.setCellValue(channels.get(i).getChannelID());
            HSSFCell groups = rowHeard.createCell(1);
            groups.setCellValue(channels.get(i).getCamID());
            HSSFCell encoder_address = rowHeard.createCell(2);
            encoder_address.setCellValue(channels.get(i).getNvrID());
            HSSFCell encoder_port = rowHeard.createCell(3);
            encoder_port.setCellValue(channels.get(i).getNvrChannelID());
            HSSFCell encoder_channel = rowHeard.createCell(4);
            encoder_channel.setCellValue(channels.get(i).getFrameRate());
            HSSFCell encoder_stream_number = rowHeard.createCell(5);
            encoder_stream_number.setCellValue(channels.get(i).getBitRateType());
            HSSFCell decod_channel = rowHeard.createCell(6);
            decod_channel.setCellValue(channels.get(i).getBitRate());
            HSSFCell erl = rowHeard.createCell(7);
            erl.setCellValue(channels.get(i).getPlayUrl());
            HSSFCell er2 = rowHeard.createCell(8);
            er2.setCellValue(channels.get(i).getResolution());
            HSSFCell er3 = rowHeard.createCell(9);
            er3.setCellValue(channels.get(i).getAudioFlag());
            HSSFCell er4 = rowHeard.createCell(10);
            er4.setCellValue(channels.get(i).getAudioEncoderType());
            HSSFCell er5 = rowHeard.createCell(11);
            er5.setCellValue(channels.get(i).getAudioBitRate());
            HSSFCell er6 = rowHeard.createCell(12);
            er6.setCellValue(channels.get(i).getAudioSampleRate());
            HSSFCell er7 = rowHeard.createCell(13);
            er7.setCellValue(channels.get(i).getUseType());
        }
        File path = new File("file/导出EXCEL");
        if (!path.exists()) {
            path.mkdir();
        }
        String path1 = "file/导出EXCEL" + File.separator + "下载测试文档" + ".xls";

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
    //下载通道模板
    @RequestMapping(value = "/downloadFile")
    public void downloadMcode(HttpServletResponse response) throws UnsupportedEncodingException {
        FileLoadUtils.fileDownLoad(response, "file/" + URLEncoder.encode("通道批量上传模板示例.xlsx", "UTF-8"));
    }
    //批量导入通道信息
    @RequestMapping(value = "/channel_import", method = RequestMethod.POST)
    @ResponseBody
    public String codeUpload(HttpServletRequest request, HttpServletResponse res) {
        List<Map<String, String>> fileContentList = new ArrayList<>();
        Gson gson = new Gson();
        System.out.println("in");
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
                    Channel cc = new Channel();
                    if (fileContentList.get(i).get("0") == null || fileContentList.get(i).get("0").equals("")) {

                    } else {
                        cc.setChannelID(Integer.parseInt(fileContentList.get(i).get("0")));
                    }
                    if (fileContentList.get(i).get("1") == null || fileContentList.get(i).get("1").equals("")) {

                    } else {
                        cc.setCamID(Integer.parseInt(fileContentList.get(i).get("1")));
                    }
                    if (fileContentList.get(i).get("2") == null || fileContentList.get(i).get("2").equals("")) {

                    } else {
                        cc.setNvrID(Integer.parseInt(fileContentList.get(i).get("2")));
                    }
                    if (fileContentList.get(i).get("3") == null || fileContentList.get(i).get("3").equals("")) {

                    } else {
                        cc.setNvrChannelID(fileContentList.get(i).get("3"));
                    }
                    if (fileContentList.get(i).get("4") == null || fileContentList.get(i).get("4").equals("")) {

                    } else {
                        cc.setFrameRate(Integer.parseInt(fileContentList.get(i).get("4")));
                    }
                    if (fileContentList.get(i).get("5") == null || fileContentList.get(i).get("5").equals("")) {

                    } else {
                        cc.setBitRateType(fileContentList.get(i).get("5"));
                    }
                    if (fileContentList.get(i).get("6") == null || fileContentList.get(i).get("6").equals("")) {

                    } else {
                        cc.setBitRate(Integer.parseInt(fileContentList.get(i).get("6")));
                    }
                    if (fileContentList.get(i).get("7") == null || fileContentList.get(i).get("7").equals("")) {

                    } else {
                        cc.setPlayUrl(fileContentList.get(i).get("7"));
                    }
                    if (fileContentList.get(i).get("8") == null || fileContentList.get(i).get("8").equals("")) {

                    } else {
                        cc.setResolution(fileContentList.get(i).get("8"));
                    }
                    if (fileContentList.get(i).get("9") == null || fileContentList.get(i).get("9").equals("")) {

                    } else {
                        cc.setAudioFlag(Integer.parseInt(fileContentList.get(i).get("9")));
                    }
                    if (fileContentList.get(i).get("10") == null || fileContentList.get(i).get("10").equals("")) {

                    } else {
                        cc.setAudioEncoderType(Integer.parseInt(fileContentList.get(i).get("10")));
                    }
                    if (fileContentList.get(i).get("11") == null || fileContentList.get(i).get("11").equals("")) {

                    } else {
                        cc.setAudioBitRate(Integer.parseInt(fileContentList.get(i).get("11")));
                    }
                    if (fileContentList.get(i).get("12") == null || fileContentList.get(i).get("12").equals("")) {

                    } else {
                        cc.setAudioSampleRate(Integer.parseInt(fileContentList.get(i).get("12")));
                    }
                    if (fileContentList.get(i).get("13") == null || fileContentList.get(i).get("13").equals("")) {

                    } else {
                        cc.setUseType(Integer.parseInt(fileContentList.get(i).get("13")));
                    }
                    this.iChannelService.addForObject(cc);
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
    @RequestMapping(value = "/NvrID", method = RequestMethod.POST)
    public String getNvrID(@RequestBody String id){
        String ResType=this.iChannelService.selectNvrID(id);
        Map<String, String> resultMap = new HashMap<String, String>();
        resultMap.put("code", "10004");
        resultMap.put("data", ResType);
        Gson gson=new Gson();
        return gson.toJson(resultMap);
    }
}
