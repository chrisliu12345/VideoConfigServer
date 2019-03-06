package com.gd.service.group.impl;

import com.gd.dao.group.IGroupDao;
import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.group.GroupInfo;
import com.gd.service.group.IGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import java.util.List;


/**
 * Created by 郄梦岩 on 2017/10/13.
 */
@Service("groupsService")
public class GroupServiceImpl implements IGroupService {
    public static final String CACHE_KEY = "'demoInfo'";
    public static final String DEMO_CACHE_NAME = "demo";

    @Autowired
    private IGroupDao groupDao;

    @Cacheable(value = DEMO_CACHE_NAME, key = CACHE_KEY)//存入缓存
    @Override
    public List<GroupInfo> list() {
        //System.out.print("我是查询组域的信息列表，没有走缓存！");
        return this.groupDao.queryForObject();
    }

    @Override
    public List<GroupInfo> listGrouptoResAttr(TreeUseData treeUseData) {
        return this.groupDao.listGrouptoResAttr(treeUseData);
    }

    @Override
    public Integer queryforGroupId(String VirtualOrgID) {
        return this.groupDao.queryforGroupId(VirtualOrgID);
    }

    @Override
    public Integer queryforType(Integer id) {
        return this.groupDao.queryforType(id);
    }

    @Override
    public Integer queryforVirtualIdByMax(String porgid) {
        return this.groupDao.queryforVirtualIdByMax(porgid);
    }

    @Override
    public Integer queryforGroupIdByMax() {
        return this.groupDao.queryforGroupIdByMax();
    }


    @Override
    public List<GroupInfo> queryForGroupInfoList(String id) {
        return this.groupDao.queryForGroupInfoList(id);
    }

    @Override
    public List<GroupInfo> getGrouopIDandParentID(TreeUseData treeUseData) {
        return this.groupDao.getGrouopIDandParentID(treeUseData);
    }

    @Override
    public List<GroupInfo> queryForObjectZtree(TreeUseData treeUseData) {
        return this.groupDao.queryForObjectZtree(treeUseData);
    }


    @Override
    public String queryforVirtualOrgID(String id) {
        return this.groupDao.queryforVirtualOrgID(id);
    }

    @Override
    public GroupInfo listForNodes2(Integer id) {
        return this.groupDao.listForNodes2(id);
    }

    @Override
    public GroupInfo listForNodes1(Integer id) {
        return this.groupDao.listForNodes1(id);
    }

    @Override
    public List<GroupInfo> listForNodesAll(TreeUseData treeUseData) {
        return this.groupDao.listForNodesAll(treeUseData);
    }

    @Override
    public List<GroupInfo> listForNodes(TreeUseData treeUseData) {

        System.out.println("我是加载组的数据长度" + this.groupDao.listForNodes(treeUseData).size());
        return this.groupDao.listForNodes(treeUseData);
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void delete(GroupInfo groupInfo) {
        this.groupDao.deletForObject(groupInfo);
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void adds(GroupInfo groupInfo) {
        this.groupDao.addForObject(groupInfo);
    }

    @Override
    public List<Integer> list1() {
        return this.groupDao.queryForObject1();
    }


    @Override
    public List<Integer> list2() {
        return this.groupDao.queryForObject2();
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void update(GroupInfo groupInfo) {
        this.groupDao.updateForObject(groupInfo);
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void add(GroupInfo groupInfo) {
        this.groupDao.addForObject(groupInfo);
    }
}
