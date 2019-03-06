package com.gd.controller.logview;


import com.gd.domain.org.LogView;
import com.gd.service.logview.ILogViewService;
import com.google.gson.Gson;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

@RestController
@RequestMapping("/logview")
public class LogViewController {
    @Autowired
    private  ILogViewService logViewService;
    @RequestMapping(method = RequestMethod.GET)
    public String list() {
        List<LogView> appList = new ArrayList<>();
        Map<String, Object> resultMap = new HashMap<>();
        appList = this.logViewService.list();
        resultMap.put("code", "0000");
        resultMap.put("data", appList);
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    @RequestMapping("/add")
    public void add(@RequestBody String name){
        //插入日志
        LogView logView=new LogView();
        logView.setLogName("reslog");
        logView.setComments("添加");
        Date date=new Date();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        logView.setLogDate(String.valueOf(simpleDateFormat.format(date)));
        logView.setUsrName(name);
        logView.setGroupOrCameraName("摄像机批量操作");
        this.logViewService.add(logView);
    }
    //上传密钥库文件
    @RequestMapping(value = "/ssk",method = RequestMethod.POST)
    @ResponseBody
    public String upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        if (!file.isEmpty()) {
            String saveFileName = file.getOriginalFilename();
            String path="test.txt";
            File saveFile = new File(path);
            //写文件到本地
            try {
                if (!saveFile.exists()) {
                    saveFile.createNewFile();
                }
                FileUtils.copyInputStreamToFile(file.getInputStream(), saveFile);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();

            }
            //读文件
             String text=readToString(path);
            System.out.println(text);
            this.logViewService.addkeyStore(text);
            saveFile.delete();
            }

            return "ok";
    }

    public String readToString(String path) {
        String encoding = "GBK";
        File file = new File(path);
        Long filelength = file.length();
        byte[] filecontent = new byte[filelength.intValue()];
        try {
            FileInputStream in = new FileInputStream(file);
            in.read(filecontent);
            in.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            return new String(filecontent, encoding);
        } catch (UnsupportedEncodingException e) {
            System.err.println("The OS does not support " + encoding);
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping(value = "/exportssl", method = RequestMethod.POST)
    public void cameraexport(HttpServletResponse res) {
        String ssl = this.logViewService.queryKeyStore();
        String path1 = "key.doc";
        File filename = new File(path1);
        //创建文件
        if (!filename.exists()) {
            try{
                filename.createNewFile();
            }catch (IOException e){
                e.printStackTrace();
            }
        }else if(filename.exists()){
            filename.delete();
            try {
                filename.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        //将内容写入文件
        try {
            boolean a=writeTxtFile(ssl,path1);
        }catch (Exception e){
            e.printStackTrace();
        }
        //导出该文件
        try {
            File ss = new File(path1);
            OutputStream os = res.getOutputStream();
            res.reset();

            res.setHeader("Content-Disposition", "attachment; filename="+path1);
           res.setContentType("application/octet-stream; charset=utf-8");
            os.write(FileUtils.readFileToByteArray(ss));
            System.out.println(os);
            os.flush();
            os.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
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
//登录人数统计
@RequestMapping(value = "/getAccountNow",method = RequestMethod.GET)
    public String getAccountNow(){
    Map<String,Integer> map=new HashMap<>();
    Gson gson=new Gson();
        //总账户人数
        Integer sum=this.logViewService.querySumAccount();
        if(sum==0){
            map.put("ratio",0);
        }else {
            map.put("ratio", sum);
        }
        //当前登录人数
        Integer person=this.logViewService.queryloginYes();
    System.out.println("我是当前登陆人数:"+person);
        if(person==0){
            map.put("perons",0);
        }else {
            map.put("perons", person);
        }
        return gson.toJson(map);
}
//清空操作日志
    @RequestMapping(value = "/cleanLog",method = RequestMethod.GET)
    public void cleanLog(){
        this.logViewService.cleanLog();
    }
}
