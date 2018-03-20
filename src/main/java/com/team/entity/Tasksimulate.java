package com.team.entity;

/**
 * Created by Administrator on 2018/3/11 0011.
 */
public class Tasksimulate {
    private  int id;
    private int readYear;
    private int readMonth;
    private String areaName;
    private String volumeName;


    public Tasksimulate() {
    }

    public Tasksimulate(int id, int readYear, int readMonth, String areaName, String volumeName) {
        this.id = id;
        this.readYear = readYear;
        this.readMonth = readMonth;
        this.areaName = areaName;
        this.volumeName = volumeName;
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

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getVolumeName() {
        return volumeName;
    }

    public void setVolumeName(String volumeName) {
        this.volumeName = volumeName;
    }
}
