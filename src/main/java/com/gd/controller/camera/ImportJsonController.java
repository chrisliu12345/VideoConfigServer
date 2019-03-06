package com.gd.controller.camera;

import com.gd.domain.camera.Camera1;
import com.gd.domain.channel.Channel;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.util.ExcelUtils;
import com.gd.util.SetListUtils;
import com.google.gson.Gson;
import org.apache.commons.io.FileUtils;
import org.apache.xmlbeans.impl.piccolo.io.FileFormatException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.*;

@RestController
@RequestMapping("/imjson")
public class ImportJsonController {

    @Value("${excel.path1}")
    private String filePath;
    /*摄像头信息批量导入的方法*/
    @RequestMapping(value = "/camera_import_new", method = RequestMethod.POST)
    @ResponseBody
    @Transactional
    public String cameraUploadNew(HttpServletRequest request, HttpServletResponse res, HttpSession ss) {

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
            Map<String, String> resultMap = new HashMap<>();
            try {
                fileContentList = ExcelUtils.readExcel(file.getAbsolutePath());

                String path1 = "key.doc";
                File filename = new File(path1);
                //创建文件
                if (!filename.exists()) {
                    try {
                        filename.createNewFile();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                for (int i = 0; i < fileContentList.size(); i++) {

                    //                    //将内容写入文件
                    try {
                        boolean a = writeTxtFile('"'+"fanyi"+i+'"'+':'+'"'+fileContentList.get(i).get("1")+'"'+',', path1);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                //导出该文件
                try {
                    File ss1 = new File(path1);
                    OutputStream os = res.getOutputStream();
                    res.reset();

                    res.setHeader("Content-Disposition", "attachment; filename=" + path1);
                    res.setContentType("application/octet-stream; charset=utf-8");
                    os.write(FileUtils.readFileToByteArray(ss1));
                    System.out.println(os);
                    os.flush();
                    os.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

            } catch (FileNotFoundException e) {
                e.printStackTrace();

            } catch (FileFormatException e) {
                e.printStackTrace();

            }


        }
    else{
    }
        return null;
    }
    public static boolean writeTxtFile(String newStr,String path) throws IOException {
        // 先读取原有文件内容，然后进行写入操作
        boolean flag = false;
        String filein = newStr + "\r\n";
        String temp = "";

        FileInputStream fis = null;
        InputStreamReader isr = null;
        BufferedReader br = null;

        FileOutputStream fos = null;
        PrintWriter pw = null;
        try {
            // 文件路径
            File file = new File(path);
            // 将文件读入输入流
            fis = new FileInputStream(file);
            isr = new InputStreamReader(fis);
            br = new BufferedReader(isr);
            StringBuffer buf = new StringBuffer();

            // 保存该文件原有的内容
            for (int j = 1; (temp = br.readLine()) != null; j++) {
                buf = buf.append(temp);
                // System.getProperty("line.separator")
                // 行与行之间的分隔符 相当于“\n”
                buf = buf.append(System.getProperty("line.separator"));
            }
            buf.append(filein);

            fos = new FileOutputStream(file);
            pw = new PrintWriter(fos);
            pw.write(buf.toString().toCharArray());
            pw.flush();
            flag = true;
        } catch (IOException e1) {
            // TODO 自动生成 catch 块
            throw e1;
        } finally {
            if (pw != null) {
                pw.close();
            }
            if (fos != null) {
                fos.close();
            }
            if (br != null) {
                br.close();
            }
            if (isr != null) {
                isr.close();
            }
            if (fis != null) {
                fis.close();
            }
        }
        return flag;

    }
}
