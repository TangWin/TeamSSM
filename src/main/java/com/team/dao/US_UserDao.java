package com.team.dao;

import com.team.entity.BE_OrderUser;
import com.team.entity.US_User;
import org.apache.ibatis.annotations.Param;

public interface US_UserDao {

    /*
     *找到用户的一条
     */
    public US_User getOne(String UserNo);

    /**
     * 修改用户的余额
     */
    public void updateMoney(@Param("UserNo") String UserNo, @Param("UserMoney") double UserMoney);
    /**
     * 修改用户的提比提量
     */
    public void updateTibi(@Param("UserNo") String UserNo, @Param("Formula") String Formula);
    /**
     * 修改用户的档案编号
     */
    public void updateDangan(@Param("UserNo") String UserNo, @Param("DocNum") String DocNum);
    /**
     * 销户
     */
    public void updatexm(@Param("UserNo") String UserNo, @Param("Disabled") byte Disabled);
}
