package com.team.entity;

/**
 * Created by Administrator on 2018/3/15 0015.
 */
public class ReadSimulate {
    private  int id;
    private  String userNo;
    private String meterNo;
    private String userName;
    private String maxValue;

    public ReadSimulate() {
    }

    public ReadSimulate( String userNo, String meterNo, String userName, String maxValue) {

        this.userNo = userNo;
        this.meterNo = meterNo;
        this.userName = userName;
        this.maxValue = maxValue;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMaxValue() {
        return maxValue;
    }

    public void setMaxValue(String maxValue) {
        this.maxValue = maxValue;
    }
}
