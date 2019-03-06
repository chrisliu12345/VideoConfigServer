package com.gd.dao.account_camera;

import com.gd.domain.account_camera.Account_Camera;
import com.gd.domain.camera.Camera1;
import com.gd.domain.group.GroupInfo;
import javafx.scene.Camera;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/11/16.
 */
@Repository("accountCameraDao")
public interface IAccountCameraDao {
    @Insert("<script> INSERT INTO tbl_account_camera (accountid,cameraid) VALUES (#{accountid},#{cameraid})</script>")
   void add(Account_Camera account_camera);
    @Insert("<script> INSERT INTO tbl_account_camera (AccountId,AccountName,Type,GroupOrCameraName,GroupOrCameraId) VALUES (#{AccountId}" +
            ",#{AccountName},#{Type},#{GroupOrCameraName},#{GroupOrCameraId})</script>")
    void addGroup(Account_Camera account_camera);
    @Delete("<script>DELETE FROM tbl_account_camera WHERE AccountId=#{AccountId}</script>")
    void delete(Account_Camera account_camera);
    @Select("<script>SELECT * FROM tbl_camera WHERE ResID IN (SELECT cameraid FROM tbl_account_camera WHERE accountid=#{accountid})</script>")
    List<Camera1> listForId(Account_Camera account_camera);
    @Select("<script>SELECT * FROM tbl_group WHERE GroupID=ParentID</script>")
    List<GroupInfo> queryForMaxGroup();
}
