package com.gd.service.services;

import com.gd.domain.services.Services;
import com.gd.domain.services.ServicesConfig;
import com.gd.domain.updown.UpDown;

import java.util.List;

/**
 * Created by Administrator on 2018/3/23 0023.
 */
public interface IServicesConfigService {
    void add(Services services);
    void addConfig(ServicesConfig config);
    List<ServicesConfig> getConfig(Services services);
    List<ServicesConfig> getService(Services services);

}
