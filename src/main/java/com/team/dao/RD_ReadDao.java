package com.team.dao;

import org.apache.ibatis.annotations.Param;

import java.security.PrivateKey;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/3/11 0011.
 */
public interface RD_ReadDao {

    public List<Map<String,Object>> getallread(@Param("volumeid") int volumeid, @Param("date") Date date);

    /**
     * 修改录入值以及
     */
     public  void updatemount(@Param("id") int id, @Param("curvalue") int curvalue, @Param("amount") int amount);
    /**
     * 修改录入状态
     */
      public  void updatenter(int id);

    /**
     * 未审核的数据绑定
     */
    public List<Map<String,Object>> auditdetail(@Param("readyear") int readyear, @Param("readmonth") int readmonth, @Param("volumeid") int volumeid);


    //审核
    public void updatereadmore(@Param("auditempid") int auditempid, @Param("auditdate") Date auditdate, @Param("id") int id);

}
