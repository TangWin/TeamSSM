package com.team.entity;

import java.util.Date;

public class US_User {

    private String userNo;
    private String userName;
    private String aBC;
    private Date createDate;
    private String address;
    private String phone;
    private String sMSPhone;
    private int areaID;
    private String userType;
    private String payType;
    private String bankName;
    private String bankNum;
    private String formula;
    private double userMoney;
    private int meterID;
    private String docNum;
    private String pwd;
    private String contractNum;
    private Date contractDate;
    private int volumeID;
    private int volumeOrderIndex;
    private byte disabled;


    public US_User() {
    }

    public US_User(String userNo, String userName, String aBC, Date createDate, String address, String phone, String sMSPhone, int areaID, String userType, String payType, String bankName, String bankNum, String formula, double userMoney, int meterID, String docNum, String pwd, String contractNum, Date contractDate, int volumeID, int volumeOrderIndex, byte disabled) {
        this.userNo = userNo;
        this.userName = userName;
        this.aBC = aBC;
        this.createDate = createDate;
        this.address = address;
        this.phone = phone;
        this.sMSPhone = sMSPhone;
        this.areaID = areaID;
        this.userType = userType;
        this.payType = payType;
        this.bankName = bankName;
        this.bankNum = bankNum;
        this.formula = formula;
        this.userMoney = userMoney;
        this.meterID = meterID;
        this.docNum = docNum;
        this.pwd = pwd;
        this.contractNum = contractNum;
        this.contractDate = contractDate;
        this.volumeID = volumeID;
        this.volumeOrderIndex = volumeOrderIndex;
        this.disabled = disabled;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getaBC() {
        return aBC;
    }

    public void setaBC(String aBC) {
        this.aBC = aBC;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getsMSPhone() {
        return sMSPhone;
    }

    public void setsMSPhone(String sMSPhone) {
        this.sMSPhone = sMSPhone;
    }

    public int getAreaID() {
        return areaID;
    }

    public void setAreaID(int areaID) {
        this.areaID = areaID;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getBankNum() {
        return bankNum;
    }

    public void setBankNum(String bankNum) {
        this.bankNum = bankNum;
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula;
    }

    public double getUserMoney() {
        return userMoney;
    }

    public void setUserMoney(double userMoney) {
        this.userMoney = userMoney;
    }

    public int getMeterID() {
        return meterID;
    }

    public void setMeterID(int meterID) {
        this.meterID = meterID;
    }

    public String getDocNum() {
        return docNum;
    }

    public void setDocNum(String docNum) {
        this.docNum = docNum;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getContractNum() {
        return contractNum;
    }

    public void setContractNum(String contractNum) {
        this.contractNum = contractNum;
    }

    public Date getContractDate() {
        return contractDate;
    }

    public void setContractDate(Date contractDate) {
        this.contractDate = contractDate;
    }

    public int getVolumeID() {
        return volumeID;
    }

    public void setVolumeID(int volumeID) {
        this.volumeID = volumeID;
    }

    public int getVolumeOrderIndex() {
        return volumeOrderIndex;
    }

    public void setVolumeOrderIndex(int volumeOrderIndex) {
        this.volumeOrderIndex = volumeOrderIndex;
    }

    public byte getDisabled() {
        return disabled;
    }

    public void setDisabled(byte disabled) {
        this.disabled = disabled;
    }
}
