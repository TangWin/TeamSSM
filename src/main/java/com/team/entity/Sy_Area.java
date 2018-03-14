package com.team.entity;

/**
 * 辖区实体类
 * @author TW
 * 2018/03/05
 */
public class Sy_Area {

  private Integer id;
  private String areaName;
  private String remark;
  private Boolean disabled;

  @Override
  public String toString() {
    return "Sy_Area{" +
            "id=" + id +
            ", areaName='" + areaName + '\'' +
            ", remark='" + remark + '\'' +
            ", disabled='" + disabled + '\'' +
            '}';
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getAreaName() {
    return areaName;
  }

  public void setAreaName(String areaName) {
    this.areaName = areaName;
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
