package com.gd.service.skin;

import com.gd.domain.skin.Skin;

public interface ISkinService {
    Skin queryForObject();
    void update(Skin skin);
    void add(Skin skin);
}
