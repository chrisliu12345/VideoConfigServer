package com.gd.dao.group;

import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.group.GroupInfo;


import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/10/13.
 */
@Repository("groupDao")
public interface IGroupDao {
    @Select("<script>SELECT * FROM tbl_group order by GroupID DESC</script>")
    List<GroupInfo> queryForObject();

    @Select("<script>SELECT * FROM tbl_group where 1=1 " +
            "<if test=\"grouporcameraid!=8185 \">\n" +
            " and GroupID in (" +
            "select GroupOrCameraId from tbl_account_camera where AccountName=#{accountName} and Type='GROUP'" +
            " )" +
            "</if>\n" +
            "order by GroupID DESC</script>")
    List<GroupInfo> queryForObjectZtree(TreeUseData treeUseData);

    @Select("<script>SELECT * FROM tbl_group where 1=1  " +
            "<if test=\"grouporcameraid!=8185 \">\n" +
            "and VirtualOrgID in (" +
            "select GroupOrCameraId from tbl_account_camera where AccountName=#{accountName} and Type='GROUP'" +
            " )" +
            "</if>\n" +
            "order by GroupID DESC</script>")
    List<GroupInfo> listGrouptoResAttr(TreeUseData treeUseData);

    @Select("<script>SELECT GroupID FROM tbl_group</script>")
    List<Integer> queryForObject1();

    @Select("<script>SELECT PlatformID FROM tbl_platform</script>")
    List<Integer> queryForObject2();

    @Select("<script>SELECT * FROM tbl_group where ParentID=#{id} AND GroupID!=ParentID " +
            "<if test=\"grouporcameraid!=8185 \">\n" +
            "AND GroupID in(" +
            "select GroupOrCameraId from tbl_account_camera where AccountName=#{accountName} and Type='GROUP'" +
            ")" +
            "</if>\n" +
            "</script>")
    List<GroupInfo> listForNodes(TreeUseData treeUseData);

    @Select("<script>SELECT * FROM tbl_group where VirtualOrgID=#{id} AND 1=1</script>")
    GroupInfo listForNodes1(Integer id);

    @Select("<script>SELECT * FROM tbl_group where GroupID=#{id} AND 1=1</script>")
    GroupInfo listForNodes2(Integer id);
    @Select("<script>SELECT * FROM tbl_group where ParentID=#{id}</script>")
    List<GroupInfo> queryForGroupInfoList(String id);

    @Insert("<script>INSERT INTO tbl_group (GroupID,Type,VirtualOrgID,Name,ParentID,BusinessGroupID,ParentOrgID) VALUES " +
            "(#{GroupID},#{Type},#{VirtualOrgID},#{name},#{ParentID},#{BusinessGroupID},#{ParentOrgID})</script>")
    void addForObject(GroupInfo groupInfo);

    @Update("<script>UPDATE tbl_group SET Type=#{Type},VirtualOrgID=#{VirtualOrgID},Name=#{name},ParentID=#{ParentID}," +
            "BusinessGroupID=#{BusinessGroupID},ParentOrgID=#{ParentOrgID} WHERE GroupID=#{GroupID}</script>")
    void updateForObject(GroupInfo groupInfo);

    @Delete("<script>DELETE FROM tbl_group WHERE GroupID=#{GroupID} </script>")
    void deletForObject(GroupInfo groupInfo);

    @Select("<script>SELECT VirtualOrgID FROM tbl_group WHERE GroupID=#{id}</script>")
    String queryforVirtualOrgID(String id);

    @Select("<script>SELECT * FROM tbl_group where ParentID=#{id} AND 1=1 AND GroupID!=ParentID</script>")
    List<GroupInfo> listForNodesAll(TreeUseData treeUseData);

    @Select("<script>SELECT * FROM tbl_group where GroupID=#{id}</script>")
    List<GroupInfo> listForGroup(Integer id);
    @Select("<script> select * from tbl_account_camera where AccountName=#{accountName} and Type='GROUP' and GroupOrCameraId=#{GroupOrCameraId} " +
            "</script>")
    List<GroupInfo> getGrouopIDandParentID(TreeUseData treeUseData);
    @Select("<script>SELECT GroupID FROM tbl_group WHERE VirtualOrgID=#{VirtualOrgID}</script>")
    Integer queryforGroupId(String VirtualOrgID);

    @Select("<script>SELECT * FROM tbl_group WHERE ParentID=#{id}</script>")
    List<GroupInfo> getGroupList1(int id);

    @Select("<script>SELECT MAX(GroupID) FROM tbl_group </script>")
    Integer queryforGroupIdByMax();

    @Select("<script>SELECT MAX(VirtualOrgID) FROM tbl_group where  ParentOrgID=#{porgid}</script>")
    Integer queryforVirtualIdByMax(String porgid);

    @Select("<script>SELECT Type FROM tbl_group WHERE GroupID=#{id}</script>")
    Integer queryforType(Integer id);
}
