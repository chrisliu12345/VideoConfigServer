package com.gd.controller.skin;

import com.gd.domain.skin.Skin;
import com.gd.service.skin.ISkinService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;


@RestController
@RequestMapping("/skin")
public class SkinController {
    @Autowired
    private ISkinService iSkinService;

    @RequestMapping(method = RequestMethod.GET)
    public String getObject() {
        Skin skin = this.iSkinService.queryForObject();
        Map<String, Object> map = new HashMap<>();
        Gson gson = new Gson();
        if(skin!=null) {
            map.put("code", "200");
            map.put("data", skin);
        }else{
            map.put("code", "found not data");
        }
        return gson.toJson(map);
    }

    @RequestMapping(method = RequestMethod.POST)
    public String update(@RequestBody Skin skin){
        Skin queryskin = this.iSkinService.queryForObject();
        if(queryskin!=null) {
            this.iSkinService.update(skin);
        }else{
            this.iSkinService.add(skin);
        }
        Map<String, String> map = new HashMap<>();
        Gson gson = new Gson();
        map.put("code", "200");
        map.put("data", "success");
        return gson.toJson(map);
    }

}
