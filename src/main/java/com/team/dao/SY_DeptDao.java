package com.team.dao;

import com.team.entity.SY_Dept;

import java.util.List;

public interface SY_DeptDao {

    /**
     * 获取所有部门
     * User：TW
     * 2018/01/26
     * @return
     *
     */
    public List<SY_Dept> getDeptAll();

}
