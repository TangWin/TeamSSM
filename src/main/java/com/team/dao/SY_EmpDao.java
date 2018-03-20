package com.team.dao;

import com.team.entity.SY_Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SY_EmpDao  {


    /**
     * 登录
     *
     * @param empNo
     * @param pwd
     * @return
     */
    public SY_Emp login(@Param("empNo") String empNo, @Param("pwd") String pwd);

    /**
     * 模糊查询部门和员工信息，提供分页
     * @param search
     * @param currentPage
     * @param pageCount
     * @return
     */
    public List<SY_Emp> getEmpPage(@Param("search")String search , @Param("currentPage")Integer currentPage , @Param("pageCount")Integer pageCount);


    /**
     * 根据Id得到单个员工对象
     * @param id
     * @return
     */
    public SY_Emp getEmpById(@Param("id")Integer id);



    /**
     * 修改员工信息
     * @param emp
     * @return
     */
    public Integer updateEmpById(SY_Emp emp);


    /**
     * 删除
     * @param id
     * @return
     */
    public Integer delEmpById(Integer id);


    /**
     * 添加
     * @param emp
     * @return
     */
    public Integer addEmp(SY_Emp emp);


}
