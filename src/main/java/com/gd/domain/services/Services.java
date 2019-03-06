package com.gd.domain.services;

/**
 * Created by 郄梦岩 on 2017/11/6.
 */
public class Services {
    private  Integer ServiceID;
    private  Integer ServiceType;
    private String IPAddress;
    private String Status;
    private String ServiceName;

    public String getServiceName() {
        return ServiceName;
    }

    public void setServiceName(String serviceName) {
        ServiceName = serviceName;
    }

    public Integer getServiceID() {
        return ServiceID;
    }

    public void setServiceID(Integer serviceID) {
        ServiceID = serviceID;
    }

    public Integer getServiceType() {
        return ServiceType;
    }

    public void setServiceType(Integer serviceType) {
        ServiceType = serviceType;
    }

    public String getIPAddress() {
        return IPAddress;
    }

    public void setIPAddress(String IPAddress) {
        this.IPAddress = IPAddress;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }
}
