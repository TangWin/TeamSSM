package com.team.dao;

import com.team.entity.BE_Order;
import com.team.entity.BE_OrderUser;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface BE_OrderUserDao {

    /**
     * 添加工单详细
     */
    public void addOrderUser(BE_OrderUser be_orderUser);

    /**
     * 修改工单详细的应交金额 实交金额
     */
    public void updateMoney(@Param("OrderNo") String OrderNo, @Param("ProjectMoney") double ProjectMoney, @Param("RealMoney") double RealMoney);

    /**
     * 修改工单详细的提比提量
     */
    public void updateTibi(@Param("OrderNo") String OrderNo, @Param("Formula") String Formula);
    /**
     * 修改工单详细的档案编号
     */
    public void updateDangan(@Param("OrderNo") String OrderNo, @Param("DocNum") String DocNum);
    /*
     *找到用户详情的一条
     */
    public BE_OrderUser getOne(String OrderNo);

    /**
     * 修改工单详细的水表信息
     */
    public void updateInfo(@Param("OrderNo") String OrderNo, @Param("MeterTypeID") int MeterTypeID, @Param("MeterName") String MeterName, @Param("MaxValue") int MaxValue, @Param("StartValue") int StartValue, @Param("MeterFactory") String MeterFactory);


}
