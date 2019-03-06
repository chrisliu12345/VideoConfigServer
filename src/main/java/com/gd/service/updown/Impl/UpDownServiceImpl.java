package com.gd.service.updown.Impl;

import com.gd.dao.account.IAccountDao;
import com.gd.dao.account_role.IAccountRoleDao;
import com.gd.dao.account_user.IAccountUserDao;
import com.gd.dao.updown.IUpDownDao;
import com.gd.domain.account.Account;
import com.gd.domain.account_role.AccountRole;
import com.gd.domain.account_user.AccountUser;
import com.gd.domain.group.GroupInfo;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.updown.UpDown;
import com.gd.service.updown.IUpDownService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/8/30.
 */
@Service("UpdownService")
public class UpDownServiceImpl implements IUpDownService {
    public static final String CACHE_KEY = "'updownInfo'";
    public static final String DEMO_CACHE_NAME = "demo";
    @Autowired
    private IUpDownDao iUpDownDao;
@Autowired
private IAccountDao accountDao;
@Autowired
private IAccountRoleDao accountRoleDao;
@Autowired
private IAccountUserDao accountUserDao;

    @Override
    public void insert2ForObject(AccountRole accountRole1) {
        this.accountRoleDao.insert1ForObject(accountRole1);
    }

    @Override
    public List<Integer> list_platformid() {
        return this.iUpDownDao.list_platformid();
    }

    @Override
    public void deleteCameraRes(Integer id) {
        this.iUpDownDao.deleteCameraRes(id);
    }

    @Override
    public List<GroupInfo> queryForGroupInfo() {
        return this.iUpDownDao.queryForGroupInfo();
    }

    @Override
    public void deleteAccountCameraAdmin(String accountId) {
        this.iUpDownDao.deleteAccountCameraAdmin(accountId);
    }

    @Override
    public void deleteChannel() {
        this.iUpDownDao.deleteChannel();
    }

    @Override
    public UpDown queryForMyPlatFormId() {
        return this.iUpDownDao.queryForMyPlatFormId();
    }

    @Override
    public List<UpDown> list2() {
        return this.iUpDownDao.list2();
    }

    @Override
    public void deleteCameraCamera() {
        this.iUpDownDao.deleteCameraCamera();
    }

    @Override
    public List<Res_Attr> queryforResId(Integer id) {
        return this.iUpDownDao.queryforResId(id);
    }

    @Override
    public void DeletevirualOrgID(Integer id) {
        this.iUpDownDao.DeletevirualOrgID(id);
    }

    @Override
    public List<Integer> queryforvirualOrgId(Integer id) {
        return this.iUpDownDao.queryforvirualOrgId(id);
    }

    @Override
    public void insert1ForObject(AccountUser accountRole1) {
        this.accountUserDao.insertForObject(accountRole1);
    }

    @Override
    public void insertForObject(Account account) {
        this.accountDao.insertForObject(account);

    }
    @CacheEvict(value=DEMO_CACHE_NAME,key=CACHE_KEY)//清除缓存
    @Override
    public void update(UpDown upDown) {
        this.iUpDownDao.updateforObject(upDown);
    }
    @CacheEvict(value=DEMO_CACHE_NAME,key=CACHE_KEY)//清除缓存
    @Override
    public void delete(UpDown upDown) {
        this.iUpDownDao.deleteforObject(upDown);
    }

    @Override
    public List<String> list1() {
        return this.iUpDownDao.queryforObject1();
    }
    @CacheEvict(value=DEMO_CACHE_NAME,key=CACHE_KEY)//清除缓存
    @Override
    public void add(UpDown upDown) {
        this.iUpDownDao.addforObject(upDown);
    }
    @Cacheable(value=DEMO_CACHE_NAME,key=CACHE_KEY)//存入缓存
    @Override
    public List<UpDown> list(UpDown upDown) {
        return this.iUpDownDao.listforObject(upDown);
    }
}
