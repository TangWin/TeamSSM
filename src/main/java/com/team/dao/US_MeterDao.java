package com.team.dao;

import com.team.entity.US_Meter;

import java.util.List;

public interface US_MeterDao {

    /*
     *插入一条数据到水表
     */
    public void insertOne(US_Meter meter);

    /*
     *插入一条数据到水表
     */
    public int getOne(String UserNo);

}
