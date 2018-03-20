package com.team.entity;

import java.io.Serializable;
import java.util.Date;

public class BE_Order implements Serializable{

    private String orderNo;
    private int orderType;
    private int stepID;
    private int createEmp;
    private Date createDate;
    private int completeEmp;
    private Date completeDate;
    private int lastEditEmp;
    private Date lastEditDate;
    private String userName;
    private String userType;
    private String address;
    private String linkMan;
    private String phone;
    private String useTarget;
    private int houseHeight;
    private int maxAmount;
    private int meterTypeID;
    private int meterCount;
    private String userRemark;
    private String payType;
    private String bankCompany;
    private String bankNum;
    private String oldUserNo;
    private String oldUserName;
    private String oldUserPhone;
    private String oldUserAddr;
    private String oldMeter;
    private int auditEmpID;
    private String auditMessage;
    private double projectMoney;
    private double realMoney;
    private Date payDate;
    private Date projectDate1;
    private Date projectDate2;
    private int areaID;
    private String abortCause;

    public BE_Order() {

    }

    public BE_Order(String orderNo, int orderType, int stepID, Date lastEditDate, String userName) {
        this.orderNo = orderNo;
        this.orderType = orderType;
        this.stepID = stepID;
        this.lastEditDate = lastEditDate;
        this.userName = userName;
    }

