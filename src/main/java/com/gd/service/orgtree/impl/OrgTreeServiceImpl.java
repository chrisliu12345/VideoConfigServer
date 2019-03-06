package com.gd.service.orgtree.impl;

import com.gd.dao.orgtree.IOrgTreeDao;

import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.camera.Camera1;
import com.gd.domain.group.GroupInfo;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.service.orgtree.IOrgTreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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
@Service("orgTreeService")
public class OrgTreeServiceImpl implements IOrgTreeService {
    @Autowired
    private IOrgTreeDao orgTreeDao;

    @Override
    public int insert(Map<String, String> map) {
        return this.orgTreeDao.insert(map);
    }

    @Override
    public List<Map<String, String>> queryForList(Map<String, String> map) {
        return this.orgTreeDao.queryForList(map);
    }

    //删除
    @Override
    public int delete(String id) {
        return orgTreeDao.delete(id);
    }

    @Override
    public String queryForCivilCode(String ss) {
        return orgTreeDao.queryForCivilCode(ss);
    }

    @Override
    public List<Res_Attr> queryResAttrObjectZtree(TreeUseData treeUseData) {
        return orgTreeDao.queryResAttrObjectZtree(treeUseData);
    }

    @Override
    public Res_Attr queryResAttrForParentID(String parentid) {
        return orgTreeDao.queryResAttrForParentID(parentid);
    }

    @Override
    public String queryForParentID(String parentid) {
        return orgTreeDao.queryForParentID(parentid);
    }

    @Override
    public Camera1 getCameraRightOne(String id) {
        return orgTreeDao.getCameraRightOne(id);
    }

    @Override
    public Res_Attr getResAttrRightOne(String id) {
        return orgTreeDao.getResAttrRightOne(id);
    }

    @Override
    public GroupInfo getGroupRightOne(String id) {
        return orgTreeDao.getGroupRightOne(id);
    }

    @Override
    public List<Res_Attr> queryCameraForParentID(String deviceid) {
        return orgTreeDao.queryCameraForParentID(deviceid);
    }
    @Override
    public List<Account_Camera> queryForAccount(String account) {
        return this.orgTreeDao.queryForAccount(account);
    }

}
