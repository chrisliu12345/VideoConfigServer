package com.gd.domain.encoder;

/**
 * Created by Administrator on 2018/5/2 0002.
 */
public class EncoderChannel {
    private int channelID;
    private String ProtocolType;
    private int DecoderID;
    private int DecoderChannelID;
    private int CamID;
    private int MatrixID;
    private int MatrixInChannelNo;
    private int handle_temp;

    public int getChannelID() {
        return channelID;
    }

    public void setChannelID(int channelID) {
        this.channelID = channelID;
    }

    public String getProtocolType() {
        return ProtocolType;
    }

    public void setProtocolType(String protocolType) {
        ProtocolType = protocolType;
    }

    public int getDecoderID() {
        return DecoderID;
    }

    public void setDecoderID(int decoderID) {
        DecoderID = decoderID;
    }

    public int getDecoderChannelID() {
        return DecoderChannelID;
    }

    public void setDecoderChannelID(int decoderChannelID) {
        DecoderChannelID = decoderChannelID;
    }

    public int getCamID() {
        return CamID;
    }

    public void setCamID(int camID) {
        CamID = camID;
    }

    public int getMatrixID() {
        return MatrixID;
    }

    public void setMatrixID(int matrixID) {
        MatrixID = matrixID;
    }

    public int getMatrixInChannelNo() {
        return MatrixInChannelNo;
    }

    public void setMatrixInChannelNo(int matrixInChannelNo) {
        MatrixInChannelNo = matrixInChannelNo;
    }

    public int getHandle_temp() {
        return handle_temp;
    }

    public void setHandle_temp(int handle_temp) {
        this.handle_temp = handle_temp;
    }
}
