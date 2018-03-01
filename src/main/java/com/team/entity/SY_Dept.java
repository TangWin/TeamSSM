package com.team.entity;

import java.io.Serializable;

/**
 * 部门实体类
 * 唐威
 * 2018/01/26  15：00
 */
public class SY_Dept implements Serializable{

    private Integer ID ;
    private String deptName ;
    private String remark ;
    private Boolean disabled ;




    public SY_Dept() {
    }


    public SY_Dept(Integer ID, String deptName, String remark, Boolean disabled) {
        this.ID = ID;
        this.deptName = deptName;
        this.remark = remark;
        this.disabled = disabled;
    }

    @Override
    public String toString() {
        return "SY_Dept{" +
                "ID=" + ID +
                ", deptName='" + deptName + '\'' +
                ", remark='" + remark + '\'' +
                ", disabled=" + disabled +
                '}';
    }

    public Integer getID() {
        return ID;
    }

    public void setID(Integer ID) {
        this.ID = ID;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Boolean getDisabled() {
        return disabled;
    }

    public void setDisabled(Boolean disabled) {
        this.disabled = disabled;
    }
}
