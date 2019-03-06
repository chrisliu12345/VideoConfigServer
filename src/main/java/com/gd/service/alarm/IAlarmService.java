package com.gd.service.alarm;

import com.gd.domain.alarm.Alarm;

import java.util.List;

public interface IAlarmService {
    void add(Alarm alarm);
    List<Alarm> queryForList();
    void delete(Integer id);
}
