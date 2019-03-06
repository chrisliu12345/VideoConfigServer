package com.gd.service.channel;

import com.gd.domain.channel.Channel;
import com.gd.domain.encoder.EncoderChannel;
import com.gd.domain.windowmode.WinToChannel;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/10/19.
 */
public interface IChannelService {
    void addForObject(Channel channel); //添加通道

    void updateForObject(Channel channel); //更新通道

    Integer queryForCameraId(Channel channel);//根据摄像机ID查询该摄像机是否使用了通道

    List<Channel> list(); //查询所有通道

    void delete(Channel channel); //删除通道

    List<Integer> queryForChannelID(Channel channel);//获取通道数量

    void delete1(Channel channel);//根据NVRID删除通道

     void updateForPlayUrl(Channel channel);

     String selectNvrID(String id);

     void updateForObject0(Channel channel);

    void UpdateOldChannel(Channel channel);

   List<String> queryForPlayUrls(int id);

   void addEncoderChannelForObject(EncoderChannel encoderChannel);
   int queryForwindowsmode();

    List<Integer> queryForEncoderChannelId(int CameraId);

    void addWinToChannel(WinToChannel winToChannel);
}
