package com.gd.dao.res_attr;

import com.gd.domain.base.BaseModel;
import com.gd.domain.camera.*;
import com.gd.domain.res_attr.Res_Attr;
import com.gd.domain.services.Services;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/9/18.
 */
@Repository("resDao")
public interface IResAttrDao {
    //查询所有设备信息
    @Select("<script>SELECT * FROM tbl_res_attr order by ResID DESC </script>")
    List<Res_Attr> queryForObject();
    //根据设备ID查询设备的父设备ID
    @Select("<script>SELECT ResID From tbl_res_attr WHERE DeviceID=(SELECT ParentID From tbl_res_attr where ResID=#{ResID} and ParentID!=DeviceID)</script>")
    String queryForObject1(Res_Attr res_attr);
    @Select("<script>SELECT ParentID FROM tbl_res_attr WHERE ResID=#{ResID} AND ParentID=DeviceID</script>")
    String queryForObject2(Res_Attr res_attr);

    //添加设备信息
    @Insert("<script>INSERT INTO tbl_res_attr " +
            "(DeviceID,Name,ProtocolType,Manufacturer,Model,Owner,CivilCode,Block,Address," +
            "Parental,ParentID,SafetyWay,RegisterWay,CertNum," +
            "Certifiable,ErrCode,EndTime,Secrecy,IPAddress,Port,UsrName,Password,Status,Longitude," +
            "Latitude,PlatformID,ResType,SipServiceID,GuardFlag)" +
            "VALUES" +
            "(#{DeviceID},#{name},#{ProtocolType},#{Manufacturer},#{Model},#{Owner},#{CivilCode},#{Block},#{Address},#{Parental}," +
            "#{ParentID},#{SafetyWay},#{RegisterWay},#{CertNum},#{Certifiable},#{ErrCode},#{EndTime},#{Secrecy},#{IPAddress},#{Port}," +
            "#{UsrName},#{Password},#{Status},#{Longitude},#{Latitude},#{PlatformID},#{ResType},#{SipServiceID},#{GuardFlag})" +
            "</script>")
    @Options(useGeneratedKeys=true, keyProperty="ResID",keyColumn = "RESID")
    void addForObject(BaseModel baseModel);
    //删除设备信息
    @Delete("<script>DELETE FROM tbl_res_attr WHERE ResID=#{ResID}</script>")
    void deleteForObject(BaseModel baseModel);
    //更新设备信息
    @Update("<script>UPDATE  tbl_res_attr SET DeviceID=#{DeviceID},Name=#{name},ProtocolType=#{ProtocolType},Manufacturer=#{Manufacturer},Model=#{Model},Owner=#{Owner},CivilCode=#{CivilCode},Block=#{Block},Address=#{Address}," +
            "Parental=#{Parental},ParentID=#{ParentID},SafetyWay=#{SafetyWay},RegisterWay=#{RegisterWay},CertNum=#{CertNum}," +
            "Certifiable=#{Certifiable},ErrCode=#{ErrCode},EndTime=#{EndTime},Secrecy=#{Secrecy},IPAddress=#{IPAddress},Port=#{Port},UsrName=#{UsrName},Password=#{Password},Status=#{Status},Longitude=#{Longitude}," +
            "Latitude=#{Latitude},PlatformID=#{PlatformID},ResType=#{ResType},SipServiceID=#{SipServiceID},GuardFlag=#{GuardFlag} where ResID=#{ResID} " +
            "</script>")
    void updateForObject(BaseModel baseModel);
    //修改摄像机信息时，同步更新res表的摄像机信息
    @Update("<script>UPDATE  tbl_res_attr SET Name=#{name} where ResID=#{ResID} " +
            "</script>")
    void updateForName(BaseModel baseModel);
    //查询设备为摄像机的父设备ID和名称
    @Select("<script>SELECT ResID,Name,ProtocolType,DeviceID,ParentID,CivilCode,ResType FROM tbl_res_attr where ResType='111'or ResType='118' or ResType='132'</script>")
    List<ResIdName> getResIdandName();
    //根据设备ID查询设备的父设备ID
    @Update("<script>UPDATE  tbl_res_attr SET CivilCode=#{CivilCode},Block=#{Block},Address=#{Address},Secrecy=#{Secrecy},Longitude=#{Longitude}," +
            "Latitude=#{Latitude} where ResID=#{ResID}</script>")
    void updateForRes(Res_Attr res_attr);
    @Select("<script> SELECT ResID FROM tbl_res_attr WHERE DeviceID=#{DeviceID}</script>")
    Integer queryForResId(Res_Attr res_attr);
    @Select("<script> SELECT max(right(DeviceID, 6)) FROM tbl_res_attr</script>")
    String queryForMaxDeviceId();
    @Select("<script>SELECT * FROM tbl_service WHERE ServiceType=4</script>")
    List<Services> getSip();
    @Select("<script>SELECT * FROM tbl_service WHERE ServiceType=2</script>")
    List<Services> getSip1();
    @Select("<script>SELECT * FROM tbl_service WHERE ServiceType=2 AND ServiceID=#{id}</script>")
    Services getSipName(Integer id);
    @Select("<script>SELECT DeviceID FROM tbl_res_attr where ResID=#{ResID}</script>")
    String queryforDeviceID(Res_Attr res_attr);

