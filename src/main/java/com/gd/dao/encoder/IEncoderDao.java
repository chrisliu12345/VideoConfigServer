package com.gd.dao.encoder;

import com.gd.domain.account_user.AccountUser;
import com.gd.domain.base.BaseModel;



import com.gd.domain.encoder.Encoder1;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/8/2 0002.
 */
@Repository("encDao")
public interface IEncoderDao {
  /*  @Insert("<script>INSERT INTO con_encoder " +
            "(GROUPS, ENCODER_NAME, ENCODER_ADDRESS, ENCODER_PORT, ENCODER_CHANNEL, ENCODER_STREAM_NUMBER, DECOD_CHANNEL, LIT_CHANNEL_NUMBER, LOGINNAME, PASSWORD) VALUES " +
            "(#{groups},#{encoder_name},#{encoder_address},#{encoder_port},#{encoder_channel},#{encoder_stream_number},#{decod_channel},#{lit_channel_number},#{loginname},#{password})</script>")
    void addObject(Encoder encoder);*/

    @Insert("<script>INSERT INTO tbl_decoder_channel " +
            "(ChannelID, ProtocolType, DecoderID, DecoderChannelID, CamID, MatrixID, MatrixInChannelNo) VALUES " +
            "(#{ChannelID},#{ProtocolType},#{DecoderID},#{DecoderChannelID},#{CamID},#{MatrixID},#{MatrixInChannelNo})</script>")
    void addObject1(Encoder1 encoder1);

    @Select("<script>SELECT * FROM tbl_decoder_channel </script>")
    List<Encoder1> queryForObject1(Encoder1 encoder1);

  /*  @Select("<script>SELECT * FROM con_encoder </script>")
    List<Encoder> queryForObject(Encoder encoder);*/



    @Delete("<script>DELETE  FROM tbl_decoder_channel where ChannelID=#{ChannelID}</script> ")
    void deleteObject(Encoder1 encoder1);

    @Delete("<script>DELETE  FROM con_encoder </script> ")
    void delete_allObject();

    @Update("<script>UPDATE tbl_decoder_channel set ProtocolType=#{ProtocolType},DecoderID=#{DecoderID},"+
            "DecoderChannelID=#{DecoderChannelID},CamID=#{CamID}, MatrixID=#{MatrixID},MatrixInChannelNo=#{MatrixInChannelNo} "+
            "where ChannelID=#{ChannelID}</script>")
    int updateForObject(Encoder1 encoder1);

    @Select("<script>SELECT GROUPS FROM con_encoder </script>")
    List<String> queryForGroup();
}
