package com.gd.service.windowmode.impl;

import com.gd.dao.windowmode.ITblWindowsModeDetailDao;
import com.gd.domain.windowmode.TblWindowsModeDetail;
import com.gd.service.windowmode.TblWindowsModeDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("tblWindowsModeDetailService")
public class TblWindowsModeDetailServiceImpl implements TblWindowsModeDetailService {

	@Autowired
	private ITblWindowsModeDetailDao tblWindowsModeDetailDao;
	
	@Override
	public TblWindowsModeDetail findById(String id){
		return tblWindowsModeDetailDao.findById(id);
	}
	
	@Override
	public List<TblWindowsModeDetail> queryList(Map<String, Object> map){
		return tblWindowsModeDetailDao.queryList(map);
	}
	
	@Override
	public void save(TblWindowsModeDetail tblWindowsModeDetail){
		tblWindowsModeDetailDao.save(tblWindowsModeDetail);
	}
	
	@Override
	public void update(TblWindowsModeDetail tblWindowsModeDetail){
		tblWindowsModeDetailDao.update(tblWindowsModeDetail);
	}
	
	@Override
	public void delete(String id){
		tblWindowsModeDetailDao.delete(id);
	}
	
	@Override
	public void deleteBatch(String[] ids){
		tblWindowsModeDetailDao.deleteBatch(ids);
	}

    @Override
    public int queryTotal(Map<String, Object> map) {
        return tblWindowsModeDetailDao.queryTotal(map);
    }
	
}
