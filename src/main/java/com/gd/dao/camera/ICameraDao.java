package com.gd.dao.camera;


import com.gd.domain.account_camera.TreeUseData;
import com.gd.domain.camera.Camera1;


import com.gd.domain.camera.Camera2;
import com.gd.domain.channel.Channel;
import com.gd.domain.place.Place;
import com.gd.domain.res_attr.Res_Attr;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/8/11 0011.
 */
@Repository("camDao")
public interface ICameraDao {
    //查询所有摄像机
    @Select("<script>SELECT A.*,B.* " +
            "FROM  tbl_camera as A inner join tbl_channel as B on A.ResID = B.CamID order by A.ResID DESC</script>")
    List<Camera2> queryForObject();
    @Select("<script>SELECT * FROM tbl_camera</script>")
    List<Camera1> listForCamera1();

    //删除所有摄像机
    @Delete("<script>DELETE  FROM tbl_camera where ResID=#{ResID}</script> ")
    void deleteObject(Camera1 camera);

    //添加摄像机
    @Insert("<script>INSERT INTO tbl_camera " +
            "( ResID,PtzType, PositionType, RoomType, UseType, SupplyLightType, DirectionType,Resolution,BusinessGroupID,DownLoadSpeed,SVCSpaceSupportMode,SVCTimeSupportMode,PtzURL,Height,PitchAngle,Azimuth,Alias,LockedUsr,StreamingID,ReplayID,GroupID,PlaceID) VALUES " +
            "(#{ResID},#{PtzType},#{PositionType},#{RoomType},#{UseType},#{SupplyLightType},#{DirectionType},#{Resolution},#{BusinessGroupID},#{DownLoadSpeed},#{SVCSpaceSupportMode},#{SVCTimeSupportMode},#{PtzURL},#{Height},#{PitchAngle},#{Azimuth},#{Alias},#{LockedUsr},#{StreamingID},#{ReplayID},#{GroupID},#{PlaceID})</script>")
    void addObject(Camera1 camera);
    //更新摄像机
    @Update("<script>UPDATE tbl_camera set PtzType=#{PtzType},PositionType=#{PositionType}," +
            "RoomType=#{RoomType},UseType=#{UseType},SupplyLightType=#{SupplyLightType},DirectionType=#{DirectionType},Resolution=#{Resolution},BusinessGroupID=#{BusinessGroupID},DownLoadSpeed=#{DownLoadSpeed}," +
            "SVCSpaceSupportMode=#{SVCSpaceSupportMode},SVCTimeSupportMode=#{SVCTimeSupportMode},PtzURL=#{PtzURL},Height=#{Height},PitchAngle=#{PitchAngle},Azimuth=#{Azimuth},Alias=#{Alias},LockedUsr=#{LockedUsr},StreamingID=#{StreamingID},ReplayID=#{ReplayID},GroupID=#{GroupID},PlaceID=#{PlaceID} where  ResID=#{ResID}</script>")
    void updateObject(Camera1 camera);

    @Select("<script>SELECT * FROM tbl_res_attr WHERE ProtocolType='CAMERA' </script>")
   List<Res_Attr> queryForCameralist();
    @Select("<script>SELECT * FROM tbl_res_attr WHERE ((CivilCode=#{vid} AND ResType=131) ) " +
            "<if test=\"grouporcameraid!=8185 \">\n" +
            "AND ResID in " +
            "(select GroupOrCameraId from tbl_account_camera where AccountName=#{accountName} and Type='CAMERA')" +
            "</if>\n" +
            "</script>")
    List<Res_Attr> queryForCamera2Nodes(TreeUseData treeUseData);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE ((CivilCode=#{vid} AND ResType=111) OR (ResType=118 AND CivilCode=#{vid}) OR (ResType=132 AND CivilCode=#{vid}) OR (CivilCode=#{vid} AND ResType=138) OR (ResType=134 AND CivilCode=#{vid}))" +
            "<if test=\"grouporcameraid!=8185 \">\n" +
            "AND ResID in " +
            "(select GroupOrCameraId from tbl_account_camera where AccountName=#{accountName} and Type='CAMERA')" +
            "</if>\n" +
            "</script>")
    List<Res_Attr> queryForCameraNodes(TreeUseData treeUseData);

    @Select("<script>SELECT * FROM tbl_res_attr WHERE ((CivilCode=#{vid} AND ResType=111) OR (ResType=118 AND CivilCode=#{vid}) OR (ResType=132 AND CivilCode=#{vid}) OR (CivilCode=#{vid} AND ResType=138))" +
            "<if test=\"grouporcameraid!=8185 \">\n" +
            "AND ResID in " +
            "(select GroupOrCameraId from tbl_account_camera where AccountName=#{accountName} and Type='CAMERA')" +
            "</if>\n" +
            "</script>")
    List<Res_Attr> queryForCameraNodesToAlarm(TreeUseData treeUseData);

    @Select("<script>SELECT * FROM tbl_res_attr WHERE (CivilCode=#{vid} AND ResType=131) " +
            "</script>")
    List<Res_Attr> queryForCamera4Nodes(TreeUseData treeUseData);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE (CivilCode=#{vid} AND ResType=111) OR (ResType=118 AND CivilCode=#{vid}) OR (ResType=132 AND CivilCode=#{vid}) OR (CivilCode=#{vid} AND ResType=134)" +
            "</script>")
    List<Res_Attr> queryForCamera3Nodes(TreeUseData treeUseData);
    @Select("<script>SELECT ProtocolType FROM tbl_res_attr WHERE DeviceID=#{ss} </script>")
    String queryForProtocolType(String ss);

    @Delete("<script>DELETE FROM tbl_res_attr WHERE ParentID=#{de}</script>")
    void deleteForDeviceID(String de);

    @Select("<script>SELECT * FROM tbl_channel WHERE CamID=#{id} AND PlayUrl!='null' </script>")
    List<Channel> getCameraToChannel(Integer id);

    @Select("<script>SELECT * FROM tbl_res_attr WHERE DeviceID=(SELECT ParentID FROM tbl_res_attr WHERE ResID=#{id})</script>")
    Res_Attr getCameraToResID(Integer id);
    @Update("<script>UPDATE tbl_camera set Alias=#{Alias} WHERE ResID=#{ResID}</script>")
    void updateAlias(Camera1 camera1);
    @Select("<script>SELECT IPAddress FROM tbl_service WHERE ServiceID=#{s}</script>")
    String queryForStreamingIP( int s);
    @Update("<script>UPDATE tbl_camera set PlaceID=#{PlaceID} WHERE ResID=#{ResID}</script>")
    void addPlaceId(Camera1 camera1);
    @Select("<script>SELECT * FROM tbl_place WHERE CSLXBH=#{id}</script>")
    Place getCameraToPlaceId(String id);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE ((ParentID=#{vid} AND ResType=111) OR (ResType=118 AND ParentID=#{vid}) OR (ResType=132 AND ParentID=#{vid}) OR (ParentID=#{vid} AND ResType=138) OR (ResType=134 AND ParentID=#{vid}))</script>")
    List<Res_Attr> queryForCameraNodesByType3(TreeUseData treeUseData);
    @Select("<script>SELECT s.IPAddress FROM tbl_service s INNER JOIN  tbl_res_attr  ra ON s.ServiceID = ra.SipServiceID  WHERE ra.ResID =#{id}</script>")
    String searchCameraUrl(Integer id);
}
