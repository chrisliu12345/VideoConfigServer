package com.gd.dao.updown;

import com.gd.domain.base.BaseModel;
import com.gd.domain.group.GroupInfo;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.updown.UpDown;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/8/30.
 */
@Repository("UpDownDao")
public interface IUpDownDao {
    @Select("<script>SELECT *  FROM tbl_platform</script>")
    List<UpDown> listforObject(BaseModel baseModel);
    @Select("<script>SELECT ProtocolType  FROM tbl_camera</script>")
    List<String> queryforObject1();
    @Select("<script>SELECT PlatformID  FROM tbl_platform</script>")
    List<Integer> list_platformid();
    @Insert("<script>INSERT INTO tbl_platform (PlatformName,IPAddress,ProtocolType,PlatformPort,SipID,SipDomain,UpUsrName,UpPassword,UpRealm,DownUsrName,DownPassword,DownRealm," +
            "SignalTransportType,StreamTransportType,UsrID,Status,ConnectState,SipServiceID,SubScribeInfo," +
            "GbVersion,StreamingID,ExtStreamingIP) VALUES\n"+
            "(#{PlatformName},#{IPAddress},#{ProtocolType},#{PlatformPort},#{SipID},#{SipDomain},#{UpUsrName}," +
            "#{UpPassword},#{UpRealm},#{DownUsrName},#{DownPassword},#{DownRealm},#{SignalTransportType},#{StreamTransportType}," +
            "#{UsrID},#{Status},#{ConnectState},#{SipServiceID},#{SubScribeInfo},#{GbVersion},#{StreamingID},#{ExtStreamingIP})</script>")
    void addforObject(BaseModel baseModel);

    @Delete("<script>DELETE FROM tbl_platform WHERE PlatformID=#{PlatformId}</script>")
    void deleteforObject(BaseModel baseModel);

@Update("<script>UPDATE tbl_platform SET PlatformName=#{PlatformName},IPAddress=#{IPAddress},ProtocolType=#{ProtocolType},PlatformPort=#{PlatformPort},SipID=#{SipID},"+
        "SipDomain=#{SipDomain},UpUsrName=#{UpUsrName},UpPassword=#{UpPassword},UpRealm=#{UpRealm},DownUsrName=#{DownUsrName},DownPassword=#{DownPassword},DownRealm=#{DownRealm},SignalTransportType=#{SignalTransportType},"+
        "StreamTransportType=#{StreamTransportType},UsrID=#{UsrID},Status=#{Status},ConnectState=#{ConnectState},SipServiceID=#{SipServiceID},SubScribeInfo=#{SubScribeInfo}," +
        "GbVersion=#{GbVersion},StreamingID=#{StreamingID},ExtStreamingIP=#{ExtStreamingIP} WHERE PlatformID=#{PlatformId}</script>")
     void updateforObject(BaseModel baseModel);
    @Select("<script>SELECT VirtualOrgID From tbl_group where VirtualOrgID Like CONCAT('%',#{id},'%') AND Type=1</script>")
    List<Integer> queryforvirualOrgId(Integer id);
    @Delete("<script>DELETE FROM tbl_res_attr WHERE CivilCode=#{id}</script>")
    void DeletevirualOrgID(Integer id);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE PlatformID=#{id}</script>")
    List<Res_Attr> queryforResId(Integer id);
    @Delete("<script>DELETE FROM tbl_res_attr WHERE PlatformID=#{id}</script>")
    void deleteCameraRes(Integer id);
    @Delete("<script>DELETE FROM tbl_camera WHERE ResID not in(select ResID from tbl_res_attr)</script>")
    void deleteCameraCamera();
    @Delete("<script>DELETE FROM tbl_channel WHERE NVRID not in (select ResID from tbl_res_attr)</script>")
     void deleteChannel();
    @Select("<script>SELECT * FROM tbl_platform WHERE PlatformID!=1</script>")
    List<UpDown> list2();
    @Select("<script>SELECT * FROM tbl_platform WHERE PlatformID=1</script>")
    UpDown queryForMyPlatFormId();
    @Delete("<script>DELETE FROM tbl_account_camera where AccountId=#{accountId}</script>")
    void deleteAccountCameraAdmin(String accountId);
    @Select("<script>SELECT * FROM tbl_group WHERE type=1 AND GroupID=ParentID</script>")
    List<GroupInfo> queryForGroupInfo();
}
