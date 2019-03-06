package com.gd.service.alarm.impl;

import com.gd.dao.alarm.IAlarmDao;
import com.gd.domain.alarm.Alarm;
import com.gd.service.alarm.IAlarmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("alarmService")
public class AlarmServiceImpl implements IAlarmService {
    @Override
    public void delete(Integer id) {
        this.iAlarmDao.delete(id);
    }

    @Override
    public List<Alarm> queryForList() {
        return this.iAlarmDao.queryForList();
    }

    @Autowired
    private IAlarmDao iAlarmDao;
    @Override
    public void add(Alarm alarm) {
        this.iAlarmDao.add(alarm);
    }
}
