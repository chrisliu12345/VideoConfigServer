package com.gd.service.account.impl;

import com.gd.dao.account.IAccountDao;
import com.gd.domain.account.Account;
import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.authority.Authority;
import com.gd.domain.base.BaseModel;

import com.gd.domain.place.Account_Place;
import com.gd.domain.place.Place;
import com.gd.domain.role.Role;
import com.gd.domain.userinfo.UserInfo;
import com.gd.service.account.IAccountService;
import com.gd.domain.account_role.AccountRole;
import com.gd.util.MakeFixLenthStringUtils;
import com.gd.util.TimeUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2017/1/12.
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
@Service("accountService")
public class AccountServiceImpl implements IAccountService {
    @Autowired
    private IAccountDao accountDao;
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    public List<Account> queryForObject(BaseModel baseModel) {
        return this.accountDao.queryForObject(baseModel);
    }

    @Override
    public List<Account> queryForAllObject1(Account account) {
        return this.accountDao.queryForAllObject1(account);
    }

    @Override
    public List<Account> queryForAllObject(BaseModel baseModel) {
        return this.accountDao.queryForAllObject(baseModel);
    }

    @Override
    public void updateForPassword(Account account) {
        this.accountDao.updateForPassword(account);
    }

    @Override
    public void updateForPasswordByName(Account account){
        this.accountDao.updateForPasswordByName(account);
    }

    @Override
    public void insertForAccountPlace(Account_Place account_place) {
        this.accountDao.insertForAccountPlace(account_place);
    }
    @Override
    public Account queryForAccountToPassword(Account account) {
        return this.accountDao.queryForAccountToPassword(account);
    }
    @Override
    public void deletForAccountPlace(String accountid) {
        this.accountDao.deletForAccountPlace(accountid);
    }

    @Override
    public List<Place> queryForAccountPlace(String id) {
        return this.accountDao.queryForAccountPlace(id);
    }

    @Override
    public void addForAccountCamera(Account_Camera account_camera) {
        this.accountDao.addForAccountCamera(account_camera);
    }

    @Override
    public int checkAccountName(Account account) {
        return this.accountDao.checkAccountName(account);
    }

    @Override
    @Cacheable(value = "authorities")
    public List<Authority> queryForAuthorities(BaseModel baseModel) {
        return this.accountDao.queryForAuthorities(baseModel);
    }
    //根据账户id查询用户信息
    @Override
    public List<UserInfo> queryForUserInfoByAccount(BaseModel baseModel) {
        return this.accountDao.queryForUserInfoByAccount(baseModel);
    }

    //新增账户
    @Override
    public int insertForObject(BaseModel baseModel) {
        int flag = 0;
        Account account = (Account) baseModel;
        account.setIfuse("Y");
        account.setCreateTime(TimeUtils.getCurrentTime());
        account.setUpdateTime(TimeUtils.getCurrentTime());
        //获取长度为6的随机字符串
        String randomSalt = MakeFixLenthStringUtils.getFixLenthString(6);
        account.setSalt(randomSalt);
        String currPassWord = account.getPassword();
        //设置盐加密密码
        String usePassWord =new Md5PasswordEncoder().encodePassword(currPassWord,randomSalt);
        account.setPassword(usePassWord);

        try {
            flag = this.accountDao.insertForObject(account);
        }catch (Exception e){
            flag = 0;
        }
        return flag;
    }

    @Override
    public int deleteForObject(BaseModel baseModel) {
        return this.accountDao.deleteForObject(baseModel);
    }

    @Override
    public List<AccountRole> queryForAccountRole(String id) {
        return this.accountDao.queryForAccountRole(id);
    }

    @Override
    public List<Role> queryForRole(String id) {
        return this.accountDao.queryForRole(id);
    }

    @Override
    public void updateForAccountRole(AccountRole accountRole) {
        this.accountDao.update1ForRole(accountRole);
    }

    @Override
    public List<Role> queryNameForRole(BaseModel baseModel) {
        return this.accountDao.queryNameForRole(baseModel);
    }

    @Override
    public void updateForRole(BaseModel baseModel) {

        this.accountDao.updateForRole(baseModel);
    }

    @Override
    public int  updateForObject(Account account) {
        String randomSalt1 = MakeFixLenthStringUtils.getFixLenthString(6);
        account.setSalt(randomSalt1);
        String currPassWord1 = account.getPassword();
        //设置盐加密密码
        String usePassWord =new Md5PasswordEncoder().encodePassword(currPassWord1,randomSalt1);
        account.setPassword(usePassWord);
       return  this.accountDao.update1ForObject(account);

    }

    @Override
    public int updateForObject(BaseModel baseModel) {
        return this.accountDao.updateForObject(baseModel);
    }
}
