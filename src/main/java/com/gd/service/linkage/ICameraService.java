package com.gd.service.linkage;


import com.gd.domain.camera.Camera1;
import com.gd.domain.channel.Channel;
import com.gd.domain.res_attr.Res_Attr;


import java.util.List;

/**
 * Created by Administrator on 2017/8/11 0011.
 */
public interface ICameraService {
    String add(Camera1 camera);//添加摄像机

    List<Camera1> listForCamera1();//查询所有摄像机,摄像机列表
    void delete(Camera1 camera);//删除摄像机

    void update(Camera1 camera);//更新摄像机

    List<Res_Attr> queryForCameralist();

    List<Res_Attr> queryForCameraNodes(String id);

    String  queryForProtocolType(String ss);

    void updateForName(Res_Attr res_attr);

    void deleteForDeviceID(String de);

    List<Channel> getCameraToChannel(Integer id);

    Res_Attr getCameraToResID(Integer id);

    List<Res_Attr> searchCameraName(Res_Attr res_attr);

    void updateAlias(Camera1 camera1);
    String queryForStreamingIP(int s);

}
