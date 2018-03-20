package com.team.dao;

import com.team.entity.RD_YearMonth;
import com.team.entity.SY_Emp;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/3/1 0001.
 */
public interface RD_YearMonthDao {

    public List<RD_YearMonth> getAllsyemp();

    public List<Map<String, Object>> getSyempLists();

}
