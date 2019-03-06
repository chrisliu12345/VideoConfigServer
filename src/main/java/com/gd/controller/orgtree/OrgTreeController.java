package com.gd.controller.orgtree;

import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.camera.Camera1;

import com.gd.domain.group.GroupInfo;
import com.gd.domain.org.Org;

import com.gd.domain.orgtree.OrgTree;

import com.gd.domain.orgtree.ZTreeParams;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.updown.UpDown;
import com.gd.domain.userinfo.UserInfo;
import com.gd.service.camera.ICameraService;

import com.gd.service.group.IGroupService;
import com.gd.service.org.IOrgService;
import com.gd.service.orgtree.IOrgTreeService;

import com.gd.service.updown.IUpDownService;
import com.gd.service.userinfo.IUserInfoService;
import com.gd.util.BeanToMap;
import com.google.gson.Gson;

import io.swagger.annotations.*;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * Created by dell on 2017/5/5.
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
@RequestMapping("/orgtree")
public class OrgTreeController {
    @Autowired
    private IOrgTreeService orgTreeService;
    @Autowired
    private IOrgService orgService;
    @Autowired
    private IUserInfoService userInfoService;
    @Autowired
    private ICameraService cameraService;
    @Autowired
    private IGroupService groupService;
    @Autowired
    private IUpDownService upDownService;

