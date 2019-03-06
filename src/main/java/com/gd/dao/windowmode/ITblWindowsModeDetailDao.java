package com.gd.dao.windowmode;

import com.gd.domain.base.BaseModel;
import com.gd.domain.windowmode.TblWindowsModeDetail;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 
 * 
 * @author tangjinhui
 * @email 100274718@qq.com
 * @date 2017-12-28 18:32:19
 */
@Repository("tblWindowsModeDetailDao")
public interface ITblWindowsModeDetailDao  {

    @Select("Select * from tbl_windows_mode_detail where id =#{id}")
    TblWindowsModeDetail findById(String id);

    @Select("SELECT  * FROM tbl_windows_mode_detail WHERE 1=1")
    List<TblWindowsModeDetail> queryList(Map<String, Object> map);

    @Select("SELECT * FROM tbl_windows_mode_detail WHERE modeid =#{modeid}")
    List<TblWindowsModeDetail> queryBymodeid(String modeid);

    @Select("select * from tbl_windows_mode_detail")
    List<TblWindowsModeDetail> queryForAllObject(BaseModel baseModel);

    @Insert("<script>INSERT INTO tbl_windows_mode_detail (id,modeid,width,height,vertexx,vertexy) values "
            +"(#{id},#{modeid},#{width},#{height},#{vertexx},#{vertexy})</script>")
    void save(TblWindowsModeDetail tblWindowsModeDetail);

    @Update("<script>UPDATE tbl_windows_mode_detail set id=#{id},modeid=#{modeid},width=#{width},height=#{height},vertexx=#{vertexx},vertexy=#{vertexy} where id =#{id}</script>")
    void update(TblWindowsModeDetail tblWindowsModeDetail);

    @Delete("<script>DELETE FROM tbl_windows_mode_detail where id =#{id}</script>")
    void delete(String id);

    @Delete("<script>DELETE FROM tbl_windows_mode_detail where modeid =#{modeid}</script>")
    void deleteByMode(String modeid);

    @Delete("DELETE FROM tbl_windows_mode_detail WHERE id IN (1,2)")
    void deleteBatch(String[] ids);

    @Select("<script>SELECT  count(*) FROM tbl_windows_mode_detail WHERE 1=1"
            +"<if test=\"id!=null and id!=''\">"+
             "AND id=#{id}"+
            "</if>"
            +"<if test=\"modeid!=null and modeid!=''\">"+
             "AND modeid=#{modeid}"+
            "</if>"
            +"<if test=\"width!=null and width!=''\">"+
             "AND width=#{width}"+
            "</if>"
            +"<if test=\"height!=null and height!=''\">"+
             "AND height=#{height}"+
            "</if>"
            +"<if test=\"vertexx!=null and vertexx!=''\">"+
             "AND vertexx=#{vertexx}"+
            "</if>"
            +"<if test=\"vertexy!=null and vertexy!=''\">"+
             "AND vertexy=#{vertexy}"+
            "</if>"
            +"</script>")
    int queryTotal(Map<String, Object> map);
	
}
