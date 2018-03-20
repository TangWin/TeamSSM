package com.team.entity;

import java.util.Date;

/**
 * Created by Administrator on 2018/3/15 0015.
 */
public class RD_ChangeMaxValue {

     private int id;
     private Date datee;
     private int empID;
     private String userNo;
     private String  meterNo;
     private int maxValue1;
     private int maxValue2;
     private String remark;


    public RD_ChangeMaxValue() {
    }

    public RD_ChangeMaxValue(int id, Date datee, int empID, String userNo, String meterNo, int maxValue1, int maxValue2, String remark) {
        this.id = id;
        this.datee = datee;
        this.empID = empID;
        this.userNo = userNo;
        this.meterNo = meterNo;
        this.maxValue1 = maxValue1;
        this.maxValue2 = maxValue2;
        this.remark = remark;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDatee() {
        return datee;
    }

    public void setDatee(Date datee) {
        this.datee = datee;
    }

    public int getEmpID() {
        return empID;
    }

    public void setEmpID(int empID) {
        this.empID = empID;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    public String getMeterNo() {
        return meterNo;
    }

    public void setMeterNo(String meterNo) {
        this.meterNo = meterNo;
    }

    public int getMaxValue1() {
        return maxValue1;
    }

    public void setMaxValue1(int maxValue1) {
        this.maxValue1 = maxValue1;
    }

    public int getMaxValue2() {
        return maxValue2;
    }

    public void setMaxValue2(int maxValue2) {
        this.maxValue2 = maxValue2;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
