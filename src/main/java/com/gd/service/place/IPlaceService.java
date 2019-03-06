package com.gd.service.place;

import com.gd.domain.place.Account_Place;
import com.gd.domain.place.Place;
import org.springframework.security.access.method.P;

import java.util.List;

/**
 * Created by Administrator on 2018/1/26 0026.
 */
public interface IPlaceService {
    List<Place> queryForObject();
    List<Place> queryForObjectSon(Place place);
    void add(Account_Place account_place);
   void  deleteForAccountId(Account_Place account_place);
}
