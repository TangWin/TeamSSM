package com.team.controller;

import com.team.dao.RD_YearMonthDao;
import com.team.entity.RD_YearMonth;
import com.team.entity.SY_Emp;
import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.lang.SystemUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/3/1 0001.
 * 抄表年月controller
 */
@Controller()
@RequestMapping("/yearmonth")
public class RD_YearMonthController {

    @Autowired
    private RD_YearMonthDao rdYearMonthDao;

    /**
     *得到任务分配的所有数据
     */

    @RequestMapping("/allyearmonth")
    @ResponseBody
    public List<Map<String,Object>> allyearmonth(Integer pageIndex,Integer pageSize){
        //数据查询
         List<Map<String,Object>> yearMonthList=rdYearMonthDao.getSyempLists();
        return  yearMonthList;
    }



}
