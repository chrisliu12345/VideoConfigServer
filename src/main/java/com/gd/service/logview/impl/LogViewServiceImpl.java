package com.gd.service.logview.impl;

import com.gd.dao.logview.ILogViewDao;
import com.gd.domain.org.LogView;
import com.gd.service.logview.ILogViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("LogViewService")
public class LogViewServiceImpl implements ILogViewService {
    @Autowired
    private ILogViewDao iLogViewDao;

    @Override
    public void cleanLog() {
        this.iLogViewDao.cleanLog();
    }

    @Override
    public Integer queryloginYes() {
        return this.iLogViewDao.queryloginYes();
    }

    @Override
    public Integer querySumAccount() {
        return this.iLogViewDao.querySumAccount();
    }

    @Override
    public String queryKeyStore() {
        return this.iLogViewDao.queryKeyStore();
    }

    @Override
    public void addkeyStore(String text) {
        this.iLogViewDao.addkeyStore(text);
    }

    @Override
    public void add(LogView logView) {
        this.iLogViewDao.add(logView);
    }

    @Override
    public List<LogView> list() {
        return this.iLogViewDao.list() ;
    }
}
