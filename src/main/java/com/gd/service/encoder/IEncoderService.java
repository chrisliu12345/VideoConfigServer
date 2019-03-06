package com.gd.service.encoder;



import com.gd.domain.encoder.Encoder1;

import java.util.List;

/**
 * Created by Administrator on 2017/8/2 0002.
 */
public interface IEncoderService {
   String add1(Encoder1 encoder1);
   List<Encoder1> list1(Encoder1 encoder1);
   void delete(Encoder1 encoder1);
   void update(Encoder1 encoder1);
   void delete_all();

   List<String> listGroup();
}
