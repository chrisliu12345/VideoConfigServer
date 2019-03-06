package com.gd.domain.services;

/**
 * Created by Administrator on 2018/3/23 0023.
 */
public class ServicesConfig  extends Services{
    private String ConfigName;
    private String ConfigValue;
    private Integer ConfigID;

    public String getConfigName() {
        return ConfigName;
    }

    public void setConfigName(String configName) {
        ConfigName = configName;
    }

    public String getConfigValue() {
        return ConfigValue;
    }

    public void setConfigValue(String configValue) {
        ConfigValue = configValue;
    }

    public Integer getConfigID() {
        return ConfigID;
    }

    public void setConfigID(Integer configID) {
        ConfigID = configID;
    }
}
