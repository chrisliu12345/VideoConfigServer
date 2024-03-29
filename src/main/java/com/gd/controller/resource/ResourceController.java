package com.gd.controller.resource;

import com.gd.domain.resource.Resource;
import com.gd.jwt.JwtUser;
import com.gd.service.resource.IResourceService;
import com.google.gson.Gson;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by dell on 2017/4/5.
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
@RequestMapping(value = "/resource")
public class ResourceController {
    @Autowired
    private IResourceService resourceService;

    @RequestMapping(value = "/menus",method = RequestMethod.POST)
    public String getMenus(@AuthenticationPrincipal JwtUser loadUser,@RequestBody String ss) {
        List<Resource> resourceList = new ArrayList<>();
        resourceList = this.resourceService.queryForResourceByUsernameAndType(loadUser.getUsername(), "MENU");
        if(ss.equals("en")){
            for(int i=0;i<resourceList.size();i++){
                resourceList.get(i).setDescription(resourceList.get(i).getAppName());
            }
        }else{

        }
        Gson gson = new Gson();
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", "0000");
        resultMap.put("data", resourceList);
        return gson.toJson(resultMap);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String queryForList() {
        Map<String, Object> resultMap = new HashedMap();
        List<Map<String, Object>> resourceList = this.resourceService.queryForList(new Resource());
        if (resourceList.size() > 0) {
            resultMap.put("code", "0000");
            resultMap.put("data", resourceList);
        } else {
            resultMap.put("code", "0031");
            resultMap.put("data", "can not find data");
        }
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }


    @RequestMapping(method = RequestMethod.POST)
    public void addForobject(@RequestBody Map<String, Object> paramMap){
        Resource res=new Resource();
        res.setAppName((String) paramMap.get("groups"));

    }
}
