package com.gd.service.logview;

import com.gd.domain.org.LogView;

import java.util.List;

public interface ILogViewService {
    List<LogView> list();

    void add(LogView logView);

    void addkeyStore(String text);

    String queryKeyStore();

    Integer querySumAccount();

    Integer queryloginYes();

    void cleanLog();

}
