package com.gd.controller.encoder;


import com.gd.domain.encoder.Encoder1;
import com.gd.service.encoder.IEncoderService;
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

import java.io.*;
import java.net.URLEncoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * Created by Administrator on 2017/8/2 0002.
 */
@RestController
@RequestMapping("/encoder")
public class EncoderController {

    String filePath = "file/导入EXCEL";
    @Autowired
    private IEncoderService iec;

    /*获取编码器列表信息的方法*/
    @RequestMapping(method = RequestMethod.GET)
    public String ss(Encoder1 encoder1) {
        List<Encoder1> appList = new ArrayList<>();
        Map<String, Object> resultMap = new HashMap<>();
        appList = this.iec.list1(encoder1);
        resultMap.put("code", "0000");
        resultMap.put("data", appList);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    /*删除编码器的方法*/
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") int id) {
        Encoder1 ee = new Encoder1();
        ee.setChannelID(id);
        this.iec.delete(ee);
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    /*添加编码器的方法*/
    @RequestMapping(method = RequestMethod.POST)
    public String add(@RequestBody Map<String, Object> paramMap) {

        Encoder1 so = new Encoder1();
        so.setChannelID(Integer.parseInt(paramMap.get("ChannelID").toString()));
        so.setProtocolType(paramMap.get("ProtocolType").toString());
        so.setDecoderID(Integer.parseInt(paramMap.get("DecoderID").toString()));
        so.setDecoderChannelID(Integer.parseInt(paramMap.get("DecoderChannelID").toString()));
        so.setCamID(Integer.parseInt(paramMap.get("CamID").toString()));
        so.setMatrixID(Integer.parseInt(paramMap.get("MatrixID").toString()));
        so.setMatrixInChannelNo(Integer.parseInt(paramMap.get("MatrixInChannelNo").toString()));
        this.iec.add1(so);

        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    /*修改编码器的方法*/
    @RequestMapping("/update")
    public void update(@RequestBody Map<String, Object> paramMap) {
        Encoder1 so = new Encoder1();
        so.setChannelID(Integer.parseInt(paramMap.get("ChannelID").toString()));
        so.setProtocolType(paramMap.get("ProtocolType").toString());
        so.setDecoderID(Integer.parseInt(paramMap.get("DecoderID").toString()));
        so.setDecoderChannelID(Integer.parseInt(paramMap.get("DecoderChannelID").toString()));
        so.setCamID(Integer.parseInt(paramMap.get("CamID").toString()));
        so.setMatrixID(Integer.parseInt(paramMap.get("MatrixID").toString()));
        so.setMatrixInChannelNo(Integer.parseInt(paramMap.get("MatrixInChannelNo").toString()));
        iec.update(so);
    }

    /*批量删除编码器的方法*/
   @RequestMapping(value = "/delete_change", method = RequestMethod.POST)
    public void delete_change(@RequestBody List<Integer> kind) {

        for (int i = 0; i < kind.size(); i++) {
            Encoder1 ee = new Encoder1();
            ee.setChannelID(kind.get(i));
            this.iec.delete(ee);
        }
        System.out.println("删除完成");
    }

    /*删除全部编码器的方法*/
    @RequestMapping(value = "/delete_all", method = RequestMethod.GET)
    public void delete_all() {
        this.iec.delete_all();
    }



    /* 编码器批量导出的方法*/
    @RequestMapping(value = "/codec_export", method = RequestMethod.GET)
    public void codecexport(HttpServletResponse res) {
        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet("编码器数据");
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
        group1.setCellValue("ProtocolType");
        HSSFCell encoder_address1 = head.createCell(2);
        encoder_address1.setCellValue("DecoderID");
        HSSFCell encoder_port1 = head.createCell(3);
        encoder_port1.setCellValue("DecoderChannelID");
        HSSFCell encoder_channel1 = head.createCell(4);
        encoder_channel1.setCellValue("CamID");
        HSSFCell encoder_stream_number1 = head.createCell(5);
        encoder_stream_number1.setCellValue("MatrixID");
        HSSFCell decod_channel1 = head.createCell(6);
        decod_channel1.setCellValue("MatrixInChannelNo");

        Encoder1 ec = new Encoder1();
        List<Encoder1> encoders = this.iec.list1(ec);
        for (int i = 0; i < encoders.size(); i++) {
            HSSFRow rowHeard = sheet.createRow(i + 1);
            HSSFCell encoder_name = rowHeard.createCell(0);
            encoder_name.setCellValue(encoders.get(i).getChannelID());
            HSSFCell groups = rowHeard.createCell(1);
            groups.setCellValue(encoders.get(i).getProtocolType());
            HSSFCell encoder_address = rowHeard.createCell(2);
            encoder_address.setCellValue(encoders.get(i).getDecoderID());
            HSSFCell encoder_port = rowHeard.createCell(3);
            encoder_port.setCellValue(encoders.get(i).getDecoderChannelID());
            HSSFCell encoder_channel = rowHeard.createCell(4);
            encoder_channel.setCellValue(encoders.get(i).getCamID());
            HSSFCell encoder_stream_number = rowHeard.createCell(5);
            encoder_stream_number.setCellValue(encoders.get(i).getMatrixID());
            HSSFCell decod_channel = rowHeard.createCell(6);
            decod_channel.setCellValue(encoders.get(i).getMatrixInChannelNo());

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

    /*编码器批量导入的方法*/
    @RequestMapping(value = "/codec_import", method = RequestMethod.POST)
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
                    String path="";
                    if(fileName.substring(fileName.length()-3,fileName.length()).equals("xls")){
                        path=filePath+fileName+"x";

                    }else {
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

                        Encoder1 cc = new Encoder1();
                        cc.setChannelID(Integer.parseInt(fileContentList.get(i).get("0")));
                       cc.setProtocolType(fileContentList.get(i).get("1"));
                        cc.setDecoderID(Integer.parseInt(fileContentList.get(i).get("2")));
                        cc.setDecoderChannelID(Integer.parseInt(fileContentList.get(i).get("3")));
                        cc.setCamID(Integer.parseInt(fileContentList.get(i).get("4")));
                        cc.setMatrixID(Integer.parseInt(fileContentList.get(i).get("5")));
                        cc.setMatrixInChannelNo(Integer.parseInt(fileContentList.get(i).get("6")));
                        this.iec.add1(cc);

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

    @RequestMapping(value = "/downloadFile")
    public void downloadMcode(HttpServletResponse response) throws UnsupportedEncodingException {
        FileLoadUtils.fileDownLoad(response, "file/" + URLEncoder.encode("编码器批量上传模板示例.xlsx", "UTF-8"));
    }

/*
    *//*以下为测试接口，并无用到*//*
    @RequestMapping("/list")
    public List<Encoder> list(Encoder encoder) {
        return iec.list(encoder);
    }

    @RequestMapping("/delete")
    public void detele(Encoder encoder) {
        iec.delete(encoder);
    }*/

}
