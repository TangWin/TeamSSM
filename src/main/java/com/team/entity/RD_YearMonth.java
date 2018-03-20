package com.team.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

/**
 * Created by Administrator on 2018/3/1 0001.
 * 抄表年月
 */
public class RD_YearMonth {
     private   Integer id; //id
     private   int readerYear;//抄表年份
     private   int readerMonth;//抄表月份
     private   int isCurrent; //是否当前
     private   Date initDate;//初始化开始时间
     private   Date endDate;//结束时间
     private   SY_Emp sy_emp;//初始化操作人员
    public RD_YearMonth() {

    }

    @Override
    public String toString() {
        return "RD_YearMonth{" +
                "id=" + id +
                ", readerYear=" + readerYear +
                ", readerMonth=" + readerMonth +
                ", isCurrent=" + isCurrent +
                ", initDate=" + initDate +
                ", endDate=" + endDate +
                ", sy_emp=" + sy_emp +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getReaderYear() {
        return readerYear;
    }

    public void setReaderYear(int readerYear) {
        this.readerYear = readerYear;
    }

    public int getReaderMonth() {
        return readerMonth;
    }

    public void setReaderMonth(int readerMonth) {
        this.readerMonth = readerMonth;
    }

    public int getIsCurrent() {
        return isCurrent;
    }

    public void setIsCurrent(int isCurrent) {
        this.isCurrent = isCurrent;
    }

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    public Date getInitDate() {
        return initDate;
    }

    public void setInitDate(Date initDate) {
        this.initDate = initDate;
    }

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd")
    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public SY_Emp getSy_emp() {
        return sy_emp;
    }

    public void setSy_emp(SY_Emp sy_emp) {
        this.sy_emp = sy_emp;
    }
}
