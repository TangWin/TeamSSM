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


    /**
     * 增加单个部门
     * User：TW
     * 2018/01/27
     * @param dept
     * @return
     */
    public Integer addDept(SY_Dept dept);


    /**
     * 根据id得到单个部门对象
     * User：TW
     * 2018/01/27
     * @param id
     * @return
     */
    public SY_Dept getDeptById(Integer id);


    /**
     * 根据部门id删除部门
     * @param id
     * @return
     */
    public Integer delDeptById(Integer id);


    /**
     * 根据id修改部门
     * @param dept
     * @return
     */
    public Integer updateDept(SY_Dept dept);



}
