package com.team.entity;

/**
 * Created by Administrator on 2018/3/11 0011.
 * 任务分配
 */
public class Rd_Task {

    private  int id; //id
    private  int readYear;//分配年份
    private  int readMonth; //分配月份
    private  int volumeId;  //分配的表册
    private  int EmpId; //分配的员工

    public Rd_Task() {
    }

    public Rd_Task(int id, int readYear, int readMonth, int volumeId, int empId) {
        this.id = id;
        this.readYear = readYear;
        this.readMonth = readMonth;
        this.volumeId = volumeId;
        EmpId = empId;
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

    public int getVolumeId() {
        return volumeId;
    }

    public void setVolumeId(int volumeId) {
        this.volumeId = volumeId;
    }

    public int getEmpId() {
        return EmpId;
    }

    public void setEmpId(int empId) {
        EmpId = empId;
    }
}
