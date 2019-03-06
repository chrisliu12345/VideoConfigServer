package com.gd.dao.logview;

import com.gd.domain.org.LogView;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("logviewDao")
public interface ILogViewDao {
    @Select("SELECT * FROM tbl_log where LogName='reslog'")
    List<LogView> list();

    @Insert("INSERT INTO tbl_log (LogName,LogDate,UsrName,GroupOrCameraName,Comments) values " +
            "(#{LogName},#{LogDate},#{UsrName},#{GroupOrCameraName},#{Comments})")
    void add(LogView logView);

    @Insert("INSERT INTO tbl_keystore (KeySsl) values (#{text})")
    void addkeyStore(String text);

    @Select("SELECT KeySsl FROM tbl_keystore order by id desc limit 1")
    String queryKeyStore();

    @Select("SELECT count(*) FROM sys_account")
    Integer querySumAccount();

    @Select("SELECT count(*) FROM sys_account WHERE loginYes>0")
    Integer queryloginYes();

    @Delete("Delete from tbl_log")
    void cleanLog();
}