    //添加摄像机时，选择摄像机所属组
    @RequestMapping(value = "/{id}", method = RequestMethod.POST)
    @ApiOperation(value = "查询组织Tree", notes = "查询组织Tree", httpMethod = "GET", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiResponses(value = {
            @ApiResponse(code = 401, message = "No Privilege"),
    })
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "组织id", required = true, dataType = "String", paramType = "path")
    })
    public String getzTree(@PathVariable("id") String id) {

        List<GroupInfo> groupInfoList = this.groupService.list();
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < groupInfoList.size(); i++) {
            ZTreeParams z = new ZTreeParams();
            z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
            z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
            z.setName(groupInfoList.get(i).getName());
            z.setParentOrgID(groupInfoList.get(i).getVirtualOrgID());
            zTreeParamsList.add(z);
        }
        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }

    //1.组织机构显示的组织机构树包括摄像机(异步加载),此方法为加载父节点
    @RequestMapping(value = "/zTreeCmaera/1", method = RequestMethod.POST)
    public String getzTreeCmaera(@RequestBody String account) {
        System.out.println("我是account"+account);
        //先查询该账户是否在account——camera表中存在。
        TreeUseData treeUseData = new TreeUseData();
        treeUseData.setAccountName(account);
        //查询存在数据条数
        List<Account_Camera> account_cameras = this.orgTreeService.queryForAccount(account);
        for (Account_Camera a : account_cameras) {
            //如果是8185
            if (a.getGroupOrCameraId().equals(8185)) {
                treeUseData.setGrouporcameraid(a.getGroupOrCameraId());
                break;
            }
        }
        List<GroupInfo> groupInfoList = this.groupService.queryForObjectZtree(treeUseData);
        List<Res_Attr> res_attrList = this.orgTreeService.queryResAttrObjectZtree(treeUseData);

        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        if (treeUseData.getGrouporcameraid() != null && treeUseData.getGrouporcameraid().equals(8185)) {
            for (int i = 0; i < groupInfoList.size(); i++) {
                /* 加载组ID和ParentID相等的数据和组类型为2（业务分组ID），为父节点*/
                if (groupInfoList.get(i).getGroupID().equals(groupInfoList.get(i).getParentID()) || groupInfoList.get(i).getType() == 2) {
                    ZTreeParams z = new ZTreeParams();
                    z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
                    z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
                    z.setName(groupInfoList.get(i).getName());
                    z.setParentOrgID(groupInfoList.get(i).getVirtualOrgID());
                    z.setParent(true);
                    z.setIcon("/img/group1.png");
                    zTreeParamsList.add(z);
                }
            }
        } else {
            for (int i = 0; i < groupInfoList.size(); i++) {
                /* 加载组ID和ParentID相等的数据和组类型为2（业务分组ID），为父节点*/
                ZTreeParams z = new ZTreeParams();
                z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
                z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
                z.setName(groupInfoList.get(i).getName());
                z.setParentOrgID(groupInfoList.get(i).getVirtualOrgID());
                z.setParent(true);
                z.setIcon("/img/group1.png");
                zTreeParamsList.add(z);
            }
            for (int j = 0; j < res_attrList.size(); j++) {
                treeUseData.setVid(res_attrList.get(j).getCivilCode());
                //查询摄像机的
                List<Res_Attr> res_attrList1 = this.cameraService.queryForCamera2Nodes(treeUseData);
                if (res_attrList1.size() <= 0) {
                    //选择全部摄像机
                    res_attrList1 = this.cameraService.queryForCamera4Nodes(treeUseData);
                }
                for (int k = 0; k < res_attrList1.size(); k++) {
                    ZTreeParams z = new ZTreeParams();
                    z.setId(String.valueOf(res_attrList1.get(k).getResID()));
                    z.setpId(res_attrList1.get(k).getParentID());
                    z.setName(res_attrList1.get(k).getName());
                    z.setParent(true);
                    z.setCameraNodes("C");
                    z.setIcon("/img/camera.jpg");
                    zTreeParamsList.add(z);
                }
                if (res_attrList.get(j).getResType() == 131) {

                } else {
                    ZTreeParams z = new ZTreeParams();
                    z.setId(String.valueOf(res_attrList.get(j).getDeviceID()));
                    z.setpId(res_attrList.get(j).getCivilCode());
                    z.setName(res_attrList.get(j).getName());
                    z.setParent(true);
                    z.setCameraNodes("B");
                    if (res_attrList.get(j).getResType() != 134) {
                        z.setIcon("/img/resattr.png");
                    } else {
                        z.setIcon("/img/alarm.jpg");
                    }
                    zTreeParamsList.add(z);
                }
            }
        }
        for (int i = 0; i < zTreeParamsList.size() - 1; i++) {
            for (int j = zTreeParamsList.size() - 1; j > i; j--) {
                if (zTreeParamsList.get(j).getId().equals(zTreeParamsList.get(i).getId())) {
                    zTreeParamsList.remove(j);
                }
            }
        }
        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }


    //2-1.组织机构显示的组织机构树包括摄像机(异步加载)，根据父节点，加载子节点
    @RequestMapping(value = "/getCtree/{id}", method = RequestMethod.POST)
    public String get1zTree(@PathVariable("id") String id, @RequestBody String account) {

        TreeUseData data_parameter = new TreeUseData();
        data_parameter.setId(Integer.parseInt(id.trim()));

        List<Account_Camera> account_cameras = this.orgTreeService.queryForAccount(account);
        for (Account_Camera a : account_cameras) {
            //如果是8185
            if (a.getGroupOrCameraId().equals(8185)) {
                data_parameter.setGrouporcameraid(a.getGroupOrCameraId());
                break;
            }
        }
        data_parameter.setAccountName(account);
        //获取组数据
        List<GroupInfo> groupInfoList = this.groupService.listForNodes(data_parameter);
        if (groupInfoList.size() <= 0) {
            groupInfoList = this.groupService.listForNodesAll(data_parameter);
        }

        //根据ID查询VirtualOrgID
        String vid = this.groupService.queryforVirtualOrgID(id);
        //根据ID查询Type
        Integer type1=this.groupService.queryforType(Integer.parseInt(id));

        data_parameter.setVid(vid);
        //存放查询到的设备数据
        List<Res_Attr> camera1List = new ArrayList<>();
        //存放查到的摄像机数据
        List<Res_Attr> camera2List = new ArrayList<>();
        if(type1.equals(1)) {
            camera1List = this.cameraService.queryForCameraNodes(data_parameter);
        }else{
            System.out.println("进入Type=3组类型" + type1);
            camera1List = this.cameraService.queryForCameraNodesByType3(data_parameter);
        }


        //判断该组下在account_camera表中是否记录了设备或者摄像机。如果没有记录，则默认加载该组下的全部摄像机或者设备。
        if (camera1List.size() <= 0) {
            //选择全部设备
            camera1List = this.cameraService.queryForCamera3Nodes(data_parameter);
        }

        //获取摄像机数据
        camera2List = this.cameraService.queryForCamera2Nodes(data_parameter);
        if (camera2List.size() <= 0) {
            //选择全部摄像机
            camera2List = this.cameraService.queryForCamera4Nodes(data_parameter);
        }
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < groupInfoList.size(); i++) {
            if (groupInfoList.get(i).getGroupID().equals(groupInfoList.get(i).getParentID())) {
                //相等的是根节点，不添加到LIST中
            } else {
                //根据查询到的子节点，查询该子节点下是否还有子节点

                List<GroupInfo> nodesGroup = this.groupService.listForNodes(data_parameter);
                TreeUseData treeUseData = new TreeUseData();
                treeUseData.setAccountName(account);
                treeUseData.setVid(String.valueOf(groupInfoList.get(i).getVirtualOrgID()));
                List<Res_Attr> camera1List1 = this.cameraService.queryForCameraNodes(treeUseData);
                ZTreeParams z = new ZTreeParams();
                z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
                z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
                z.setName(groupInfoList.get(i).getName());
                z.setParentOrgID(groupInfoList.get(i).getVirtualOrgID());
                z.setParent(true);
                z.setCameraNodes("A");
                z.setIcon("/img/group1.png");
                zTreeParamsList.add(z);

            }
        }
        //这个for循环是查询DVR或者NVR的
        for (int j = 0; j < camera1List.size(); j++) {
            ZTreeParams z1 = new ZTreeParams();
            z1.setId(String.valueOf(camera1List.get(j).getResID()));
            //根据摄像机的CivilCode去查group表里数据包含这个字段的Groupid，这个就是pId
            String pid = this.orgTreeService.queryForCivilCode(camera1List.get(j).getCivilCode());
            z1.setpId(pid);
            z1.setName(camera1List.get(j).getName());
            z1.setCameraNodes("B");
            if (camera1List.get(j).getResType() != 134) {
                z1.setIcon("/img/resattr.png");
            } else {
                z1.setIcon("/img/alarm.jpg");
            }
            z1.setResType(camera1List.get(j).getResType().toString());
            zTreeParamsList.add(z1);
        }

        for (int k = 0; k < camera2List.size(); k++) {
            ZTreeParams z2 = new ZTreeParams();
            //查询摄像机的父设备ID作为摄像机的Pid;
            String resid = this.orgTreeService.queryForParentID(camera2List.get(k).getParentID());
            if (resid == null || resid.equals("")) {
                String pid = this.orgTreeService.queryForCivilCode(camera2List.get(k).getCivilCode());
                z2.setpId(pid);
            } else {
                z2.setpId(resid);
            }
            z2.setId(String.valueOf(camera2List.get(k).getResID()));
            z2.setName(camera2List.get(k).getName());
            z2.setCameraNodes("C");
            z2.setIcon("/img/camera.jpg");
            z2.setParent(false);
            zTreeParamsList.add(z2);
        }

        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }

    //创建组的时候选择，不加载摄像机的树
    //2-2.组织机构显示的组织机构树不包括摄像机(异步加载)，根据父节点，加载子节点
    @RequestMapping(value = "/getCtree1/{id}", method = RequestMethod.POST)
    public String getzTree1(@PathVariable("id") String id, @RequestBody String account) {
        TreeUseData data_parameter = new TreeUseData();
        data_parameter.setId(Integer.parseInt(id));
        data_parameter.setAccountName(account);
        data_parameter.setVid(id);
        List<GroupInfo> groupInfoList = this.groupService.listForNodes(data_parameter);
        List<Res_Attr> camera1List = this.cameraService.queryForCameraNodes(data_parameter);
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < groupInfoList.size(); i++) {
            if (groupInfoList.get(i).getGroupID().equals(groupInfoList.get(i).getParentID())) {
                //相等的是根节点，不添加到LIST中
            } else {
                //根据查询到的子节点，查询该子节点下是否还有子节点
                List<GroupInfo> nodesGroup = this.groupService.listForNodes(data_parameter);
                if (nodesGroup.size() <= 0) {
                    ZTreeParams z = new ZTreeParams();
                    z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
                    z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
                    z.setParentOrgID(groupInfoList.get(i).getVirtualOrgID());
                    z.setName(groupInfoList.get(i).getName());
                    z.setCameraNodes("A");
                    z.setIcon("/img/group1.png");
                    z.setParent(false);
                    zTreeParamsList.add(z);
                } else {
                    ZTreeParams z = new ZTreeParams();
                    z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
                    z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
                    z.setName(groupInfoList.get(i).getName());
                    z.setParentOrgID(groupInfoList.get(i).getVirtualOrgID());
                    z.setCameraNodes("A");
                    z.setIcon("/img/group1.png");
                    z.setParent(true);
                    zTreeParamsList.add(z);
                }
            }
        }
        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }

    //组织机构显示的组织机构树包括摄像机(一次性全部加载)
    @RequestMapping(value = "/zTreeCmaera/2", method = RequestMethod.POST)
    public String getzTree2() {

        List<GroupInfo> groupInfoList = this.groupService.list();
        List<Res_Attr> camera1List = this.cameraService.queryForCameralist();
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < groupInfoList.size(); i++) {
            ZTreeParams z = new ZTreeParams();
            z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
            z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
            z.setName(groupInfoList.get(i).getName());
            z.setCameraNodes("A");
            zTreeParamsList.add(z);
        }
        for (int j = 0; j < camera1List.size(); j++) {
            ZTreeParams z1 = new ZTreeParams();
            z1.setId(String.valueOf(camera1List.get(j).getResID()));
            z1.setpId(camera1List.get(j).getCivilCode());
            z1.setName(camera1List.get(j).getName());
            z1.setCameraNodes("C");
            z1.setIcon("/img/camera.jpg");
            zTreeParamsList.add(z1);
        }
        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }

    //此方法专门给添加设备时使用
    @RequestMapping(value = "/zTreeCmaera/camera", method = RequestMethod.POST)
    public String getzTreeCmaera2(@RequestBody String account) {
        TreeUseData data_parameter = new TreeUseData();
        List<Account_Camera> account_cameras = this.orgTreeService.queryForAccount(account);
        if (account_cameras.size() <= 0) {
            data_parameter.setAccountName("null");
        } else {
            data_parameter.setAccountName(account);
        }
        List<GroupInfo> groupInfoList = this.groupService.listGrouptoResAttr(data_parameter);
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < groupInfoList.size(); i++) {
            /* ||groupInfoList.get(i).getType()==2*/
            if (groupInfoList.get(i).getGroupID().equals(groupInfoList.get(i).getParentID())) {
                ZTreeParams z = new ZTreeParams();
                z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
                z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
                z.setName(groupInfoList.get(i).getName());
                z.setParentOrgID(groupInfoList.get(i).getVirtualOrgID());
                z.setParent(true);
                z.setIcon("/img/group1.png");
                zTreeParamsList.add(z);
            }
        }
        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }

    //存储计划及组织机构搜索摄像机功能
    @RequestMapping(value = "/getInputCamera", method = RequestMethod.POST)
    public String getzTreeCamera(@RequestBody Map<String, String> map) {
        String key = map.get("key1");
        String name = map.get("value1").trim();
        Res_Attr res_attr = new Res_Attr();
        res_attr.setName(name);
        res_attr.setKey(key);
        List<Res_Attr> resAttrList = this.cameraService.searchCameraName(res_attr);
        List<GroupInfo> test = new ArrayList<>();
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < resAttrList.size(); i++) {
            ZTreeParams z1 = new ZTreeParams();
            //先判断该摄像机是DVR或者NVR下的摄像机还是IPC摄像机
            //查询摄像机的父设备
            //查询DEVICEid==PARENTid的,为设备。
            Res_Attr resAttr = this.orgTreeService.queryResAttrForParentID(resAttrList.get(i).getParentID());
            if (resAttr == null) {
                ZTreeParams z11 = new ZTreeParams();
                z11.setId(String.valueOf(resAttrList.get(i).getResID()));
                z11.setpId(resAttrList.get(i).getCivilCode());
                z11.setName(resAttrList.get(i).getName());
                z11.setCameraNodes("C");
                z11.setIcon("/img/camera.jpg");
                zTreeParamsList.add(z11);
            } else if (resAttr.getResType() == 132) {
                ZTreeParams z11 = new ZTreeParams();
                z11.setId(String.valueOf(resAttr.getResID()));
                z11.setpId(resAttr.getCivilCode());
                z11.setName(resAttr.getName());
                z11.setCameraNodes("C");
                z11.setIcon("/img/camera.jpg");
                zTreeParamsList.add(z11);

            } else {
                ZTreeParams z11 = new ZTreeParams();
                z11.setId(String.valueOf(resAttr.getResID()));
                z11.setpId(resAttr.getCivilCode());
                z11.setName(resAttr.getName());
                z11.setCameraNodes("B");
                if (resAttr.getResType() != 134) {
                    z11.setIcon("/img/resattr.png");
                } else {
                    z11.setIcon("/img/alarm.jpg");
                }
                zTreeParamsList.add(z11);
            }
            if (resAttr == null) {
                z1.setpId(resAttrList.get(i).getCivilCode());
            } else {
                z1.setpId(String.valueOf(resAttr.getResID()));
            }
            //装载摄像机节点
            z1.setId(String.valueOf(resAttrList.get(i).getResID()));
            z1.setName(resAttrList.get(i).getName());
            z1.setCameraNodes("C");
            z1.setIcon("/img/camera.jpg");
            zTreeParamsList.add(z1);


            //装载组节点(摄像机的上级组节点C)
            GroupInfo groupInfo = this.groupService.listForNodes1(Integer.parseInt(resAttrList.get(i).getCivilCode()));
            ZTreeParams z2 = new ZTreeParams();
            z2.setName(groupInfo.getName());
            z2.setId(resAttrList.get(i).getCivilCode());
            z2.setpId(String.valueOf(groupInfo.getParentID()));
            zTreeParamsList.add(z2);
            //如果此时C节点就是最顶节点，则不往下进行，退出即可。
            if (groupInfo.getGroupID().equals(groupInfo.getParentID())) {

            } else {
                //根据组节点C查询它的上级节点B
                GroupInfo groupInfo1 = this.groupService.listForNodes2(groupInfo.getParentID());
                int gid = groupInfo1.getGroupID();
                int pid = groupInfo1.getParentID();
                String names = groupInfo1.getName();
                ZTreeParams z3 = new ZTreeParams();
                z3.setName(names);
                z3.setId(String.valueOf(gid));
                z3.setpId(String.valueOf(pid));
                zTreeParamsList.add(z3);
                while (gid != pid) {
                    GroupInfo groupInfo2 = this.groupService.listForNodes2(pid);
                    gid = groupInfo2.getGroupID();
                    pid = groupInfo2.getParentID();
                    names = groupInfo2.getName();
                    ZTreeParams z4 = new ZTreeParams();
                    z4.setName(names);
                    z4.setId(String.valueOf(gid));
                    z4.setpId(String.valueOf(pid));
                    zTreeParamsList.add(z4);
                }
            }

        }
        for (int i = 0; i < zTreeParamsList.size() - 1; i++) {
            for (int j = zTreeParamsList.size() - 1; j > i; j--) {
                if (zTreeParamsList.get(j).getId().equals(zTreeParamsList.get(i).getId())) {
                    zTreeParamsList.remove(j);
                }
            }
        }
        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }

    //报警设置的选择目标摄像机
    @RequestMapping(value = "/getDtree/{id}", method = RequestMethod.POST)
    public String getDzTree(@PathVariable("id") String id, @RequestBody String account) {

        TreeUseData data_parameter = new TreeUseData();
        data_parameter.setId(Integer.parseInt(id.trim()));

        List<Account_Camera> account_cameras = this.orgTreeService.queryForAccount(account);
        for (Account_Camera a : account_cameras) {
            //如果是8185
            if (a.getGroupOrCameraId().equals(8185)) {
                data_parameter.setGrouporcameraid(a.getGroupOrCameraId());
                break;
            }
        }
        data_parameter.setAccountName(account);
        //获取组数据
        List<GroupInfo> groupInfoList = this.groupService.listForNodes(data_parameter);
        if (groupInfoList.size() <= 0) {
            groupInfoList = this.groupService.listForNodesAll(data_parameter);
        }

        //根据ID查询VirtualOrgID
        String vid = this.groupService.queryforVirtualOrgID(id);
        data_parameter.setVid(vid);
        //获取DVR或者NVR数据
        List<Res_Attr> camera1List = new ArrayList<>();
        List<Res_Attr> camera2List = new ArrayList<>();
        camera1List = this.cameraService.queryForCameraNodes(data_parameter);
        //判断该组下在account_camera表中是否记录了设备或者摄像机。如果没有记录，则默认加载该组下的全部摄像机或者设备。
        if (camera1List.size() <= 0) {
            //选择全部设备
            camera1List = this.cameraService.queryForCamera3Nodes(data_parameter);
        }

        //获取摄像机数据
        camera2List = this.cameraService.queryForCamera2Nodes(data_parameter);
        if (camera2List.size() <= 0) {
            //选择全部摄像机
            camera2List = this.cameraService.queryForCamera4Nodes(data_parameter);
        }
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < groupInfoList.size(); i++) {
            if (groupInfoList.get(i).getGroupID().equals(groupInfoList.get(i).getParentID())) {
                //相等的是根节点，不添加到LIST中
            } else {
                //根据查询到的子节点，查询该子节点下是否还有子节点

                List<GroupInfo> nodesGroup = this.groupService.listForNodes(data_parameter);
                TreeUseData treeUseData = new TreeUseData();
                treeUseData.setAccountName(account);
                treeUseData.setVid(String.valueOf(groupInfoList.get(i).getVirtualOrgID()));
                List<Res_Attr> camera1List1 = this.cameraService.queryForCameraNodes(treeUseData);
                ZTreeParams z = new ZTreeParams();
                z.setId(String.valueOf(groupInfoList.get(i).getGroupID()));
                z.setpId(String.valueOf(groupInfoList.get(i).getParentID()));
                z.setName(groupInfoList.get(i).getName());
                z.setParentOrgID(groupInfoList.get(i).getVirtualOrgID());
                z.setParent(true);
                z.setCameraNodes("A");
                z.setIcon("/img/group1.png");
                zTreeParamsList.add(z);

            }
        }
        //这个for循环是查询DVR或者NVR的
        for (int j = 0; j < camera1List.size(); j++) {
            ZTreeParams z1 = new ZTreeParams();
            z1.setId(String.valueOf(camera1List.get(j).getResID()));
            //根据摄像机的CivilCode去查group表里数据包含这个字段的Groupid，这个就是pId
            String pid = this.orgTreeService.queryForCivilCode(camera1List.get(j).getCivilCode());
            z1.setpId(pid);
            z1.setName(camera1List.get(j).getName());
            z1.setCameraNodes("B");
            if (camera1List.get(j).getResType() != 134) {
                z1.setIcon("/img/resattr.png");
            } else {
                z1.setIcon("/img/alarm.jpg");
            }

            zTreeParamsList.add(z1);
        }

        for (int k = 0; k < camera2List.size(); k++) {
            ZTreeParams z2 = new ZTreeParams();
            //查询摄像机的父设备ID作为摄像机的Pid;
            String resid = this.orgTreeService.queryForParentID(camera2List.get(k).getParentID());
            if (resid == null || resid.equals("")) {
                String pid = this.orgTreeService.queryForCivilCode(camera2List.get(k).getCivilCode());
                z2.setpId(pid);
            } else {
                z2.setpId(resid);
            }
            z2.setId(String.valueOf(camera2List.get(k).getResID()));
            z2.setName(camera2List.get(k).getName());
            z2.setCameraNodes("C");
            z2.setIcon("/img/camera.jpg");
            z2.setParent(false);
            zTreeParamsList.add(z2);
        }

        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }

    //组织机构搜索设备功能
    @RequestMapping(value = "/getInputResAttr", method = RequestMethod.POST)
    public String getInputResAttr(@RequestBody Map<String, Object> map) {
        String key = map.get("key1").toString();
        String name = map.get("value1").toString().trim();
        Res_Attr res_attr = new Res_Attr();
        res_attr.setName(name);
        res_attr.setKey(key);
        List<Res_Attr> resAttrList = this.cameraService.searchResAttrName(res_attr);
        List<GroupInfo> test = new ArrayList<>();
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < resAttrList.size(); i++) {
            ZTreeParams z1 = new ZTreeParams();
            //判断该设备下是否有摄像机
            List<Res_Attr> cameralist = this.orgTreeService.queryCameraForParentID(resAttrList.get(i).getDeviceID());
            if (cameralist.size() <= 0) {

            } else {
                for (int u = 0; u < cameralist.size(); u++) {
                    ZTreeParams z11 = new ZTreeParams();
                    z11.setId(String.valueOf(cameralist.get(u).getResID()));
                    z11.setpId(String.valueOf(resAttrList.get(i).getResID()));
                    z11.setName(cameralist.get(u).getName());
                    z11.setCameraNodes("C");
                    z11.setIcon("/img/camera.jpg");
                    zTreeParamsList.add(z11);
                }
            }

            //装载设备节点
            z1.setpId(resAttrList.get(i).getCivilCode());
            z1.setId(String.valueOf(resAttrList.get(i).getResID()));
            z1.setName(resAttrList.get(i).getName());
            z1.setCameraNodes("B");
            if (resAttrList.get(i).getResType() != 134) {
                z1.setIcon("/img/resattr.png");
            } else {
                z1.setIcon("/img/alarm.jpg");
            }
            zTreeParamsList.add(z1);


            //装载组节点(摄像机的上级组节点C)
            //根据设备的civilcode字段内容来搜索组
            GroupInfo groupInfo = this.groupService.listForNodes1(Integer.parseInt(resAttrList.get(i).getCivilCode()));
            if (groupInfo == null) {

            } else {
                ZTreeParams z2 = new ZTreeParams();
                z2.setName(groupInfo.getName());
                z2.setId(resAttrList.get(i).getCivilCode());
                z2.setpId(String.valueOf(groupInfo.getParentID()));
                zTreeParamsList.add(z2);
                //如果此时C节点就是最顶节点，则不往下进行，退出即可。
                if (groupInfo.getGroupID().equals(groupInfo.getParentID())) {

                } else {
                    //根据组节点C查询它的上级节点B
                    GroupInfo groupInfo1 = this.groupService.listForNodes2(groupInfo.getParentID());
                    int gid = groupInfo1.getGroupID();
                    int pid = groupInfo1.getParentID();
                    String names = groupInfo1.getName();
                    ZTreeParams z3 = new ZTreeParams();
                    z3.setName(names);
                    z3.setId(String.valueOf(gid));
                    z3.setpId(String.valueOf(pid));
                    zTreeParamsList.add(z3);
                    while (gid != pid) {
                        GroupInfo groupInfo2 = this.groupService.listForNodes2(pid);
                        gid = groupInfo2.getGroupID();
                        pid = groupInfo2.getParentID();
                        names = groupInfo2.getName();
                        ZTreeParams z4 = new ZTreeParams();
                        z4.setName(names);
                        z4.setId(String.valueOf(gid));
                        z4.setpId(String.valueOf(pid));
                        zTreeParamsList.add(z4);
                    }
                }
            }
        }
        for (int i = 0; i < zTreeParamsList.size() - 1; i++) {
            for (int j = zTreeParamsList.size() - 1; j > i; j--) {
                if (zTreeParamsList.get(j).getId().equals(zTreeParamsList.get(i).getId())) {
                    zTreeParamsList.remove(j);
                }
            }
        }
        Gson gson = new Gson();
        return gson.toJson(zTreeParamsList);
    }

    //加载平台机构树，平台机构只有一级，因此可一次性加载
    @RequestMapping(value = "/updownTree", method = RequestMethod.GET)
    public String getUpDownTree() {
        //获取除本级平台外的所有平台信息
        List<UpDown> upDownList = this.upDownService.list2();
        List<ZTreeParams> zTreeParamsList = new ArrayList<>();
        for (int i = 0; i < upDownList.size(); i++) {
            ZTreeParams zTreeParams = new ZTreeParams();
            zTreeParams.setId(String.valueOf(upDownList.get(i).getPlatformId()));
            zTreeParams.setName(upDownList.get(i).getPlatformName());
            zTreeParams.setIcon("/img/planform.jpg");
            zTreeParamsList.add(zTreeParams);
        }
        Gson g = new Gson();
        return g.toJson(zTreeParamsList);
    }

    //右键摄像机功能
    @RequestMapping(value = "/getCameraRightOne", method = RequestMethod.POST)
    public String getCameraRightOne(@RequestBody String id) {
        Camera1 camera1 = this.orgTreeService.getCameraRightOne(id);

        //如果是IPC设备，且该设备下位添加摄像机，则返回通知。
        if (camera1 == null) {
            Map<String, Object> map = new HashMap<>();
            map.put("data", "null");
            Gson gson = new Gson();
            return gson.toJson(map);
        }
        String StreamingIP = this.cameraService.queryForStreamingIP(camera1.getStreamingID());
        camera1.setStreamingIP(StreamingIP);
        Map<String, Object> map = new HashMap<>();
        map.put("data", camera1);
        Gson gson = new Gson();
        return gson.toJson(map);

    }

    //右键设备功能
    @RequestMapping(value = "/getResAttrRightOne", method = RequestMethod.POST)
    public String getResAttrRightOne(@RequestBody String id) {
        Res_Attr resAttr = this.orgTreeService.getResAttrRightOne(id);
        Map<String, Object> map = new HashMap<>();
        map.put("data", resAttr);
        Gson gson = new Gson();
        return gson.toJson(map);

    }

    //右键组功能
    @RequestMapping(value = "/getGroupRightOne", method = RequestMethod.POST)
    public String getGroupRightOne(@RequestBody String id) {
        GroupInfo groupInfo = this.orgTreeService.getGroupRightOne(id);
        Map<String, Object> map = new HashMap<>();
        map.put("data", groupInfo);
        Gson gson = new Gson();
        return gson.toJson(map);

    }

}
