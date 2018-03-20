package com.team.entity;

import java.io.Serializable;
import java.util.Date;

public class US_Meter implements Serializable{

    private String meterNo;
    private String userNo;
    private String meterName;
    private int meterTypeID;
    private int maxValue;
    private int startValue;
    private Date setupDate;
    private String factory;
    private byte disabled;


    public US_Meter() {

    }

    public US_Meter(String meterNo, String userNo, String meterName, int meterTypeID, int maxValue, int startValue, Date setupDate, String factory, byte disabled) {
        this.meterNo = meterNo;
        this.userNo = userNo;
        this.meterName = meterName;
        this.meterTypeID = meterTypeID;
        this.maxValue = maxValue;
        this.startValue = startValue;
        this.setupDate = setupDate;
        this.factory = factory;
        this.disabled = disabled;
    }

    public String getMeterNo() {
        return meterNo;
    }

    public void setMeterNo(String meterNo) {
        this.meterNo = meterNo;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    public String getMeterName() {
        return meterName;
    }

    public void setMeterName(String meterName) {
        this.meterName = meterName;
    }

    public int getMeterTypeID() {
        return meterTypeID;
    }

    public void setMeterTypeID(int meterTypeID) {
        this.meterTypeID = meterTypeID;
    }

    public int getMaxValue() {
        return maxValue;
    }

    public void setMaxValue(int maxValue) {
        this.maxValue = maxValue;
    }

    public int getStartValue() {
        return startValue;
    }

    public void setStartValue(int startValue) {
        this.startValue = startValue;
    }

    public Date getSetupDate() {
        return setupDate;
    }

    public void setSetupDate(Date setupDate) {
        this.setupDate = setupDate;
    }

    public String getFactory() {
        return factory;
    }

    public void setFactory(String factory) {
        this.factory = factory;
    }

    public byte getDisabled() {
        return disabled;
    }

    public void setDisabled(byte disabled) {
        this.disabled = disabled;
    }
}
