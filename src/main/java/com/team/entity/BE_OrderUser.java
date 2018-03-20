package com.team.entity;

public class BE_OrderUser {

    private int iD;
    private String orderNo;
    private String userName;
    private String phone;
    private String sMSPhone;
    private String address;
    private double projectMoney;
    private double realMoney;
    private String invoiceNo;
    private String formula;
    private String contractNum;
    private int meterTypeID;
    private String meterName;
    private int maxValue;
    private int startValue;
    private String meterFactory;
    private String docNum;
    private String userNo;

    public BE_OrderUser() {
    }

    public BE_OrderUser(int iD, String orderNo, String userName, String phone, String sMSPhone, String address, double projectMoney, double realMoney, String invoiceNo, String formula, String contractNum, int meterTypeID, String meterName, int maxValue, int startValue, String meterFactory, String docNum, String userNo) {
        this.iD = iD;
        this.orderNo = orderNo;
        this.userName = userName;
        this.phone = phone;
        this.sMSPhone = sMSPhone;
        this.address = address;
        this.projectMoney = projectMoney;
        this.realMoney = realMoney;
        this.invoiceNo = invoiceNo;
        this.formula = formula;
        this.contractNum = contractNum;
        this.meterTypeID = meterTypeID;
        this.meterName = meterName;
        this.maxValue = maxValue;
        this.startValue = startValue;
        this.meterFactory = meterFactory;
        this.docNum = docNum;
        this.userNo = userNo;
    }

    @Override
    public String toString() {
        return "BE_OrderUser{" +
                "iD=" + iD +
                ", orderNo='" + orderNo + '\'' +
                ", userName='" + userName + '\'' +
                ", phone='" + phone + '\'' +
                ", sMSPhone='" + sMSPhone + '\'' +
                ", address='" + address + '\'' +
                ", projectMoney=" + projectMoney +
                ", realMoney=" + realMoney +
                ", invoiceNo='" + invoiceNo + '\'' +
                ", formula='" + formula + '\'' +
                ", contractNum='" + contractNum + '\'' +
                ", meterTypeID=" + meterTypeID +
                ", meterName='" + meterName + '\'' +
                ", maxValue=" + maxValue +
                ", startValue=" + startValue +
                ", meterFactory='" + meterFactory + '\'' +
                ", docNum='" + docNum + '\'' +
                ", userNo='" + userNo + '\'' +
                '}';
    }

    public int getiD() {
        return iD;
    }

    public void setiD(int iD) {
        this.iD = iD;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getInvoiceNo() {
        return invoiceNo;
    }

    public void setInvoiceNo(String invoiceNo) {
        this.invoiceNo = invoiceNo;
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula;
    }

    public String getContractNum() {
        return contractNum;
    }

    public void setContractNum(String contractNum) {
        this.contractNum = contractNum;
    }

    public int getMeterTypeID() {
        return meterTypeID;
    }

    public void setMeterTypeID(int meterTypeID) {
        this.meterTypeID = meterTypeID;
    }

    public String getMeterName() {
        return meterName;
    }

    public void setMeterName(String meterName) {
        this.meterName = meterName;
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

    public String getMeterFactory() {
        return meterFactory;
    }

    public void setMeterFactory(String meterFactory) {
        this.meterFactory = meterFactory;
    }

    public String getDocNum() {
        return docNum;
    }

    public void setDocNum(String docNum) {
        this.docNum = docNum;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }
}
