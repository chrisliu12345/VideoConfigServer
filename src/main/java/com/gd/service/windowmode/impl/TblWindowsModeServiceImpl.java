package com.gd.service.windowmode.impl;

import com.gd.dao.windowmode.ITblWindowsModeDao;
import com.gd.dao.windowmode.ITblWindowsModeDetailDao;
import com.gd.domain.windowmode.TblWindowsMode;
import com.gd.domain.windowmode.TblWindowsModeDetail;
import com.gd.service.windowmode.TblWindowsModeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;


@Service("tblWindowsModeService")
public class TblWindowsModeServiceImpl implements TblWindowsModeService {

	@Autowired
	private ITblWindowsModeDao tblWindowsModeDao;
	@Autowired
	private ITblWindowsModeDetailDao detailDao;

	
	@Override
	public TblWindowsMode findById(String id){
		TblWindowsMode mode = tblWindowsModeDao.findById(id);
		mode.setDetails(detailDao.queryBymodeid(id));
		return mode;
	}
	
	@Override
	public List<TblWindowsMode> queryList(TblWindowsMode mode){
		List<TblWindowsMode> result = tblWindowsModeDao.queryList(mode);
		for(TblWindowsMode mo : result){
			mo.setDetails(detailDao.queryBymodeid(mo.getId()));
		}
		return result;

	}
	
	@Override
	public TblWindowsMode save(TblWindowsMode tblWindowsMode){
		tblWindowsModeDao.save(tblWindowsMode);
		List<TblWindowsModeDetail> details =  tblWindowsMode.getDetails();
		for(TblWindowsModeDetail de : details){
			de.setModeid(tblWindowsMode.getId());
			detailDao.save(de);
		}
		return tblWindowsMode;
	}
	
	@Override
	@Transactional
	public TblWindowsMode update(TblWindowsMode tblWindowsMode){
		tblWindowsModeDao.update(tblWindowsMode);
		detailDao.deleteByMode(tblWindowsMode.getId());
		List<TblWindowsModeDetail> details =  tblWindowsMode.getDetails();
		for(TblWindowsModeDetail de : details){
			de.setModeid(tblWindowsMode.getId());
			detailDao.save(de);
		}
		return tblWindowsMode;
	}
	
	@Override
	public void delete(String id){
		tblWindowsModeDao.delete(id);
	}
	
	@Override
	public void deleteBatch(String[] ids){
		tblWindowsModeDao.deleteBatch(ids);
	}

    @Override
    public int queryTotal(Map<String, Object> map) {
        return tblWindowsModeDao.queryTotal(map);
    }
	
}
