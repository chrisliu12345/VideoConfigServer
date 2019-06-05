package com.gd.api;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.gd.util.HttpSendUntils;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.springframework.http.HttpEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by dell on 2017/1/16.
 * Good Luck !
 * へ　　　　　／|
 * 　　/＼7　　　 ∠＿/
 * 　 /　│　　 ／　／
 * 　│　Z ＿,＜　／　　 /`ヽ
 * 　│　　　　　ヽ　　 /　　〉
 * 　 Y　　　　　`　 /　　/
 * 　ｲ●　､　●　　⊂⊃〈　　/
 * 　()　 へ　　　　|　＼〈
 * 　　>ｰ ､_　 ィ　 │ ／／
 * 　 / へ　　 /　ﾉ＜| ＼＼
 * 　 ヽ_ﾉ　　(_／　 │／／
 * 　　7　　　　　　　|／
 * 　　＞―r￣￣`ｰ―＿
 */
@RestController
@RequestMapping("/api/hello")
public class HelloController {
    @RequestMapping("/hello")
    public String hello() {
        return "Hello World!";
    }
    @RequestMapping(value = "/receive",method = RequestMethod.POST)
    public String receive(@RequestBody String aa){
        Gson gson=new Gson();
        System.out.println("接收到消息");
        System.out.println(aa);
        Map<String,String> map=new HashMap<>();
        map.put("200","success");
        return gson.toJson(map);
    }

}
