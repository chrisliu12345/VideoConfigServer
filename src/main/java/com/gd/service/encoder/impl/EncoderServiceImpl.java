package com.gd.service.encoder.impl;

import com.gd.dao.encoder.IEncoderDao;


import com.gd.domain.encoder.Encoder1;
import com.gd.service.encoder.IEncoderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/8/2 0002.
 */
@Service("encoderService")
public class EncoderServiceImpl implements IEncoderService {
    public static final String CACHE_KEY = "'encoderInfo'";
    public static final String DEMO_CACHE_NAME = "demo";

    @Autowired
    IEncoderDao encDao;

    @Override
    public List<String> listGroup() {
        return this.encDao.queryForGroup();
    }


    @Cacheable(value = DEMO_CACHE_NAME, key = CACHE_KEY)//存入缓存
    @Override
    public List<Encoder1> list1(Encoder1 encoder1) {

        return this.encDao.queryForObject1(encoder1);
    }

    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public String add1(Encoder1 encoder1) {
        this.encDao.addObject1(encoder1);

        return null;
    }

    //删除编码器
    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void delete(Encoder1 encoder1) {
        this.encDao.deleteObject(encoder1);
    }

    //删除所有编码器
    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void delete_all() {
        this.encDao.delete_allObject();
    }

    //修改编码器
    @CacheEvict(value = DEMO_CACHE_NAME, key = CACHE_KEY)//清除缓存
    @Override
    public void update(Encoder1 encoder1) {
        this.encDao.updateForObject(encoder1);
    }
}
