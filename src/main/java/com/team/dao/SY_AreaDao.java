package com.team.dao;

import com.team.entity.Sy_Area;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SY_AreaDao {

    /**
     * 获取所有的地址
     * @return
     */
    public List<Sy_Area> getAreaAllPage();


    /**
     * 根据id获取抄表辖区
     * @param id
     * @return
     */
    public Sy_Area getAreaById(@Param("id")Integer id);

    /**
     * 增加
     * @param area
     * @return
     */
    public Integer insertArea(Sy_Area area);


    /**
     * 修改
     * @param area
     * @return
     */
    public Integer updateArea(Sy_Area area);


    /**
     * 删除
     * @param id
     * @return
     */
    public Integer delArea(int id);

}
