package com.gd.service.save;

import com.gd.domain.save.SaveConfig;
import com.gd.domain.save.SaveCount;
import com.gd.domain.services.Services;

import java.util.List;

/**
 * Created by 郄梦岩 on 2017/11/14.
 */
public interface ISaveConfigService {
    void add(SaveConfig saveConfig);

    Services queryForServiceID(Integer id);

    List<SaveCount> getselectService();

    List<SaveConfig> queryForObject();

    void deleteAll(Integer id);

    void update(SaveConfig saveConfig);

    String queryForCameraName(Integer camId);

}
