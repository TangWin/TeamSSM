package com.team.dao;

import com.team.entity.SY_Menu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 菜单接口dao
 * @author TW
 *
 */
public interface SY_MenuDao {

    /**
     * 根据员工id得到其所有的菜单对象
     * @param EmpId  为空则查询所有的菜单对象
     * @return
     */
    public List<SY_Menu> getMenuAllByEmpId(@Param("EmpId") Integer EmpId);



}
