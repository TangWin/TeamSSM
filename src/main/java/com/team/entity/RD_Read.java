package com.team.entity;

import java.util.Date;

/**
 * Created by Administrator on 2018/3/11 0011.
 * 抄表数据
 */
public class RD_Read {
    private  int id;
    private  int readYear;
    private  int readMonth;
    private  String userNo;//用户编号
    private  String meterNo;//水表编码
    private  int  maxValue;//最大表码值
    private int volumeId;
    private  int volumeIndex;
    private  int readEmpID;
    private Date readDate;
    private int  preValue;//上个月的表码
    private int  enter;//是否输入
    private  int  curValue;//本月表码
    private int dial;//转表
    private int amount;//用水量
    private String formula;//套用提笔值比量
    private  int audit;//是否审核
    private  int auditEmpID;//审核人
    private  Date  auditDate;//审核时间

    public RD_Read() {
    }

    public RD_Read(int id, int readYear, int readMonth, String userNo, String meterNo, int maxValue, int volumeId, int volumeIndex, int readEmpID, Date readDate, int preValue, int enter, int curValue, int dial, int amount, String formula, int audit, int auditEmpID, Date auditDate) {
        this.id = id;
        this.readYear = readYear;
        this.readMonth = readMonth;
        this.userNo = userNo;
        this.meterNo = meterNo;
        this.maxValue = maxValue;
        this.volumeId = volumeId;
        this.volumeIndex = volumeIndex;
        this.readEmpID = readEmpID;
        this.readDate = readDate;
        this.preValue = preValue;
        this.enter = enter;
        this.curValue = curValue;
        this.dial = dial;
        this.amount = amount;
        this.formula = formula;
        this.audit = audit;
        this.auditEmpID = auditEmpID;
        this.auditDate = auditDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getReadYear() {
        return readYear;
    }

    public void setReadYear(int readYear) {
        this.readYear = readYear;
    }

    public int getReadMonth() {
        return readMonth;
    }

    public void setReadMonth(int readMonth) {
        this.readMonth = readMonth;
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

    public int getMaxValue() {
        return maxValue;
    }

    public void setMaxValue(int maxValue) {
        this.maxValue = maxValue;
    }

    public int getVolumeId() {
        return volumeId;
    }

    public void setVolumeId(int volumeId) {
        this.volumeId = volumeId;
    }

    public int getVolumeIndex() {
        return volumeIndex;
    }

    public void setVolumeIndex(int volumeIndex) {
        this.volumeIndex = volumeIndex;
    }

    public int getReadEmpID() {
        return readEmpID;
    }

    public void setReadEmpID(int readEmpID) {
        this.readEmpID = readEmpID;
    }

    public Date getReadDate() {
        return readDate;
    }

    public void setReadDate(Date readDate) {
        this.readDate = readDate;
    }

    public int getPreValue() {
        return preValue;
    }

    public void setPreValue(int preValue) {
        this.preValue = preValue;
    }

    public int getEnter() {
        return enter;
    }

    public void setEnter(int enter) {
        this.enter = enter;
    }

    public int getCurValue() {
        return curValue;
    }

    public void setCurValue(int curValue) {
        this.curValue = curValue;
    }

    public int getDial() {
        return dial;
    }

    public void setDial(int dial) {
        this.dial = dial;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula;
    }

    public int getAudit() {
        return audit;
    }

    public void setAudit(int audit) {
        this.audit = audit;
    }

    public int getAuditEmpID() {
        return auditEmpID;
    }

    public void setAuditEmpID(int auditEmpID) {
        this.auditEmpID = auditEmpID;
    }

    public Date getAuditDate() {
        return auditDate;
    }

    public void setAuditDate(Date auditDate) {
        this.auditDate = auditDate;
    }
}
