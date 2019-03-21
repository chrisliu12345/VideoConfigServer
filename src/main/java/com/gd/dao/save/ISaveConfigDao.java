package com.gd.dao.save;

import com.gd.domain.save.SaveConfig;
import com.gd.domain.save.SaveCount;
import com.gd.domain.services.Services;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/11/14.
 */
@Repository("saveConfigDao")
public interface ISaveConfigDao {
    @Insert("<script>INSERT INTO tbl_storplan (CamID,StreamingID,StartTime,StopTime,WorkDay,KeepTime,IslostStop,AlarmTime) VALUES" +
            "(#{CamID},#{StreamingID},#{StartTime},#{StopTime},#{WorkDay},#{KeepTime},#{IslostStop},#{AlarmTime})</script>")
     void addForObject(SaveConfig saveConfig);
    @Select("<script>SELECT * FROM tbl_service WHERE ServiceID =(SELECT SipServiceID FROM tbl_res_attr WHERE ResID=#{id})</script>")
    Services queryForServiceID(Integer id);
    @Select("<script>Select  StreamingID,Count(*) AS num From tbl_storplan Group By StreamingID Having Count(*) > 0 ORDER BY num desc</script>")
    List<SaveCount> getselectService();
    @Select("<script>SELECT * FROM tbl_storplan</script>")
    List<SaveConfig> queryForObject();
    @Delete("<script>DELETE FROM tbl_storplan WHERE PlanID=#{id}</script>")
    void deleteAll(Integer id);
    @Update("<script>UPDATE tbl_storplan set CamID=#{CamID},StreamingID=#{StreamingID},StartTime=#{StartTime},StopTime=#{StopTime}," +
            "WorkDay=#{WorkDay},KeepTime=#{KeepTime},IslostStop=#{IslostStop} WHERE PlanID=#{PlanID}</script>")
    void update(SaveConfig saveConfig);
    @Select("<script>SELECT Name FROM tbl_res_attr WHERE ResID=#{camId}</script>")
    String queryForCameraName(Integer camId);
}
