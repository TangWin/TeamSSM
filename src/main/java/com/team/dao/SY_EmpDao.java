package com.team.dao;

import com.team.entity.SY_Emp;
import org.apache.ibatis.annotations.Param;

public interface SY_EmpDao {


    /**
     * 登录
     * @param empNo
     * @param pwd
     * @return
     */
    public SY_Emp login(@Param("empNo") String empNo ,@Param("pwd") String pwd);


}