    public BE_Order(String orderNo, int orderType, int stepID, int createEmp, Date createDate, int completeEmp, Date completeDate, int lastEditEmp, Date lastEditDate, String userName, String userType, String address, String linkMan, String phone, String useTarget, int houseHeight, int maxAmount, int meterTypeID, int meterCount, String userRemark, String payType, String bankCompany, String bankNum, String oldUserNo, String oldUserName, String oldUserPhone, String oldUserAddr, String oldMeter, int auditEmpID, String auditMessage, double projectMoney, double realMoney, Date payDate, Date projectDate1, Date projectDate2, int areaID, String abortCause) {
        this.orderNo = orderNo;
        this.orderType = orderType;
        this.stepID = stepID;
        this.createEmp = createEmp;
        this.createDate = createDate;
        this.completeEmp = completeEmp;
        this.completeDate = completeDate;
        this.lastEditEmp = lastEditEmp;
        this.lastEditDate = lastEditDate;
        this.userName = userName;
        this.userType = userType;
        this.address = address;
        this.linkMan = linkMan;
        this.phone = phone;
        this.useTarget = useTarget;
        this.houseHeight = houseHeight;
        this.maxAmount = maxAmount;
        this.meterTypeID = meterTypeID;
        this.meterCount = meterCount;
        this.userRemark = userRemark;
        this.payType = payType;
        this.bankCompany = bankCompany;
        this.bankNum = bankNum;
        this.oldUserNo = oldUserNo;
        this.oldUserName = oldUserName;
        this.oldUserPhone = oldUserPhone;
        this.oldUserAddr = oldUserAddr;
        this.oldMeter = oldMeter;
        this.auditEmpID = auditEmpID;
        this.auditMessage = auditMessage;
        this.projectMoney = projectMoney;
        this.realMoney = realMoney;
        this.payDate = payDate;
        this.projectDate1 = projectDate1;
        this.projectDate2 = projectDate2;
        this.areaID = areaID;
        this.abortCause = abortCause;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public int getOrderType() {
        return orderType;
    }

    public void setOrderType(int orderType) {
        this.orderType = orderType;
    }

    public int getStepID() {
        return stepID;
    }

    public void setStepID(int stepID) {
        this.stepID = stepID;
    }

    public int getCreateEmp() {
        return createEmp;
    }

    public void setCreateEmp(int createEmp) {
        this.createEmp = createEmp;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getCompleteEmp() {
        return completeEmp;
    }

    public void setCompleteEmp(int completeEmp) {
        this.completeEmp = completeEmp;
    }

    public Date getCompleteDate() {
        return completeDate;
    }

    public void setCompleteDate(Date completeDate) {
        this.completeDate = completeDate;
    }

    public int getLastEditEmp() {
        return lastEditEmp;
    }

    public void setLastEditEmp(int lastEditEmp) {
        this.lastEditEmp = lastEditEmp;
    }

    public Date getLastEditDate() {
        return lastEditDate;
    }

    public void setLastEditDate(Date lastEditDate) {
        this.lastEditDate = lastEditDate;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLinkMan() {
        return linkMan;
    }

    public void setLinkMan(String linkMan) {
        this.linkMan = linkMan;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUseTarget() {
        return useTarget;
    }

    public void setUseTarget(String useTarget) {
        this.useTarget = useTarget;
    }

    public int getHouseHeight() {
        return houseHeight;
    }

    public void setHouseHeight(int houseHeight) {
        this.houseHeight = houseHeight;
    }

    public int getMaxAmount() {
        return maxAmount;
    }

    public void setMaxAmount(int maxAmount) {
        this.maxAmount = maxAmount;
    }

    public int getMeterTypeID() {
        return meterTypeID;
    }

    public void setMeterTypeID(int meterTypeID) {
        this.meterTypeID = meterTypeID;
    }

    public int getMeterCount() {
        return meterCount;
    }

    public void setMeterCount(int meterCount) {
        this.meterCount = meterCount;
    }

    public String getUserRemark() {
        return userRemark;
    }

    public void setUserRemark(String userRemark) {
        this.userRemark = userRemark;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public String getBankCompany() {
        return bankCompany;
    }

    public void setBankCompany(String bankCompany) {
        this.bankCompany = bankCompany;
    }

    public String getBankNum() {
        return bankNum;
    }

    public void setBankNum(String bankNum) {
        this.bankNum = bankNum;
    }

    public String getOldUserNo() {
        return oldUserNo;
    }

    public void setOldUserNo(String oldUserNo) {
        this.oldUserNo = oldUserNo;
    }

    public String getOldUserName() {
        return oldUserName;
    }

    public void setOldUserName(String oldUserName) {
        this.oldUserName = oldUserName;
    }

    public String getOldUserPhone() {
        return oldUserPhone;
    }

    public void setOldUserPhone(String oldUserPhone) {
        this.oldUserPhone = oldUserPhone;
    }

    public String getOldUserAddr() {
        return oldUserAddr;
    }

    public void setOldUserAddr(String oldUserAddr) {
        this.oldUserAddr = oldUserAddr;
    }

    public String getOldMeter() {
        return oldMeter;
    }

    public void setOldMeter(String oldMeter) {
        this.oldMeter = oldMeter;
    }

    public int getAuditEmpID() {
        return auditEmpID;
    }

    public void setAuditEmpID(int auditEmpID) {
        this.auditEmpID = auditEmpID;
    }

    public String getAuditMessage() {
        return auditMessage;
    }

    public void setAuditMessage(String auditMessage) {
        this.auditMessage = auditMessage;
    }

    public double getProjectMoney() {
        return projectMoney;
    }

    public void setProjectMoney(double projectMoney) {
        this.projectMoney = projectMoney;
    }

    public double getRealMoney() {
        return realMoney;
    }

    public void setRealMoney(double realMoney) {
        this.realMoney = realMoney;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    public Date getProjectDate1() {
        return projectDate1;
    }

    public void setProjectDate1(Date projectDate1) {
        this.projectDate1 = projectDate1;
    }

    public Date getProjectDate2() {
        return projectDate2;
    }

    public void setProjectDate2(Date projectDate2) {
        this.projectDate2 = projectDate2;
    }

    public int getAreaID() {
        return areaID;
    }

    public void setAreaID(int areaID) {
        this.areaID = areaID;
    }

    public String getAbortCause() {
        return abortCause;
    }

    public void setAbortCause(String abortCause) {
        this.abortCause = abortCause;
    }
}
