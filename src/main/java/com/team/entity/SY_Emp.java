package com.team.entity;

import java.io.Serializable;

/**
 * 员工实体类
 * 唐威
 * 2018/01/26  15：00
 */
public class SY_Emp implements Serializable {

    private Integer id ;
    private String empName ;
    private String empNo ;
    private String pwd ;
    private Integer deptId ;
    private String remark ;
    private Boolean disabled ;

    public SY_Emp() {
    }

    public SY_Emp(Integer id, String empName, String empNo, String pwd, Integer deptId, String remark, Boolean disabled) {
        this.id = id;
        this.empName = empName;
        this.empNo = empNo;
        this.pwd = pwd;
        this.deptId = deptId;
        this.remark = remark;
        this.disabled = disabled;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getEmpNo() {
        return empNo;
    }

    public void setEmpNo(String empNo) {
        this.empNo = empNo;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
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
