package com.gd.service.services.impl;

import com.gd.dao.services.IServicesDao;
import com.gd.domain.services.Services;
import com.gd.domain.services.ServicesConfig;
import com.gd.domain.updown.UpDown;
import com.gd.service.save.ISaveConfigService;
import com.gd.service.services.IServicesConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/3/23 0023.
 */
@Service("serviceConfigService")
public class ServiceConfigServiceImpl implements IServicesConfigService {
    @Autowired
    private IServicesDao iServicesDao;

    @Override
    public List<ServicesConfig> getConfig(Services services) {
        return this.iServicesDao.getConfig(services);
    }

    @Override
    public void addConfig(ServicesConfig config) {
          this.iServicesDao.addConfig(config);
    }

    @Override
    public void add(Services services) {
        this.iServicesDao.add(services);
    }



    @Override
    public List<ServicesConfig> getService(Services services) {
        return iServicesDao.getService(services);
    }
}
