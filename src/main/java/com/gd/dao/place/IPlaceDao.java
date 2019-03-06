package com.gd.dao.place;

import com.gd.domain.place.Account_Place;
import com.gd.domain.place.Place;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018/1/26 0026.
 */
@Repository("placeDao")
public interface IPlaceDao {
    @Select("<script>SELECT * FROM tbl_place WHERE CSLXBH=FJCSBH</script>")
    List<Place> queryForObject();
    @Select("<script>SELECT * FROM tbl_place WHERE FJCSBH=#{CSLXBH} AND CSLXBH!=FJCSBH</script>")
    List<Place> queryForObjectSon(Place place);
    @Insert("<script>INSERT INTO tbl_account_place (accountId,accountName,PlaceId) VALUES" +
            " (#{accountId},#{accountName},#{PlaceId})</script>")
    void add(Account_Place accountPlace);
    @Delete("<script>DELETE FROM tbl_account_place WHERE accountId=#{accountId}</script>")
    void deleteForAccountId(Account_Place accountPlace);
}
