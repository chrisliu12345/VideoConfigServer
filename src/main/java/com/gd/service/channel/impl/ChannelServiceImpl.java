package com.gd.service.channel.impl;

import com.gd.dao.channel.IChannelDao;
import com.gd.domain.channel.Channel;
import com.gd.domain.encoder.EncoderChannel;
import com.gd.domain.windowmode.WinToChannel;
import com.gd.service.channel.IChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/10/19.
 */
@Service("channelService")
public class ChannelServiceImpl implements IChannelService {
    public static final String CACHE_KEY = "'chanInfo'";
    public static final String DEMO_CACHE_NAME = "demo";
    @Autowired
    private IChannelDao iChannelDao;

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void delete(Channel channel) {
        this.iChannelDao.deleteForObject(channel);
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void updateForObject(Channel channel) {
        this.iChannelDao.updateForObject(channel);
    }



    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void delete1(Channel channel) {
        this.iChannelDao.delete1ForObject(channel);
    }


    @Override
    public void UpdateOldChannel(Channel channel) {
        this.iChannelDao.UpdateOldChannel(channel);
    }

    @Override
    public List<String> queryForPlayUrls(int id) {
        return this.iChannelDao.queryForPlayUrls(id) ;
    }

    @Override
    public void addWinToChannel(WinToChannel winToChannel) {
        this.iChannelDao.addWinToChannel(winToChannel);
    }

    @Override
    public List<Integer> queryForEncoderChannelId(int CameraId) {
        return this.iChannelDao.queryForEncoderChannelId(CameraId);
    }

    @Override
    public int queryForwindowsmode() {
        return this.iChannelDao.queryForwindowsmode();
    }

    @Override
    public void addEncoderChannelForObject(EncoderChannel encoderChannel) {
        this.iChannelDao.addEncoderChannelForObject(encoderChannel);
    }

    @Override
    public void updateForObject0(Channel channel) {
        this.iChannelDao.updateForObject0(channel);
    }

    @Override
    public String selectNvrID(String id) {
        return this.iChannelDao.selectNvrID(id);
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void updateForPlayUrl(Channel channel) {
        this.iChannelDao.updateForPlayUrl(channel);
    }

    @Cacheable(value = DEMO_CACHE_NAME, key = CACHE_KEY)//存入缓存
    @Override
    public List<Channel> list() {
        return this.iChannelDao.queryForObject();
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void addForObject(Channel channel) {
        this.iChannelDao.addForObject(channel);
    }

    @Override
    public List<Integer> queryForChannelID(Channel channel) {
        return this.iChannelDao.queryForChannelID(channel);
    }
    @Override
    public Integer queryForCameraId(Channel channel) {
        return this.iChannelDao.queryForCameraId(channel);
    }
}
