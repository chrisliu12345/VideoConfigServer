package com.gd.dao.windowmode;

import com.gd.domain.base.BaseModel;
import com.gd.domain.windowmode.TblWindowsMode;
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
@Repository("tblWindowsModeDao")
public interface ITblWindowsModeDao  {

    @Select("Select * from tbl_windows_mode where id =#{id}")
    TblWindowsMode findById(String id);

    @Select("<script>SELECT  * FROM tbl_windows_mode WHERE 1=1"
            +"<if test=\"name!=null and name!=''\">"+
            "AND name=#{name}"+
            "</if>"
            +"<if test=\"width!=null and width!=''\">"+
            "AND width=#{width}"+
            "</if>"
            +"<if test=\"height!=null and height!=''\">"+
            "AND height=#{height}"+
            "</if>"
            +"<if test=\"windowcount!=null and windowcount!=''\">"+
            "AND windowcount=#{windowcount}"+
            "</if>"
            +"<if test=\"creator!=null and creator!=''\">"+
            "AND creator=#{creator}"+
            "</if>"
            +"<if test=\"createtime!=null and createtime!=''\">"+
            "AND createtime=#{createtime}"+
            "</if>"
            +"<if test=\"status!=null and status!=''\">"+
            "AND status=#{status}"+
            "</if>"
            +" ORDER BY  sequence </script>")
    List<TblWindowsMode> queryList(TblWindowsMode mode);

    @Select("select * from tbl_windows_mode ORDER BY  sequence ")
    List<TblWindowsMode> queryForAllObject(BaseModel baseModel);

    @Insert("<script>INSERT INTO tbl_windows_mode (id,name,width,height,windowcount,creator,createtime,status,type,disflag,sequence) values "
            +"(#{id},#{name},#{width},#{height},#{windowcount},#{creator},#{createtime},#{status},#{type},#{disflag},#{sequence})</script>")
    void save(TblWindowsMode tblWindowsMode);

    @Update("<script>UPDATE tbl_windows_mode set name=#{name},width=#{width},height=#{height},windowcount=#{windowcount},status=#{status},type=#{type},disflag=#{disflag},sequence=#{sequence} where id =#{id}</script>")
    void update(TblWindowsMode tblWindowsMode);

    @Delete("<script>DELETE FROM tbl_windows_mode where id =#{id}</script>")
    void delete(String id);

    //Todo
    @Delete("DELETE FROM tbl_windows_mode WHERE id IN (1,2)")
    void deleteBatch(String[] ids);

    @Select("<script>SELECT  count(*) FROM tbl_windows_mode_detail WHERE 1=1"
            +"<if test=\"id!=null and id!=''\">"+
             "AND id=#{id}"+
            "</if>"
            +"<if test=\"name!=null and name!=''\">"+
             "AND name=#{name}"+
            "</if>"
            +"<if test=\"width!=null and width!=''\">"+
             "AND width=#{width}"+
            "</if>"
            +"<if test=\"height!=null and height!=''\">"+
             "AND height=#{height}"+
            "</if>"
            +"<if test=\"windowcount!=null and windowcount!=''\">"+
             "AND windowcount=#{windowcount}"+
            "</if>"
            +"<if test=\"creator!=null and creator!=''\">"+
             "AND creator=#{creator}"+
            "</if>"
            +"<if test=\"createtime!=null and createtime!=''\">"+
             "AND createtime=#{createtime}"+
            "</if>"
            +"<if test=\"status!=null and status!=''\">"+
            "AND status=#{status}"+
            "</if>"
            +"</script>")
    int queryTotal(Map<String, Object> map);

}
