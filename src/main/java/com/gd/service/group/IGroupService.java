package com.gd.service.group;

import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.group.GroupInfo;
import io.swagger.models.auth.In;


import java.util.List;

/**
 * Created by 郄梦岩 on 2017/10/13.
 */
public interface IGroupService {
    List<GroupInfo> list();

    List<GroupInfo> listGrouptoResAttr(TreeUseData treeUseData);

    List<GroupInfo> queryForObjectZtree(TreeUseData treeUseData);

    List<GroupInfo> listForNodes(TreeUseData treeUseData);

    List<GroupInfo> listForNodesAll(TreeUseData treeUseData);

    void add(GroupInfo groupInfo);

    void update(GroupInfo groupInfo);

    void delete(GroupInfo groupInfo);

    void adds(GroupInfo groupInfo);

    List<Integer> list1();

    List<Integer> list2();

    GroupInfo listForNodes1(Integer id);

    GroupInfo listForNodes2(Integer id);

    String queryforVirtualOrgID(String id);

    List<GroupInfo> queryForGroupInfoList(String id);

    List<GroupInfo> getGrouopIDandParentID(TreeUseData treeUseData);

    Integer queryforGroupId(String VirtualOrgID);

    Integer queryforGroupIdByMax();

    Integer queryforVirtualIdByMax(String porgid);

    Integer queryforType(Integer id);




}
