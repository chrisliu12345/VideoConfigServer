package com.gd.controller.linkage;

import com.gd.domain.channel.Channel;
import com.gd.service.linkage.IChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2018/2/7 0007.
 */

@RestController
@RequestMapping("/common")
public class ChannelAdd {
    @Autowired
    private IChannelService iChannelService;

    //为设备添加摄像机通道
    public void addChannel(Integer num, Integer type, String name, Integer id) {
        //DVR或者IPC摄像机
        if (type == 111 || type == 132 || type == 134) {
            //DVR的哪个厂家
            //1.海康
            if (name.equals("HIK")) {
                for (int i = 1; i <= num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(id);
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("TCP://1:0");
                    channel.setUseType(1);
                    this.iChannelService.addForObject(channel);
                }
            }
            //2.宇视
            if (name.equals("UNIVIEW")) {
                for (int i = 1; i <= num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("TCP://1:0");
                    channel.setUseType(1);
                    this.iChannelService.addForObject(channel);
                }
            }
            //3.大华
            if (name.equals("DH")) {
                for (int i = 0; i < num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(id);
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("TCP://0:0");
                    channel.setUseType(1);
                    this.iChannelService.addForObject(channel);
                }
            }

        }
        //NVR
        if (type == 118) {
            if (name.equals("HIK")) {
                for (int i = 33; i < num + 33; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(1);
                    this.iChannelService.addForObject(channel);
                }
            }
            if (name.equals("DH")) {
                for (int i = 0; i < num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(1);
                    this.iChannelService.addForObject(channel);
                }
            }
            if (name.equals("UNIVIEW")) {
                for (int i = 1; i <= num; i++) {
                    Channel channel = new Channel();
                    channel.setCamID(RandomNumber());
                    channel.setNvrID(id);
                    channel.setNvrChannelID(String.valueOf(i));
                    channel.setPlayUrl("null");
                    channel.setUseType(1);
                    this.iChannelService.addForObject(channel);
                }
            }
        }

    }

    public int RandomNumber() {
        int r = (int) (Math.random() * 999999999);
        return r;
    }
}


