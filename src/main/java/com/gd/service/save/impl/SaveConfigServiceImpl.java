package com.gd.service.save.impl;

import com.gd.dao.save.ISaveConfigDao;
import com.gd.domain.save.SaveConfig;
import com.gd.domain.save.SaveCount;
import com.gd.domain.services.Services;
import com.gd.service.save.ISaveConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/11/14.
 */
@Service("saveConfigService")
public class SaveConfigServiceImpl implements ISaveConfigService {
    @Autowired
    private ISaveConfigDao iSaveConfigDao;
    @Override
    public void add(SaveConfig saveConfig) {
        this.iSaveConfigDao.addForObject(saveConfig);
    }

    @Override
    public String queryForCameraName(Integer camId) {
        return this.iSaveConfigDao.queryForCameraName(camId);
    }

    @Override
    public List<SaveCount> getselectService() {
        return this.iSaveConfigDao.getselectService();
    }

    @Override
    public void update(SaveConfig saveConfig) {
        this.iSaveConfigDao.update(saveConfig);
    }

    @Override
    public void deleteAll(Integer id) {
        this.iSaveConfigDao.deleteAll(id);
    }

    @Override
    public List<SaveConfig> queryForObject() {
        return this.iSaveConfigDao.queryForObject();
    }

    @Override
    public Services queryForServiceID(Integer id) {
        return this.iSaveConfigDao.queryForServiceID(id);
    }
}
