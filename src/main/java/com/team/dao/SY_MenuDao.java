package com.team.dao;

import com.team.entity.SY_Menu;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

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


    /**
     * 添加单个员工菜单权限
     * @param paramMap
     * @return
     */
    public Integer addEmpMenuPower(@Param("paramMap") List<Map<String , String>> paramMap) ;


    public Integer delEmpMenuPower(@Param("empId") Integer empId , @Param("menuId") Integer menuId);

}
