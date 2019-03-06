package com.gd.dao.services;

import com.gd.domain.services.Services;
import com.gd.domain.services.ServicesConfig;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/3/23 0023.
 */
@Repository("ServicesDao")
public interface IServicesDao {
    @Insert("<script>INSERT INTO tbl_service (ServiceType,IPAddress,Status,ServiceName) VALUES (#{ServiceType},#{IPAddress},#{Status},#{ServiceName})</script>")
    @Options(useGeneratedKeys=true, keyProperty="ServiceID",keyColumn = "ServiceID")
    void add(Services services);
    @Insert("<script>INSERT INTO tbl_config (ConfigName,ConfigValue,ServiceID) VALUES (#{ConfigName},#{ConfigValue},#{ServiceID})</script>")
    void addConfig(ServicesConfig config);
    @Select("<script>select * FROM tbl_config where ServiceID=#{ServiceID}</script>")
    List<ServicesConfig> getConfig(Services services);
    @Select("<script>select * FROM tbl_service where ServiceType=#{ServiceType}</script>")
    List<ServicesConfig> getService(Services services);
}
