package com.gd.dao.orgtree;


import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.camera.Camera1;
import com.gd.domain.group.GroupInfo;
import com.gd.domain.res_attr.Res_Attr;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

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
@Repository("orgTreeDao")
public interface IOrgTreeDao {
    @Insert("<script>INSERT INTO sys_orgtree " +
            "(ID, ORGID, CHILDRENID) VALUES " +
            "  (#{id},#{orgId},#{childrenId})</script>")
    int insert(Map<String, String> map);


    @Select("<script>SELECT  * FROM sys_orgtree WHERE 1=1\n" +
            "<if test=\"id!=null and id!=''\">\n" +
            "AND ID=#{id}\n" +
            "</if>\n" +
            "<if test=\"orgId!=null and orgId!=''\">\n" +
            "AND ORGID=#{orgId}\n" +
            "</if>\n" +
            "<if test=\"childrenId!=null and childrenId!=''\">\n" +
            "AND CHILDRENID=#{childrenId}\n" +
            "</if>\n" +
            "</script>")
    List<Map<String, String>> queryForList(Map<String, String> map);

    //删除关联，因为删除的是没有儿子的节点
    @Delete("<script>DELETE FROM sys_orgtree WHERE CHILDRENID=#{id}</script>")
    int delete(String id);

    @Select("SELECT GroupID FROM tbl_group WHERE VirtualOrgID=#{ss}")
    String queryForCivilCode(String ss);

    @Select("SELECT ResID FROM tbl_res_attr WHERE DeviceID=#{parentid}")
    String queryForParentID(String parentid);

    @Select("SELECT * FROM tbl_res_attr WHERE DeviceID=#{parentid}")
    Res_Attr queryResAttrForParentID(String parentid);

    @Select("SELECT * FROM tbl_camera WHERE ResID=#{id}")
    Camera1 getCameraRightOne(String id);

    @Select("<script>SELECT * FROM tbl_res_attr WHERE ResID=#{id}</script>")
    Res_Attr getResAttrRightOne(String id);
    @Select("<script>SELECT * FROM tbl_group WHERE GroupID=#{id}</script>")
    GroupInfo getGroupRightOne(String id);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE ParentID=#{deviceid} and ResType='131' and ParentID!=DeviceID</script>")
    List<Res_Attr> queryCameraForParentID(String deviceid);
    @Select("<script>SELECT * FROM tbl_account_camera WHERE AccountName=#{account}</script>")
    List<Account_Camera> queryForAccount(String account);

    @Select("<script>SELECT * FROM tbl_res_attr where 1=1 " +
            "<if test=\"grouporcameraid!=8185 \">\n" +
            " and ResID in (" +
            "select GroupOrCameraId from tbl_account_camera where AccountName=#{accountName} and Type='CAMERA'" +
            " )" +
            "</if>\n" +
            "order by ResID DESC</script>")
    List<Res_Attr> queryResAttrObjectZtree(TreeUseData treeUseData);
}
