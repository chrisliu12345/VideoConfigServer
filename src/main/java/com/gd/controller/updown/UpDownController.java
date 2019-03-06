package com.gd.controller.updown;

import com.gd.controller.common.Encrypt;
import com.gd.dao.account_camera.IAccountCameraDao;
import com.gd.dao.account_role.IAccountRoleDao;
import com.gd.domain.account.Account;
import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.account_role.AccountRole;
import com.gd.domain.account_user.AccountUser;

import com.gd.domain.group.GroupInfo;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.updown.UpDown;
import com.gd.service.account_camera.IAccountCameraService;
import com.gd.service.updown.IUpDownService;
import com.gd.util.MakeFixLenthStringUtils;
import com.gd.util.TimeUtils;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * Created by 郄梦岩 on 2017/8/30.
 */
@RequestMapping("/updown")
@RestController
public class UpDownController {

    @Autowired
    private IUpDownService iUpDownService;

    @Autowired
    private IAccountCameraService accountCameraService;
    //获取平台列表
    @RequestMapping(method = RequestMethod.GET)
    public String ss(UpDown upDown) {

        List<UpDown> appList = new ArrayList<>();
        Map<String, Object> resultMap = new HashMap<>();
        appList = this.iUpDownService.list(upDown);
        for(UpDown upDown1: appList){
            if(upDown1.getConnectState().equals(0)){
                upDown1.setTypeName("不对接");
            }
            if(upDown1.getConnectState().equals(1)){
                upDown1.setTypeName("上级");
            }
            if(upDown1.getConnectState().equals(2)){
                upDown1.setTypeName("下级");
            }
        }
        resultMap.put("code", "0000");
        resultMap.put("data", appList);

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    //添加平台
    @RequestMapping(method = RequestMethod.POST)
    public String add(@RequestBody Map<String, Object> paramMap) {

        UpDown so = new UpDown();
        // so.setPlatformId(Integer.parseInt( paramMap.get("PlatformId").toString()));

        if (paramMap.get("PlatformName") == null || paramMap.get("PlatformName").toString().equals("")) {
            so.setPlatformName("null");
        } else {
            so.setPlatformName((String) paramMap.get("PlatformName"));
        }
        if (paramMap.get("IPAddress") == null || paramMap.get("IPAddress").toString().equals("")) {
            so.setIPAddress("null");
        } else {
            so.setIPAddress((String) paramMap.get("IPAddress"));
        }
        if (paramMap.get("PlatformPort") == null || paramMap.get("PlatformPort").toString().equals("")) {
        } else {
            so.setPlatformPort(Integer.parseInt(paramMap.get("PlatformPort").toString()));
        }
        if (paramMap.get("ProtocolType") == null || paramMap.get("ProtocolType").toString().equals("")) {
        } else {
            so.setProtocolType(paramMap.get("ProtocolType").toString());
        }

        if (paramMap.get("SipID") == null || paramMap.get("SipID").toString().equals("")) {
        } else {
            so.setSipID((String) paramMap.get("SipID"));
        }
        if (paramMap.get("SipDomain") == null || paramMap.get("SipDomain").toString().equals("")) {
            String sipid=(String) paramMap.get("SipID");
            so.setSipDomain(sipid.substring(0,10));
        } else {
            so.setSipDomain((String) paramMap.get("SipDomain"));
        }
        if (paramMap.get("UpUsrName") == null || paramMap.get("UpUsrName").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("1")){
                so.setUpUsrName((String) paramMap.get("SipID"));
            }else{
            }
        } else {
            so.setUpUsrName((String) paramMap.get("UpUsrName"));
        }
        if (paramMap.get("UpPassword") == null || paramMap.get("UpPassword").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("1")) {
                so.setUpPassword("12345678");
            }else{
            }
        } else {
            /*Encrypt encrypt = new Encrypt();
            encrypt.setKey("123456");
            String test1 = encrypt.setEncString(paramMap.get("UpPassword").toString());
            //System.out.println("这是加密后的密文"+test1);
            String test2 = encrypt.setDesString(test1);*/
            //System.out.println("这是解密后的明文"+test2);
            so.setUpPassword(paramMap.get("UpPassword").toString());
        }
        if (paramMap.get("UpRealm") == null || paramMap.get("UpRealm").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("1")) {
                String sipid = (String) paramMap.get("SipID");
                so.setUpRealm(sipid.substring(0, 10));
            }else{

            }
        } else {
            so.setUpRealm((String) paramMap.get("UpRealm"));
        }
        if (paramMap.get("DownUsrName") == null || paramMap.get("DownUsrName").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("2")) {
                so.setDownUsrName((String) paramMap.get("SipID"));
            }else{

            }
        } else {
            so.setDownUsrName((String) paramMap.get("DownUsrName"));
        }
        if (paramMap.get("DownPassword") == null || paramMap.get("DownPassword").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("2")) {
                so.setDownPassword("12345678");
            }else{

            }
        } else {
           /* Encrypt encrypt = new Encrypt();
            encrypt.setKey("123456");
            String test3 = encrypt.setEncString(paramMap.get("DownPassword").toString());
            //System.out.println("这是加密后的密文"+test1);
            String test2 = encrypt.setDesString(test3);*/
            //System.out.println("这是解密后的明文"+test2);
            so.setDownPassword(paramMap.get("DownPassword").toString());
        }
        if (paramMap.get("DownRealm") == null || paramMap.get("DownRealm").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("2")) {
                String sipid = (String) paramMap.get("SipID");
                so.setDownRealm(sipid.substring(0, 10));
            }else{

            }
        } else {
            so.setDownRealm((String) paramMap.get("DownRealm"));
        }
        if (paramMap.get("SignalTransportType") == null || paramMap.get("SignalTransportType").toString().equals("")) {
            so.setSignalTransportType(0);
        } else {
            so.setSignalTransportType(Integer.parseInt(paramMap.get("SignalTransportType").toString()));
        }
        if (paramMap.get("StreamTransportType") == null || paramMap.get("StreamTransportType").toString().equals("")) {
            so.setStreamTransportType(0);
        } else {
            so.setStreamTransportType(Integer.parseInt(paramMap.get("StreamTransportType").toString()));
        }
        if (paramMap.get("UsrID") == null || paramMap.get("UsrID").toString().equals("")) {
        } else {
            so.setUsrID(Integer.parseInt(paramMap.get("UsrID").toString()));
        }
        if (paramMap.get("Status") == null || paramMap.get("Status").toString().equals("")) {
        } else {
            so.setStatus((String) paramMap.get("Status"));
        }
        if (paramMap.get("ConnectState") == null || paramMap.get("ConnectState").toString().equals("")) {
        } else {
            so.setConnectState(Integer.parseInt(paramMap.get("ConnectState").toString()));
        }
        if (paramMap.get("SipServiceID") == null || paramMap.get("SipServiceID").toString().equals("")) {
            so.setSipServiceID(4);
        } else {
            so.setSipServiceID(Integer.parseInt(paramMap.get("SipServiceID").toString()));
        }
        if (paramMap.get("SubScribeInfo") == null || paramMap.get("SubScribeInfo").toString().equals("")) {
        } else {
            so.setSubScribeInfo(Integer.parseInt(paramMap.get("SubScribeInfo").toString()));
        }
        if (paramMap.get("ExtStreamingIP") == null || paramMap.get("ExtStreamingIP").toString().equals("")) {
        } else {
            so.setExtStreamingIP(paramMap.get("SubScribeInfo").toString());
        }
        if (paramMap.get("StreamingID") == null || paramMap.get("StreamingID").toString().equals("")) {
            so.setStreamingID(0);
        } else {
            so.setStreamingID(Integer.parseInt(paramMap.get("StreamingID").toString()));
        }
        if (paramMap.get("GbVersion") == null || paramMap.get("GbVersion").toString().equals("")) {
        } else {
            so.setGbVersion(paramMap.get("GbVersion").toString());
        }
        this.iUpDownService.add(so);


    /*    //创建平台用户名和密码时，为它创建账户
        Account account = new Account();

        if (paramMap.get("UpUsrName") == null || paramMap.get("UpUsrName").toString().equals("")) {
        } else {
            account.setUsername((String) paramMap.get("UpUsrName"));
            account.setCommunicationId((String) paramMap.get("UpUsrName"));
        }
        if (paramMap.get("UpPassword") == null || paramMap.get("UpPassword").toString().equals("")) {
        } else {
            String randomSalt = MakeFixLenthStringUtils.getFixLenthString(6);
            String currPassWord = (String) paramMap.get("UpPassword");
            account.setSalt(randomSalt);
            String usePassWord = new Md5PasswordEncoder().encodePassword(currPassWord, randomSalt);
            account.setPassword(usePassWord);
        }
        if (paramMap.get("DownUsrName") == null || paramMap.get("DownUsrName").toString().equals("")) {
        } else {
            account.setUsername((String) paramMap.get("DownUsrName"));
            account.setCommunicationId((String) paramMap.get("DownUsrName"));
        }
        if (paramMap.get("DownPassword") == null || paramMap.get("DownPassword").toString().equals("")) {
        } else {
            String randomSalt1 = MakeFixLenthStringUtils.getFixLenthString(6);
            String currPassWord1 = (String) paramMap.get("DownPassword");
            account.setSalt(randomSalt1);
            String usePassWord1 = new Md5PasswordEncoder().encodePassword(currPassWord1, randomSalt1);
            account.setPassword(usePassWord1);
        }

        account.setAppId((String) paramMap.get("UpPassword"));
        account.setIfuse("y");
        account.setToken("1");
        account.setOrderNum("0");
        account.setCreateTime(TimeUtils.getCurrentTime());
        account.setId(UUID.randomUUID().toString());
        account.setUpdateTime(TimeUtils.getCurrentTime());
        //添加账户表
        this.iUpDownService.insertForObject(account);
        //添加账户关联用户表
        AccountUser accountUser = new AccountUser();
        accountUser.setId(UUID.randomUUID().toString());
        accountUser.setAccountId(account.getId());
        accountUser.setUserId("u1");
        this.iUpDownService.insert1ForObject(accountUser);
        //添加账户关联角色表
        AccountRole accountRole = new AccountRole();
        accountRole.setAccountId(account.getId());
        accountRole.setId(UUID.randomUUID().toString());
        accountRole.setRoleId("r1");
        this.iUpDownService.insert2ForObject(accountRole);*/
        //添加账户关联摄像机
       /* List<Integer> cameras=(List<Integer>)paramMap.get("selectCamera");
        for(int i=0;i<cameras.size();i++){
            Account_Camera account_camera=new Account_Camera();
            account_camera.setAccountid(account.getId());
            account_camera.setCameraid(cameras.get(i));
            this.accountCameraService.add(account_camera);
        }*/
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") int id) {
        UpDown ee = new UpDown();
        ee.setPlatformId(id);
        this.iUpDownService.delete(ee);
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    @RequestMapping(value = "/delete_ALL", method = RequestMethod.POST)
    public void delete_change(@RequestBody List<Integer> kind) {

        for (int i = 0; i < kind.size(); i++) {
            UpDown upDown = new UpDown();
            upDown.setPlatformId(kind.get(i));
            this.iUpDownService.delete(upDown);
        }
        System.out.println("删除完成");
    }

    @RequestMapping(value = "/updateUpDown", method = RequestMethod.POST)
    public String updateUpDown(@RequestBody Map<String, Object> paramMap) {
        UpDown so = new UpDown();
        so.setPlatformId(Integer.parseInt(paramMap.get("PlatformId").toString() ));
        if (paramMap.get("PlatformName") == null || paramMap.get("PlatformName").toString().equals("")) {
            so.setPlatformName("null");
        } else {
            so.setPlatformName((String) paramMap.get("PlatformName"));
        }
        if (paramMap.get("IPAddress") == null || paramMap.get("IPAddress").toString().equals("")) {
            so.setIPAddress("null");
        } else {
            so.setIPAddress((String) paramMap.get("IPAddress"));
        }
        if (paramMap.get("PlatformPort") == null || paramMap.get("PlatformPort").toString().equals("")) {
        } else {
            so.setPlatformPort(Integer.parseInt(paramMap.get("PlatformPort").toString()));
        }
        if (paramMap.get("ProtocolType") == null || paramMap.get("ProtocolType").toString().equals("")) {
        } else {
            so.setProtocolType(paramMap.get("ProtocolType").toString());
        }

        if (paramMap.get("SipID") == null || paramMap.get("SipID").toString().equals("")) {
        } else {
            so.setSipID((String) paramMap.get("SipID"));
        }
        if (paramMap.get("SipDomain") == null || paramMap.get("SipDomain").toString().equals("")) {
            String sipid=(String) paramMap.get("SipID");
            so.setSipDomain(sipid.substring(0,10));
        } else {
            so.setSipDomain((String) paramMap.get("SipDomain"));
        }
        if (paramMap.get("UpUsrName") == null || paramMap.get("UpUsrName").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("1")){
                so.setUpUsrName((String) paramMap.get("SipID"));
            }else{
            }
        } else {
            so.setUpUsrName((String) paramMap.get("UpUsrName"));
        }
        if (paramMap.get("UpPassword") == null || paramMap.get("UpPassword").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("1")) {
                so.setUpPassword("12345678");
            }else{
            }
        } else {
            /*Encrypt encrypt = new Encrypt();
            encrypt.setKey("123456");
            String test1 = encrypt.setEncString(paramMap.get("UpPassword").toString());
            //System.out.println("这是加密后的密文"+test1);
            String test2 = encrypt.setDesString(test1);*/
            //System.out.println("这是解密后的明文"+test2);
            so.setUpPassword(paramMap.get("UpPassword").toString());
        }
        if (paramMap.get("UpRealm") == null || paramMap.get("UpRealm").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("1")) {
                String sipid = (String) paramMap.get("SipID");
                so.setUpRealm(sipid.substring(0, 10));
            }else{

            }
        } else {
            so.setUpRealm((String) paramMap.get("UpRealm"));
        }
        if (paramMap.get("DownUsrName") == null || paramMap.get("DownUsrName").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("2")) {
                so.setDownUsrName((String) paramMap.get("SipID"));
            }else{

            }
        } else {
            so.setDownUsrName((String) paramMap.get("DownUsrName"));
        }
        if (paramMap.get("DownPassword") == null || paramMap.get("DownPassword").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("2")) {
                so.setDownPassword("12345678");
            }else{

            }
        } else {
           /* Encrypt encrypt = new Encrypt();
            encrypt.setKey("123456");
            String test3 = encrypt.setEncString(paramMap.get("DownPassword").toString());
            //System.out.println("这是加密后的密文"+test1);
            String test2 = encrypt.setDesString(test3);*/
            //System.out.println("这是解密后的明文"+test2);
            so.setDownPassword(paramMap.get("DownPassword").toString());
        }
        if (paramMap.get("DownRealm") == null || paramMap.get("DownRealm").toString().equals("")) {
            if(paramMap.get("ConnectState").toString().equals("2")) {
                String sipid = (String) paramMap.get("SipID");
                so.setDownRealm(sipid.substring(0, 10));
            }else{

            }
        } else {
            so.setDownRealm((String) paramMap.get("DownRealm"));
        }
        if (paramMap.get("SignalTransportType") == null || paramMap.get("SignalTransportType").toString().equals("")) {
            so.setSignalTransportType(0);
        } else {
            so.setSignalTransportType(Integer.parseInt(paramMap.get("SignalTransportType").toString()));
        }
        if (paramMap.get("StreamTransportType") == null || paramMap.get("StreamTransportType").toString().equals("")) {
            so.setStreamTransportType(0);
        } else {
            so.setStreamTransportType(Integer.parseInt(paramMap.get("StreamTransportType").toString()));
        }
        if (paramMap.get("UsrID") == null || paramMap.get("UsrID").toString().equals("")) {
        } else {
            so.setUsrID(Integer.parseInt(paramMap.get("UsrID").toString()));
        }
        if (paramMap.get("Status") == null || paramMap.get("Status").toString().equals("")) {
        } else {
            so.setStatus((String) paramMap.get("Status"));
        }
        if (paramMap.get("ConnectState") == null || paramMap.get("ConnectState").toString().equals("")) {
        } else {
            so.setConnectState(Integer.parseInt(paramMap.get("ConnectState").toString()));
        }
        if (paramMap.get("SipServiceID") == null || paramMap.get("SipServiceID").toString().equals("")) {
            so.setSipServiceID(4);
        } else {
            so.setSipServiceID(Integer.parseInt(paramMap.get("SipServiceID").toString()));
        }
        if (paramMap.get("SubScribeInfo") == null || paramMap.get("SubScribeInfo").toString().equals("")) {
        } else {
            so.setSubScribeInfo(Integer.parseInt(paramMap.get("SubScribeInfo").toString()));
        }
        if (paramMap.get("ExtStreamingIP") == null || paramMap.get("ExtStreamingIP").toString().equals("")) {
        } else {
            so.setExtStreamingIP(paramMap.get("ExtStreamingIP").toString());
        }
        if (paramMap.get("StreamingID") == null || paramMap.get("StreamingID").toString().equals("")) {
            so.setStreamingID(0);
        } else {
            so.setStreamingID(Integer.parseInt(paramMap.get("StreamingID").toString()));
        }
        if (paramMap.get("GbVersion") == null || paramMap.get("GbVersion").toString().equals("")) {
        } else {
            so.setGbVersion(paramMap.get("GbVersion").toString());
        }
        this.iUpDownService.update(so);

        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", "success");

        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    @RequestMapping(value = "/ProtocolType", method = RequestMethod.GET)
    public String getProtocolType() {
        List<String> list = new ArrayList<>();
        list = this.iUpDownService.list1();

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", "0000");
        resultMap.put("data", list);
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    @RequestMapping(value = "/clear1", method = RequestMethod.POST)
    public String getclear1(@RequestBody List<Integer> ids) {

                for(int j=0;j<ids.size();j++) {
                    //查询virualOrgId对应的设备和摄像机的RESID
                    //删除resattr表中的数据
                    this.iUpDownService.deleteCameraRes(ids.get(j));
                }
                //删除摄像机表数据
                    this.iUpDownService.deleteCameraCamera();
                //删除channel表中的数据
                    this.iUpDownService.deleteChannel();

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", "0000");
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    @RequestMapping(value = "/MyPlatFormId", method = RequestMethod.GET)
    public String getMyPlatFormId() {
        UpDown upDown=this.iUpDownService.queryForMyPlatFormId();
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("data", upDown);
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    @RequestMapping(value = "/reflashSource", method = RequestMethod.POST)
    public String getReflashSource(@RequestBody Map<String,String> map) {
        System.out.println("获取到:"+map.get("accountId"));
        System.out.println("获取到:"+map.get("accountName"));
        //删除account——camera表中对应权限的所有内容。
        this.iUpDownService.deleteAccountCameraAdmin(map.get("accountId"));
        //查询出tbl_Group表中type=1，groupID与parentiID相等的数据和typpe=2的数据
        List<GroupInfo> groupInfoList=this.iUpDownService.queryForGroupInfo();
        for(int i=0;i<groupInfoList.size();i++){
            Account_Camera account_camera=new Account_Camera();
            account_camera.setAccountId(map.get("accountId"));
            account_camera.setAccountName(map.get("accountName"));
            account_camera.setType("GROUP");
            account_camera.setGroupOrCameraId(groupInfoList.get(i).getGroupID());
            account_camera.setGroupOrCameraName(groupInfoList.get(i).getName());
            this.accountCameraService.addGroup(account_camera);
        }
        return "OK";
    }
}
