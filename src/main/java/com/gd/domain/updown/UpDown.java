package com.gd.domain.updown;

import com.gd.domain.base.BaseModel;

/**
 * Created by 郄梦岩 on 2017/8/30.
 */
public class UpDown extends BaseModel {
    private Integer PlatformId;//平台Id
    private String PlatformName;//平台名称
    private String IPAddress;//平台IP地址
    private Integer PlatformPort;//平台端口号
    private String ProtocolType;//对接方式
    private String SipID;//平台国标28181编码
    private String SipDomain;//28181域编码
    private String UpUsrName;//28181平台对接时，该平台的上联用户名（该平台为下级）
    private String UpPassword;//28181平台对接时，该平台的上联密码（该平台为下级）
    private String UpRealm;//28181平台对接时，该平台的范围（该平台为下级）
    private String DownUsrName;//28181平台对接时，该平台的下联用户名（该平台为上级）
    private String DownPassword;//28181平台对接时，该平台的下联密码（该平台为上级）
    private String DownRealm;//28181平台对接时，本平台的范围（该平台为上级）
    private Integer SignalTransportType;//信令传输方式
    private Integer StreamTransportType;//码流传输方式
    private Integer UsrID;//用户ID
    private String Status;//在线标志
    private Integer ConnectState;//对接方式，上联下联，级联
    private Integer SipServiceID;//对接的SIP服务ID
    private Integer SubScribeInfo;//订阅信息
    private String GbVersion;
    private Integer StreamingID;
    private String ExtStreamingIP;
    private String TypeName;


    public String getTypeName() {
        return TypeName;
    }

    public void setTypeName(String typeName) {
        TypeName = typeName;
    }

    public Integer getPlatformId() {
        return PlatformId;
    }

    public void setPlatformId(Integer platformId) {
        PlatformId = platformId;
    }

    public String getPlatformName() {
        return PlatformName;
    }

    public void setPlatformName(String platformName) {
        PlatformName = platformName;
    }

    public String getIPAddress() {
        return IPAddress;
    }

    public void setIPAddress(String IPAddress) {
        this.IPAddress = IPAddress;
    }

    public Integer getPlatformPort() {
        return PlatformPort;
    }

    public void setPlatformPort(Integer platformPort) {
        PlatformPort = platformPort;
    }

    public String getProtocolType() {
        return ProtocolType;
    }

    public void setProtocolType(String protocolType) {
        ProtocolType = protocolType;
    }

    public String getSipID() {
        return SipID;
    }

    public void setSipID(String sipID) {
        SipID = sipID;
    }

    public String getSipDomain() {
        return SipDomain;
    }

    public void setSipDomain(String sipDomain) {
        SipDomain = sipDomain;
    }

    public String getUpUsrName() {
        return UpUsrName;
    }

    public void setUpUsrName(String upUsrName) {
        UpUsrName = upUsrName;
    }

    public String getUpPassword() {
        return UpPassword;
    }

    public void setUpPassword(String upPassword) {
        UpPassword = upPassword;
    }

    public String getUpRealm() {
        return UpRealm;
    }

    public void setUpRealm(String upRealm) {
        UpRealm = upRealm;
    }

    public String getDownUsrName() {
        return DownUsrName;
    }

    public void setDownUsrName(String downUsrName) {
        DownUsrName = downUsrName;
    }

    public String getDownPassword() {
        return DownPassword;
    }

    public void setDownPassword(String downPassword) {
        DownPassword = downPassword;
    }

    public String getDownRealm() {
        return DownRealm;
    }

    public void setDownRealm(String downRealm) {
        DownRealm = downRealm;
    }

    public Integer getSignalTransportType() {
        return SignalTransportType;
    }

    public void setSignalTransportType(Integer signalTransportType) {
        SignalTransportType = signalTransportType;
    }

    public Integer getStreamTransportType() {
        return StreamTransportType;
    }

    public void setStreamTransportType(Integer streamTransportType) {
        StreamTransportType = streamTransportType;
    }

    public Integer getUsrID() {
        return UsrID;
    }

    public void setUsrID(Integer usrID) {
        UsrID = usrID;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String status) {
        Status = status;
    }

    public Integer getConnectState() {
        return ConnectState;
    }

    public void setConnectState(Integer connectState) {
        ConnectState = connectState;
    }

    public Integer getSipServiceID() {
        return SipServiceID;
    }

    public void setSipServiceID(Integer sipServiceID) {
        SipServiceID = sipServiceID;
    }

    public Integer getSubScribeInfo() {
        return SubScribeInfo;
    }

    public void setSubScribeInfo(Integer subScribeInfo) {
        SubScribeInfo = subScribeInfo;
    }

    public String getGbVersion() {
        return GbVersion;
    }

    public void setGbVersion(String gbVersion) {
        GbVersion = gbVersion;
    }

    public Integer getStreamingID() {
        return StreamingID;
    }

    public void setStreamingID(Integer streamingID) {
        StreamingID = streamingID;
    }

    public String getExtStreamingIP() {
        return ExtStreamingIP;
    }

    public void setExtStreamingIP(String extStreamingIP) {
        ExtStreamingIP = extStreamingIP;
    }
}
