package com.gd.controller.services;

import com.gd.domain.services.ServicesConfig;
import com.gd.domain.services.Services;
import com.gd.service.services.IServicesConfigService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/3/23 0023.
 */
@RequestMapping("/services")
@RestController
public class ServicesController {
    @Autowired
    private IServicesConfigService iServicesConfigService;
    @RequestMapping(value = "/mediaConfig",method = RequestMethod.POST)
    public String mediaConfig(@RequestBody Map<String,String> map){
        Services services=new Services();
        services.setServiceName(map.get("ServiceName"));
        services.setServiceType(Integer.parseInt(map.get("ServiceType")));
        services.setIPAddress(map.get("IPAddress"));
        services.setStatus(map.get("Status"));
        this.iServicesConfigService.add(services);
        System.out.println(services.getServiceID());
        ServicesConfig config=new ServicesConfig();
        if(services.getServiceType().equals(1)){
           config.setConfigName("HttpsPort");
           config.setConfigValue("8072");
           config.setServiceID(services.getServiceID());
           this.iServicesConfigService.addConfig(config);
        }else
        if(services.getServiceType().equals(2)){
            config.setConfigName("HttpsPort");
            config.setConfigValue("8000");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
            config.setConfigName("UsrName");
            config.setConfigValue("admin");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
            config.setConfigName("Password");
            config.setConfigValue("111111");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
            config.setConfigName("GB28181TcpPort");
            config.setConfigValue("9000");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
            config.setConfigName("RtspPort");
            config.setConfigValue("554");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
        }else
        if(services.getServiceType().equals(3)){
            config.setConfigName("HttpsPort");
            config.setConfigValue("8000");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
            config.setConfigName("UsrName");
            config.setConfigValue("admin");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
            config.setConfigName("Password");
            config.setConfigValue("111111");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
            config.setConfigName("GB28181TcpPort");
            config.setConfigValue("9000");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
            config.setConfigName("RtspPort");
            config.setConfigValue("554");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
        }else
        if(services.getServiceType().equals(5)){
        }
        else if(services.getServiceType().equals(4)){
            config.setConfigName("HttpsPort");
            config.setConfigValue("5066");
            config.setServiceID(services.getServiceID());
            this.iServicesConfigService.addConfig(config);
        }
        else{
        }
        Gson gson=new Gson();
        return gson.toJson("success");
    }

    @RequestMapping(value = "/getConfigView",method = RequestMethod.POST)
    public String getConfig(@RequestBody String str){
        Services services=new Services();
        /*services.setIPAddress(map.get("Ip"));*/
        services.setServiceID(Integer.parseInt(str));

        List<ServicesConfig> servicesConfig=this.iServicesConfigService.getConfig(services);
        Map<String,Object> map1=new HashMap<>();
        if(servicesConfig.size()>0){
            map1.put("data",servicesConfig);
        }else{
            map1.put("data",0);
        }
        Gson gson=new Gson();
        return gson.toJson(map1);
    }
    @RequestMapping(value = "/getConfig",method = RequestMethod.POST)
    public String getConfigView(@RequestBody Map<String,String> map){
        Services services=new Services();
       /* services.setIPAddress(map.get("Ip"));*/
        services.setServiceType(Integer.parseInt(map.get("ServiceType")));
        List<ServicesConfig> servicesConfig=this.iServicesConfigService.getService(services);
        Map<String,Object> map1=new HashMap<>();
        map1.put("code","999");
        if(servicesConfig.size()>0){
            map1.put("data",servicesConfig);
        }else{
            map1.put("data",0);
        }
        Gson gson=new Gson();
        return gson.toJson(map1);
    }
}
