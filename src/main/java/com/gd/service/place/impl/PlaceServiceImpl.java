package com.gd.service.place.impl;

import com.gd.dao.place.IPlaceDao;
import com.gd.domain.place.Account_Place;
import com.gd.domain.place.Place;
import com.gd.service.place.IPlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/1/26 0026.
 */
@Service("placeService")
public class PlaceServiceImpl implements IPlaceService {
    @Autowired
    private IPlaceDao iPlaceDao;

    @Override
    public void deleteForAccountId(Account_Place account_place) {
        this.iPlaceDao.deleteForAccountId(account_place);
    }

    @Override
    public List<Place> queryForObject() {
        return this.iPlaceDao.queryForObject();
    }

    @Override
    public List<Place> queryForObjectSon(Place place) {
        return this.iPlaceDao.queryForObjectSon(place);
    }
    @Override
    public void add(Account_Place account_place) {
        this.iPlaceDao.add(account_place);
    }
}
