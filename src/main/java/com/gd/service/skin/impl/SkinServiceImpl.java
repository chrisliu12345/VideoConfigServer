package com.gd.service.skin.impl;

import com.gd.dao.skin.ISkinDao;
import com.gd.domain.skin.Skin;
import com.gd.service.skin.ISkinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("skinService")
public class SkinServiceImpl  implements ISkinService {
    @Autowired
    private ISkinDao iSkinDao;

    @Override
    public void add(Skin skin) {
        this.iSkinDao.add(skin);
    }

    @Override
    public void update(Skin skin) {
        this.iSkinDao.update(skin);
    }

    @Override
    public Skin queryForObject() {
        return this.iSkinDao.queryForObject();
    }
}
