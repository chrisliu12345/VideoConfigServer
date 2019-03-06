package com.gd.service.windowmode;

import com.gd.domain.windowmode.TblWindowsMode;

import java.util.List;
import java.util.Map;

/**
 * 
 * 
 * @author tangjinhui
 * @email 100274718@qq.com
 * @date 2017-12-28 18:32:19
 */
public interface TblWindowsModeService {
	
	TblWindowsMode findById(String id);
	
	List<TblWindowsMode> queryList(TblWindowsMode mode);

	TblWindowsMode save(TblWindowsMode tblWindowsMode);

	TblWindowsMode update(TblWindowsMode tblWindowsMode);
	
	void delete(String id);
	
	void deleteBatch(String[] ids);

    int queryTotal(Map<String, Object> map);
}
