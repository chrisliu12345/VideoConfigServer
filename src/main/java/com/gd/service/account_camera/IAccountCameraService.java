package com.gd.service.account_camera;

import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.camera.Camera1;
import com.gd.domain.group.GroupInfo;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/11/16.
 */
public interface IAccountCameraService {
    void add(Account_Camera account_camera);
    void delete(Account_Camera account_camera);
    List<Camera1> listForAccount(Account_Camera account_camera);
    List<GroupInfo> queryForMaxGroup();
    void addGroup(Account_Camera account_camera);
}
