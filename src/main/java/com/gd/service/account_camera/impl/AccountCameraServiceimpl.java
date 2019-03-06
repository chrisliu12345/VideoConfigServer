package com.gd.service.account_camera.impl;

import com.gd.dao.account_camera.IAccountCameraDao;
import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.camera.Camera1;
import com.gd.domain.group.GroupInfo;
import com.gd.service.account_camera.IAccountCameraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/11/16.
 */
@Service("accountCameraService")
public class AccountCameraServiceimpl implements IAccountCameraService{
    @Autowired
    private IAccountCameraDao iAccountCameraDao;

    @Override
    public void delete(Account_Camera account_camera) {
        this.iAccountCameraDao.delete(account_camera);
    }

    @Override
    public List<Camera1> listForAccount(Account_Camera account_camera) {
        return this.iAccountCameraDao.listForId(account_camera);
    }

    @Override
    public List<GroupInfo> queryForMaxGroup() {
        return this.iAccountCameraDao.queryForMaxGroup();
    }

    @Override
    public void addGroup(Account_Camera account_camera) {
        this.iAccountCameraDao.addGroup(account_camera);
    }

    @Override
    public void add(Account_Camera account_camera) {
        this.iAccountCameraDao.add(account_camera);
    }
}
