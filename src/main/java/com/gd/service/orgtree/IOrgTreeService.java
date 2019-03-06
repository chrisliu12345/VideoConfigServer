package com.gd.service.orgtree;


import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.camera.Camera1;
import com.gd.domain.group.GroupInfo;
import com.gd.domain.res_attr.Res_Attr;

import java.util.List;
import java.util.Map;

public interface IOrgTreeService {
    int insert(Map<String, String> map);

    List<Map<String, String>> queryForList(Map<String, String> map);

    int delete(String id);

    String queryForCivilCode(String ss);

    String queryForParentID(String parentid);

    Res_Attr queryResAttrForParentID(String parentid);

    List<Res_Attr> queryCameraForParentID(String deviceid);

    Camera1 getCameraRightOne(String id);

    Res_Attr getResAttrRightOne(String id);

    GroupInfo getGroupRightOne(String id);

    List<Account_Camera> queryForAccount(String account);

    List<Res_Attr> queryResAttrObjectZtree(TreeUseData treeUseData);

}
