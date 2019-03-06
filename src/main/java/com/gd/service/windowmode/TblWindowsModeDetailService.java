package com.gd.service.windowmode;

import com.gd.domain.windowmode.TblWindowsModeDetail;

import java.util.List;
import java.util.Map;

/**
 * 
 * 
 * @author tangjinhui
 * @email 100274718@qq.com
 * @date 2017-12-28 18:32:19
 */
public interface TblWindowsModeDetailService {
	
	TblWindowsModeDetail findById(String id);
	
	List<TblWindowsModeDetail> queryList(Map<String, Object> map);
	
	void save(TblWindowsModeDetail tblWindowsModeDetail);
	
	void update(TblWindowsModeDetail tblWindowsModeDetail);
	
	void delete(String id);
	
	void deleteBatch(String[] ids);

    int queryTotal(Map<String, Object> map);
}
