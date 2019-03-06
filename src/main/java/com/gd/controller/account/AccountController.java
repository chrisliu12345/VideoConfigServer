package com.gd.controller.account;

import com.gd.annoation.RequestLimit;
import com.gd.domain.account.Account;
import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.account_role.AccountRole;
import com.gd.domain.account_user.AccountUser;
import com.gd.domain.base.BaseModel;
import com.gd.domain.group.GroupInfo;
import com.gd.domain.place.Account_Place;
import com.gd.domain.place.Place;
import com.gd.domain.role.Role;
import com.gd.domain.userinfo.UserInfo;
import com.gd.service.account.IAccountService;
import com.gd.service.account_camera.IAccountCameraService;
import com.gd.service.account_role.IAccountRoleService;
import com.gd.service.account_user.IAccountUserService;
import com.gd.service.place.IPlaceService;
import com.gd.service.userinfo.IUserInfoService;
import com.gd.util.MakeFixLenthStringUtils;
import com.gd.util.TimeUtils;
import com.google.gson.Gson;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.*;

/**
 * Created by dell on 2017/1/11.
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
@Controller
@RestController
@RequestMapping("/account")

public class AccountController {
    @Autowired
    private IAccountService accountService;
    @Autowired
    private IUserInfoService userInfoService;
    @Autowired
    private IAccountUserService accountUserService;
    @Autowired
    private IAccountRoleService accountRoleService;
    @Autowired
    private IAccountCameraService accountCameraService;
    @Autowired
    private IPlaceService iPlaceService;
    @Autowired
    private IAccountCameraService iAccountCameraService;
    @GetMapping("/all")
    @RequestLimit(count = 1, limitTime = 2000)
    @CrossOrigin(origins = "*", maxAge = 360000)
    public String getAllAccounts(Principal principal, HttpServletRequest request) {
        boolean flag = validateAccount(principal);
        Map<String, Object> resultMap = new HashMap<>();
        Gson gson = new Gson();
        if (!flag) {
            resultMap.put("code", "0001");//验证失败
            resultMap.put("date", null);
            return gson.toJson(resultMap);
        }

        List<Account> accountList;

        accountList = this.accountService.queryForAllObject(new BaseModel());

        resultMap.put("code", "0000");
        resultMap.put("data", accountList);

        return gson.toJson(resultMap);
    }

    @RequestMapping(value = "/listAccount",method = RequestMethod.POST)
    @ApiOperation(value = "查询账户列表", notes = "查询账户列表", httpMethod = "GET", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiResponses(value = {
            @ApiResponse(code = 401, message = "No Privilege"),
            @ApiResponse(code = 405, message = "Invalid input")
    })
    public String queryForAccountList(@RequestBody String valiorgid) {
        List<Account> accountList = new ArrayList<>();
        Account account=new Account();
        account.setValidategroupid(valiorgid);
        accountList = this.accountService.queryForAllObject1(account);
        for(int i=0;i<accountList.size();i++){
            //查询该账户的场所权限。
            List<Place> PlaceList=this.accountService.queryForAccountPlace(accountList.get(i).getId());
            accountList.get(i).setPlace(PlaceList);
        }
        Map<String, Object> resultMap = new HashMap<>();

        resultMap.put("code", "0000");
        resultMap.put("data", accountList);
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }

    @RequestMapping(value = "/queryAccount", method = RequestMethod.POST)
    @ApiOperation(value = "查询账户", notes = "查询账户", httpMethod = "GET", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiResponses(value = {
            @ApiResponse(code = 401, message = "No Privilege"),
            @ApiResponse(code = 405, message = "Invalid input")
    })
    public String queryForAccount(@RequestBody Map<String, String> map) {
        Gson gson = new Gson();
        Map<String, Object> resultMap = new HashMap<>();
        Account queryAccount = new Account();
        if (StringUtils.isEmpty(map.get("username")) && StringUtils.isEmpty(map.get("appId")) && StringUtils.isEmpty(map.get("communicationId"))) {
            resultMap.put("code", "0000");
            resultMap.put("data", "query param can not be null");
            return gson.toJson(resultMap);
        }
        queryAccount.setUsername(map.get("username"));
        queryAccount.setAppId(map.get("appId"));
        queryAccount.setCommunicationId(map.get("communicationId"));

        List<Account> accountList = new ArrayList<>();
        accountList = this.accountService.queryForObject(queryAccount);



        resultMap.put("code", "0000");
        resultMap.put("data", accountList);
        return gson.toJson(resultMap);
    }

    @RequestMapping(method = RequestMethod.POST)
    @ApiOperation(value = "新增账户", notes = "新增账户", httpMethod = "POST", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ApiResponses(value = {
            @ApiResponse(code = 401, message = "No Privilege"),
            @ApiResponse(code = 405, message = "Invalid input")
    })
    public String add(@RequestBody Map<String, Object> map) {
        String userId = (String)map.get("userId");//用户ID
        String username = (String)map.get("username");  //账户名
        String password = (String)map.get("password");//账户密码
        String token = (String)map.get("token");  //token
        String appId = (String)map.get("password");  //账户真实密码
        String communicationId =(String) map.get("communicationId");

         List<Integer> selectPlace=(List)map.get("selectPlace");//为账户分配场所*/
        List<String> selectCamera=(List)map.get("selectGroupOrCamera");//为账户分配摄像机
        System.out.println("我是这个Place的值"+selectPlace);
        //多个roleId，用逗号分隔
        String roleIds =(String) map.get("roleIds");//角色ID
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        account.setToken(token);
        account.setAppId(appId);
        account.setCommunicationId(communicationId);
        Map<String, Object> resultMap = new HashMap<>();
        Gson gson = new Gson();
        //查询账户名是否重复
        int num=this.accountService.checkAccountName(account);
        if(num>0){
            resultMap.put("code", "0005");
            resultMap.put("data", "账户名已注册，请修改");
            return gson.toJson(resultMap);
        }
        if (StringUtils.isEmpty(userId)) {
            userId="u1";
        }
        if (StringUtils.isEmpty(roleIds)) {
            roleIds="r1";
        }
        if (StringUtils.isEmpty(account.getUsername())) {
            resultMap.put("code", "0001");
            resultMap.put("data", "username can not be null");
            return gson.toJson(resultMap);
        }
        if (StringUtils.isEmpty(account.getPassword())) {
            resultMap.put("code", "0001");
            resultMap.put("data", "password can not be null");
            return gson.toJson(resultMap);
        }
        if (StringUtils.isEmpty(account.getId())) {
            account.setId(UUID.randomUUID().toString());
        }
        if (StringUtils.isEmpty(account.getCreateTime())) {
            account.setCreateTime(TimeUtils.getCurrentTime());
        }
        account.setUpdateTime(TimeUtils.getCurrentTime());
        if (StringUtils.isEmpty(account.getIfuse())) {
            account.setIfuse("y");
        }
        UserInfo queryUserInfo = new UserInfo();
        queryUserInfo.setId(userId);
        UserInfo userInfo = new UserInfo();

        List<UserInfo> userInfoList = userInfoService.queryForObject(queryUserInfo);
        if (userInfoList.size() == 0) {
            resultMap.put("code", "0001");
            resultMap.put("data", "can not find user");
            return gson.toJson(resultMap);
        }
        userInfo = userInfoList.get(0);
        AccountUser accountUser = new AccountUser();
        accountUser.setId(UUID.randomUUID().toString());
        accountUser.setUserId(userInfo.getId());
        accountUser.setAccountId(account.getId());
        List<String> roleIdsList = new ArrayList<String>();
        for (String roleId : roleIds.split(",")) {
            roleIdsList.add(roleId);
        }
        int flag = this.accountService.insertForObject(account) & this.accountUserService.insertForObject(accountUser) & this.accountRoleService.insertForObject(account.getId(), roleIdsList);
        if (flag == 1) {
            resultMap.put("code", "0000");
            resultMap.put("data", "success");
            resultMap.put("accountId",account.getId());
        } else {
            resultMap.put("code", "0001");
            resultMap.put("data", "account insert failed");
        }
        //为账户分配场所
       if(selectPlace!=null) {

            for (int i = 0; i < selectPlace.size(); i++) {
                Account_Place accountPlace=new Account_Place();
                accountPlace.setAccountId(account.getId());
                accountPlace.setAccountName(account.getUsername());
                accountPlace.setPlaceId(String.valueOf(selectPlace.get(i)));
                this.iPlaceService.add(accountPlace);
            }
        }else{
           Account_Place accountPlace=new Account_Place();
           accountPlace.setAccountId(account.getId());
           accountPlace.setAccountName(account.getUsername());
           accountPlace.setPlaceId("1");
           this.iPlaceService.add(accountPlace);
       }
        //为账户分配摄像机或组
        if(selectCamera!=null){
            for(int j=0;j<selectCamera.size();j++){
                String[] b=selectCamera.get(j).split(",");//b0表示ID，b1表示类型，b2表示名称
                if(b[1].equals("C")||b[1].equals("B")){
                    b[1]="CAMERA";
                }else{
                    b[1]="GROUP";
                }
                Account_Camera accountCamera=new Account_Camera();
                accountCamera.setAccountId(account.getId());
                accountCamera.setAccountName(account.getUsername());
                accountCamera.setGroupOrCameraId(Integer.parseInt(b[0]));
                accountCamera.setType(b[1]);
                accountCamera.setGroupOrCameraName(b[2]);
                this.accountService.addForAccountCamera(accountCamera);
            }
        }else{
            List<GroupInfo> groupInfoList=this.accountCameraService.queryForMaxGroup();
            for(int i=0;i<groupInfoList.size();i++){
                Account_Camera accountCamera = new Account_Camera();
                accountCamera.setAccountId(account.getId());
                accountCamera.setAccountName(account.getUsername());
                accountCamera.setGroupOrCameraId(groupInfoList.get(i).getGroupID());
                accountCamera.setType("GROUP");
                accountCamera.setGroupOrCameraName(groupInfoList.get(i).getName());
                this.accountService.addForAccountCamera(accountCamera);
            }
        }
        return gson.toJson(resultMap);
    }

    @RequestMapping(value = "/updateAccount", method = RequestMethod.POST)
    public void updateAccount(@RequestBody Map<String, String> map) {
        String username = map.get("username");
        String password = map.get("password");
        String UserRole = map.get("role");
        String sid = map.get("id");
        Role role = new Role();
        role.setRoleName(UserRole);
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        account.setAppId(password);
        this.accountService.updateForObject(account);
        //准备修改的账户对应的角色
        List<AccountRole> accountRoleList = this.accountService.queryForAccountRole(sid);
        List<Role> roleList = this.accountService.queryNameForRole(role);

        AccountRole accountRole = new AccountRole();
        accountRole.setId(accountRoleList.get(0).getId());
        accountRole.setRoleId(roleList.get(0).getId());
        this.accountService.updateForAccountRole(accountRole);

    }

    @RequestMapping(value = "/updateRoleForAccount", method = RequestMethod.PUT)
    @ApiOperation(value = "为账户授予角色", notes = "为账户授予角色", httpMethod = "PUT", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public String updateRoleForAccount(@RequestBody Map<String, String> map) {
        String accountId = map.get("accountId");
        String roleIds = map.get("roleIds");
        Map<String, Object> resultMap = new HashMap<>();
        Gson gson = new Gson();
        if (StringUtils.isEmpty(accountId)) {
            resultMap.put("code", "0001");
            resultMap.put("data", "accountId can not be null");
            return gson.toJson(resultMap);
        }
        if (StringUtils.isEmpty(roleIds)) {
            resultMap.put("code", "0001");
            resultMap.put("data", "roleIds can not be null");
            return gson.toJson(resultMap);
        }
        List<String> roleIdsList = new ArrayList<String>();
        for (String roleId : roleIds.split(",")) {
            roleIdsList.add(roleId);
        }
        //删除account关联并且关联account和roleIds
        int flag = this.accountRoleService.deleteForObject(accountId) & this.accountRoleService.insertForObject(accountId, roleIdsList);
        if (flag == 1) {
            resultMap.put("code", "0000");
            resultMap.put("data", "updateRoleForAccount success");
        } else {
            resultMap.put("code", "0001");
            resultMap.put("data", "updateRoleForAccount failed");
        }
        return gson.toJson(resultMap);
    }

    @RequestMapping(value = "/updatePassword", method = RequestMethod.POST)
    public String updateAccountPassword(@RequestBody Map<String,Object> pasMap) {
        System.out.println("我是更新账户id:"+pasMap.get("id")+"新账户密码："+pasMap.get("password"));
        Map<String, Object> resultMap = new HashMap<>();
        Gson gson = new Gson();
        Account account=new Account();
            account.setId(pasMap.get("id").toString());

        account.setUsername(pasMap.get("username").toString());
        String randomSalt = MakeFixLenthStringUtils.getFixLenthString(6);
       /* Account account1=this.accountService.queryForAccountToPassword(account);
        String oldpass=new Md5PasswordEncoder().encodePassword(pasMap.get("OldPassword").toString(), account1.getSalt());*/
        //修改账户密码
        if(pasMap.get("password")!=null ) {
                String currPassWord = pasMap.get("password").toString();
                account.setSalt(randomSalt);
                String usePassWord = new Md5PasswordEncoder().encodePassword(currPassWord, randomSalt);
                account.setPassword(usePassWord);
                this.accountService.updateForPassword(account);
        }
        //修改账户所属场所类型
        if(pasMap.get("place")!=null) {
            List<String> list = (List) pasMap.get("place");
            //先删除account——place表的已存在数据
            this.accountService.deletForAccountPlace(account.getId());
            for (int i = 0; i < list.size(); i++) {
               Account_Place accountPlace=new Account_Place();
               accountPlace.setAccountId(account.getId());
               accountPlace.setPlaceId(list.get(i));
               accountPlace.setAccountName(pasMap.get("username").toString());
               this.accountService.insertForAccountPlace(accountPlace);
            }
        }
        //修改摄像机权限
            //如果是全部权限，则删除原有的数据并加入一条"北京"的组ID
        if(pasMap.get("Authority")!=null && pasMap.get("Authority").toString().equals("1")){
            Account_Camera camera=new Account_Camera();
            camera.setAccountId(pasMap.get("id").toString());
            this.accountCameraService.delete(camera);
            //查询所有根组
            //加入所有根组权限
            List<GroupInfo> groupInfoList=this.accountCameraService.queryForMaxGroup();
            for(int i=0;i<groupInfoList.size();i++){
                Account_Camera accountCamera = new Account_Camera();
                accountCamera.setAccountId(account.getId());
                accountCamera.setAccountName(account.getUsername());
                accountCamera.setGroupOrCameraId(groupInfoList.get(i).getGroupID());
                accountCamera.setType("GROUP");
                accountCamera.setGroupOrCameraName(groupInfoList.get(i).getName());
                this.accountService.addForAccountCamera(accountCamera);
            }


        }else{
            //如果不是全部权限，判断用户是否已经自定义了摄像机权限
            if(pasMap.get("camera")!=null) {
                Account_Camera camera = new Account_Camera();
                camera.setAccountId(pasMap.get("id").toString());
                this.accountCameraService.delete(camera);
                List<String> list = (List) pasMap.get("camera");
                for (int j = 0; j < list.size(); j++) {
                    String[] b = list.get(j).split(",");//b0表示ID，b1表示类型，b2表示名称
                    if (b[1].equals("C") || b[1].equals("B")) {
                        b[1] = "CAMERA";
                    } else {
                        b[1] = "GROUP";
                    }
                    Account_Camera accountCamera = new Account_Camera();
                    accountCamera.setAccountId(account.getId());
                    accountCamera.setAccountName(account.getUsername());
                    accountCamera.setGroupOrCameraId(Integer.parseInt(b[0]));
                    accountCamera.setType(b[1]);
                    accountCamera.setGroupOrCameraName(b[2]);
                    this.accountService.addForAccountCamera(accountCamera);
                }
            }
        }

        return "success";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    @ApiOperation(value = "删除账户", notes = "删除账户", httpMethod = "DELETE", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "账户id", required = true, dataType = "String", paramType = "path")
    })
    public String delete(@PathVariable("id") String id) {

        //删除账户用户表信息
        AccountUser accountUser=new AccountUser();
        accountUser.setAccountId(id);
        this.accountUserService.delete(accountUser);
        //删除账户表信息
        Account account = new Account();
        account.setId(id);
        int flag = this.accountService.deleteForObject(account);
        AccountRole accountRole=new AccountRole();
        accountRole.setAccountId(id);
        //删除账户角色表信息
        this.accountRoleService.deleteForObject(id);
       /* Account_Camera account_camera=new Account_Camera();
        account_camera.setAccountid(id);
        this.accountCameraService.delete(account_camera);*/
        //删除账户对应的场所表
        Account_Place accountPlace=new Account_Place();
        accountPlace.setAccountId(id);
        this.iPlaceService.deleteForAccountId(accountPlace);
        //删除账户对应的摄像机表
        Account_Camera accountCamera=new Account_Camera();
        accountCamera.setAccountId(id);
        this.iAccountCameraService.delete(accountCamera);
        Map<String, Object> resultMap = new HashMap<>();
        if (flag == 1) {
            resultMap.put("code", "0000");
            resultMap.put("data", "delete success");
        } else {
            resultMap.put("code", "0011");
            resultMap.put("data", "account delete failed");
        }
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    //远程批量删除账户
    @RequestMapping(value = "/mutilAccount", method = RequestMethod.POST)
    public String deleteRomte(@RequestBody  Map<String,List> maps) {
        List<String> lists=(List<String>)maps.get("idList");
        for(int i=0;i<lists.size();i++){
            String id=lists.get(i);
        //删除账户用户表信息
        AccountUser accountUser=new AccountUser();
        accountUser.setAccountId(id);
        this.accountUserService.delete(accountUser);
        //删除账户表信息
        Account account = new Account();
        account.setId(id);
        int flag = this.accountService.deleteForObject(account);
        AccountRole accountRole=new AccountRole();
        accountRole.setAccountId(id);
        //删除账户角色表信息
        this.accountRoleService.deleteForObject(id);
       /* Account_Camera account_camera=new Account_Camera();
        account_camera.setAccountid(id);
        this.accountCameraService.delete(account_camera);*/
        //删除账户对应的场所表
        Account_Place accountPlace=new Account_Place();
        accountPlace.setAccountId(id);
        this.iPlaceService.deleteForAccountId(accountPlace);
        //删除账户对应的摄像机表
        Account_Camera accountCamera=new Account_Camera();
        accountCamera.setAccountId(id);
        this.iAccountCameraService.delete(accountCamera);
        }
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", "0000");
        resultMap.put("data", "delete success");
        Gson gson = new Gson();
        return gson.toJson(resultMap);
    }
    private boolean validateAccount(Principal principal) {
        String username = principal.getName();
        Account account = new Account();
        account.setUsername(username);
        List<Account> accountList = this.accountService.queryForObject(account);
        return accountList.size() >= 1;
    }

    @RequestMapping(value = "/Remote", method = RequestMethod.POST)
    @ApiOperation(value = "新增远端账户", notes = "新增远端账户", httpMethod = "POST")
    @ApiResponses(value = {
            @ApiResponse(code = 401, message = "No Privilege"),
            @ApiResponse(code = 405, message = "Invalid input")
    })
    public String addRemote(@RequestBody Map<String, Object> map) {
        String username = (String)map.get("username");  //账户名
        String password = (String)map.get("password");//账户密码
        String validategroupid = (String)map.get("validategroupid");
        String appId = (String)map.get("password");
        //多个roleId，用逗号分隔
        String roleIds ="r1";//角色ID
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        account.setAppId(appId);
        account.setCommunicationId(username);
        account.setValidategroupid(validategroupid);
        Map<String, Object> resultMap = new HashMap<>();
        Gson gson = new Gson();
        //查询账户名是否重复
        int num=this.accountService.checkAccountName(account);
        if(num>0){
            resultMap.put("code", "0005");
            resultMap.put("data", "账户名已注册，请修改");
            return gson.toJson(resultMap);
        }

        if (StringUtils.isEmpty(roleIds)) {
            resultMap.put("code", "0001");
            resultMap.put("data", "roleIds can not be null");
            return gson.toJson(resultMap);
        }
        if (StringUtils.isEmpty(account.getUsername())) {
            resultMap.put("code", "0001");
            resultMap.put("data", "username can not be null");
            return gson.toJson(resultMap);
        }
        if (StringUtils.isEmpty(account.getPassword())) {
            resultMap.put("code", "0001");
            resultMap.put("data", "password can not be null");
            return gson.toJson(resultMap);
        }
        if (StringUtils.isEmpty(account.getId())) {
            account.setId(UUID.randomUUID().toString());
        }
        if (StringUtils.isEmpty(account.getCreateTime())) {
            account.setCreateTime(TimeUtils.getCurrentTime());
        }
        account.setUpdateTime(TimeUtils.getCurrentTime());
        if (StringUtils.isEmpty(account.getIfuse())) {
            account.setIfuse("y");
        }
        UserInfo queryUserInfo = new UserInfo();
        queryUserInfo.setId("u1");
        UserInfo userInfo = new UserInfo();

        List<UserInfo> userInfoList = userInfoService.queryForObject(queryUserInfo);
        if (userInfoList.size() == 0) {
            resultMap.put("code", "0001");
            resultMap.put("data", "can not find user");
            return gson.toJson(resultMap);
        }
        userInfo = userInfoList.get(0);
        AccountUser accountUser = new AccountUser();
        accountUser.setId(UUID.randomUUID().toString());
        accountUser.setUserId(userInfo.getId());
        accountUser.setAccountId(account.getId());
        List<String> roleIdsList = new ArrayList<String>();
        for (String roleId : roleIds.split(",")) {
            roleIdsList.add(roleId);
        }
        int flag = this.accountService.insertForObject(account) & this.accountUserService.insertForObject(accountUser) & this.accountRoleService.insertForObject(account.getId(), roleIdsList);
        if (flag == 1) {
            resultMap.put("code", "0000");
            resultMap.put("data", "success");
        } else {
            resultMap.put("code", "0001");
            resultMap.put("data", "account insert failed");
        }
        List<String> selectCamera=(List)map.get("selectGroupOrCamera");
        if(selectCamera!=null){
            for(int j=0;j<selectCamera.size();j++){
                String[] b=selectCamera.get(j).split(",");//b0表示ID，b1表示类型，b2表示名称
                if(b[1].equals("C")||b[1].equals("B")){
                    b[1]="CAMERA";
                }else{
                    b[1]="GROUP";
                }
                Account_Camera accountCamera=new Account_Camera();
                accountCamera.setAccountId(account.getId());
                accountCamera.setAccountName(account.getUsername());
                accountCamera.setGroupOrCameraId(Integer.parseInt(b[0]));
                accountCamera.setType(b[1]);
                accountCamera.setGroupOrCameraName(b[2]);
                this.accountService.addForAccountCamera(accountCamera);
            }
        }else{
            List<GroupInfo> groupInfoList=this.accountCameraService.queryForMaxGroup();
            for(int i=0;i<groupInfoList.size();i++){
                Account_Camera accountCamera = new Account_Camera();
                accountCamera.setAccountId(account.getId());
                accountCamera.setAccountName(account.getUsername());
                accountCamera.setGroupOrCameraId(groupInfoList.get(i).getGroupID());
                accountCamera.setType("GROUP");
                accountCamera.setGroupOrCameraName(groupInfoList.get(i).getName());
                this.accountService.addForAccountCamera(accountCamera);
            }
        }
        return gson.toJson(resultMap);
    }
}
