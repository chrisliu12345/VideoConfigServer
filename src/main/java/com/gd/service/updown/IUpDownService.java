package com.gd.service.updown;

import com.gd.domain.account.Account;
import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.account_role.AccountRole;
import com.gd.domain.account_user.AccountUser;
import com.gd.domain.group.GroupInfo;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.updown.UpDown;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/8/30.
 */
public interface IUpDownService {
    List<UpDown> list(UpDown upDown);
    List<UpDown> list2();
    List<String> list1();
    void add(UpDown upDown);
    void delete(UpDown upDown);
    void update(UpDown upDown);
    void insertForObject(Account account);
    void insert1ForObject( AccountUser accountUser1);
    void insert2ForObject( AccountRole accountRole1);
    List<Integer> list_platformid();
    void DeletevirualOrgID(Integer id);
    List<Integer> queryforvirualOrgId(Integer id);
    List<Res_Attr> queryforResId(Integer id);
    void deleteCameraRes(Integer id);
    void deleteCameraCamera();
    void deleteChannel();
    void deleteAccountCameraAdmin(String accountId);
    UpDown queryForMyPlatFormId();
    List<GroupInfo> queryForGroupInfo();


}
