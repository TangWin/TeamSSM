package com.team.entity;

import java.io.Serializable;

/**
 * 菜单实体类
 * @author TW
 * 2018/02/27
 */
public class SY_Menu implements Serializable {

    private Integer id ;
    private String menuName ;
    private Integer parent ;
    private String url ;
    private Integer orderIndex ;
    private Integer flowID;
    private Boolean disabled ;


    public SY_Menu() {
    }

    public SY_Menu(Integer id, String menuName, Integer parent, String url, Integer orderIndex, Integer flowID, Boolean disabled) {
        this.id = id;
        this.menuName = menuName;
        this.parent = parent;
        this.url = url;
        this.orderIndex = orderIndex;
        this.flowID = flowID;
        this.disabled = disabled;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public Integer getParent() {
        return parent;
    }

    public void setParent(Integer parent) {
        this.parent = parent;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getOrderIndex() {
        return orderIndex;
    }

    public void setOrderIndex(Integer orderIndex) {
        this.orderIndex = orderIndex;
    }

    public Integer getFlowID() {
        return flowID;
    }

    public void setFlowID(Integer flowID) {
        this.flowID = flowID;
    }

    public Boolean getDisabled() {
        return disabled;
    }

    public void setDisabled(Boolean disabled) {
        this.disabled = disabled;
    }
}
