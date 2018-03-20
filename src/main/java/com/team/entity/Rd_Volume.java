package com.team.entity;

/**
 * Created by Administrator on 2018/1/28 0028.
 */
public class Rd_Volume {
    private Integer id;
    private String volumeName; //表册名称
    private Integer areaID; //所属辖区ID',
    private Integer orderIndex; //排列顺序',
    private String  remark; //备注',
    private Integer  disabled; //'禁用 （0可使用 1已禁用）

    public Rd_Volume(Integer id, String volumeName, Integer areaID, Integer orderIndex, String remark, Integer disabled) {
        this.id = id;
        this.volumeName = volumeName;
        this.areaID = areaID;
        this.orderIndex = orderIndex;
        this.remark = remark;
        this.disabled = disabled;
    }
    public Rd_Volume(String volumeName, Integer areaID,  String remark) {
              this.volumeName = volumeName;
              this.areaID = areaID;
              this.remark = remark;

    }

    public Rd_Volume(){

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVolumeName() {
        return volumeName;
    }

    public void setVolumeName(String volumeName) {
        this.volumeName = volumeName;
    }

    public Integer getAreaID() {
        return areaID;
    }

    public void setAreaID(Integer areaID) {
        this.areaID = areaID;
    }

    public Integer getOrderIndex() {
        return orderIndex;
    }

    public void setOrderIndex(Integer orderIndex) {
        this.orderIndex = orderIndex;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getDisabled() {
        return disabled;
    }

    public void setDisabled(Integer disabled) {
        this.disabled = disabled;
    }
}
