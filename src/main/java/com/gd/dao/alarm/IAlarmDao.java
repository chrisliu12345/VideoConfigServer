package com.gd.dao.alarm;

import com.gd.domain.alarm.Alarm;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("alarmDao")
public interface IAlarmDao {
    @Insert("<script>INSERT INTO tbl_alarm_linkage (Alarm_event_name,Deviceid,Input_channel,AlarmMethod,AlarmType,Notified_person,Linkage_Method,Linkage_Camera,Linkage_Info)" +
            "VALUES (#{Alarm_event_name},#{Deviceid},#{Input_channel},#{AlarmMethod},#{AlarmType},#{Notified_person},#{Linkage_Method},#{Linkage_Camera},#{Linkage_Info})</script>")
    void add(Alarm alarm);
    @Select("<script>SELECT * FROM tbl_alarm_linkage</script>")
    List<Alarm> queryForList();
    @Delete("<script>DELETE FROM tbl_alarm_linkage WHERE Id=#{id}</script>")
    void delete(Integer id);

}