    @Select("<script>SELECT ResID FROM tbl_res_attr WHERE ParentID=#{ss} </script>")
    List<String> deviceIDtoResID(String ss);

    @Select("<script>SELECT count(*) FROM tbl_channel WHERE PlayUrl='null' AND NVRID=#{ss}</script>")
    Integer queryforResIdtoChannel(Integer ss);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE  DeviceID=#{ss}</script>")
    Res_Attr DeviceIDforRes(String ss);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE   (Name  Like CONCAT('%',#{name},'%') AND ResType='131') </script>")
    List<Res_Attr> searchCameraName(Res_Attr res_attr);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE   (IPAddress  Like CONCAT('%',#{name},'%') AND ResType='131') </script>")
    List<Res_Attr> searchCameraIP(Res_Attr res_attr);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE   (Name  Like CONCAT('%',#{name},'%') AND ResType='111') OR (Name  Like CONCAT('%',#{name},'%') AND ResType='118') OR (Name  Like CONCAT('%',#{name},'%') AND ResType='132') </script>")
    List<Res_Attr> searchResAttrName(Res_Attr res_attr);
    @Select("<script>SELECT * FROM tbl_res_attr WHERE   (IPAddress  Like CONCAT('%',#{name},'%') AND ResType='111') OR (IPAddress  Like CONCAT('%',#{name},'%') AND ResType='118') OR (IPAddress  Like CONCAT('%',#{name},'%') AND ResType='132')</script>")
    List<Res_Attr> searchResAttrIP(Res_Attr res_attr);
    @Select("<script>SELECT Name FROM tbl_res_attr WHERE  ResID=#{id}</script>")
     String queryForCamera(int id);
    @Select("<script>SELECT DeviceID FROM tbl_res_attr order by ResID desc limit 1</script>")
    String selectLastData();
    @Select("<script>SELECT * FROM tbl_res_attr where CivilCode=#{civilCode}  </script>")
    List<Res_Attr> queryForResAttr(String civilCode);
    @Delete("<script>DELETE FROM tbl_decoder_channel WHERE DecoderID=#{id}</script>")
    void deleteForEncoderChannel(Integer id);
    @Insert("<script>INSERT INTO tbl_intrusion_alarm " +
            "(ResId,line0XY,line1XY,rectXY,rectW,rectH)" +
            "VALUES" +
            "(#{ResId},#{line0XY},#{line1XY},#{rectXY},#{rectW},#{rectH})</script>")
    void saveAlarm(InAlarm inAlarm);
    @Select("<script>SELECT * FROM tbl_res_attr where ResID=#{id}</script>")
    Res_Attr queryForResAttrById(int id);
    @Insert("<script>INSERT INTO tbl_taskstatus " +
            "(CommitTime,Status)" +
            "VALUES" +
            "(#{CommitTime},#{Status})</script>")
    @Options(useGeneratedKeys=true, keyProperty="TaskID",keyColumn = "TaskID")
    int addTaskStatus(TaskStatus taskStatus);

    @Insert("<script>INSERT INTO tbl_analysisrule " +
            "(RuleName,RuleCode,vertex)" +
            "VALUES" +
            "(#{RuleName},#{RuleCode},#{vertex})</script>")
    @Options(useGeneratedKeys=true, keyProperty="ruleID",keyColumn = "ruleID")
    int addAnalysisRule(AnalysisRule analysisRule);
    @Insert("<script>INSERT INTO tbl_task (Type,ResourceName,PlatformID,URL,serviceID,RuleParamID,videoInfoID,Priorty," +
            "StatusID,ControlStatus) VALUES (#{Type},#{ResourceName},#{PlatformID},#{URL},#{serviceID},#{RuleParamID}," +
            "#{videoInfoID},#{Priorty},#{StatusID},#{ControlStatus})" +
            "</script>")
    void addTask(Task task);
    @Select("select * from tbl_task where videoInfoID=#{id}")
    List<Task> queryForTask(int id);

    @Delete("delete from tbl_analysisrule where ruleID=#{ruleId}")
    void deleteRule(int ruleId);
     @Delete("delete from tbl_taskstatus where TaskID=#{statusId}")
    void deleteTaskStatus(int statusId);
     @Delete("delete from tbl_task where videoInfoID=#{ResId}")
     void deleteTask(int ResId);
}
