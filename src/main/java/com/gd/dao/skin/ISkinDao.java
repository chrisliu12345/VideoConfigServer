package com.gd.dao.skin;

import com.gd.domain.skin.Skin;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository("SkinDao")
public interface ISkinDao {
    @Select("select * from tbl_skin  ORDER BY id asc LIMIT 1")
    Skin queryForObject();
    @Update("UPDATE tbl_skin SET skinId=#{skinId},skinName=#{skinName}")
    void update(Skin skin);
    @Insert("INSERT INTO tbl_skin (skinId,skinName) VALUES (#{skinId},#{skinName})")
    void add(Skin skin);
}
