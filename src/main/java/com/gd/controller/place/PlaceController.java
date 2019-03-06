package com.gd.controller.place;

import com.gd.domain.orgtree.ZTreeParams;
import com.gd.domain.place.Place;
import com.gd.service.place.IPlaceService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/1/26 0026.
 */
@RestController
@RequestMapping("/place")
public class PlaceController {
    @Autowired
    private IPlaceService iPlaceService;
     //获取场所类型的父节点
    @RequestMapping(method = RequestMethod.GET)
    public String list(){
        //场所类型的父节点
        List<Place> placeList=this.iPlaceService.queryForObject();
        List<ZTreeParams> zTreeParamsList=new ArrayList<>();
        for(int i=0;i<placeList.size();i++){
            ZTreeParams zTreeParams=new ZTreeParams();
            zTreeParams.setId(placeList.get(i).getCSLXBH());
            zTreeParams.setpId(placeList.get(i).getFJCSBH());
            zTreeParams.setName(placeList.get(i).getCSLXMC());
            zTreeParams.setParent(true);
            zTreeParamsList.add(zTreeParams);
        }

        Gson gson=new Gson();

        return gson.toJson(zTreeParamsList);
    }

    //获取场所的子节点
    @RequestMapping(value = "/{id}" ,method = RequestMethod.POST)
    public String getzTree1(@PathVariable("id") String id) {
        Gson gson=new Gson();
        Place place=new Place();
        place.setCSLXBH(id);
        List<Place> placeList=this.iPlaceService.queryForObjectSon(place);
        if(placeList.size()<=0){
            String str="noData";
            return gson.toJson(str);
        }
        List<ZTreeParams> zTreeParamsList=new ArrayList<>();
        for(int i=0;i<placeList.size();i++){
            ZTreeParams zTreeParams=new ZTreeParams();
            zTreeParams.setId(placeList.get(i).getCSLXBH());
            zTreeParams.setpId(placeList.get(i).getFJCSBH());
            zTreeParams.setName(placeList.get(i).getCSLXMC());

            zTreeParamsList.add(zTreeParams);
        }



        return gson.toJson(zTreeParamsList);
    }


}
