package com.team.controller;


import com.team.dao.SY_AreaDao;
import com.team.entity.Sy_Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SY_AreaController {


    @Autowired
    private SY_AreaDao sy_areaDao ;

    @ResponseBody
    @RequestMapping(value = "getAreaAll")
    public List<Sy_Area> getAreaAll(){

        List<Sy_Area> areaList = sy_areaDao.getAreaAllPage();



        return areaList ;
    }


}
