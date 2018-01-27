package com.team.controller;

import com.team.dao.SY_DeptDao;
import com.team.entity.SY_Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 *  Dept     部门controller类
 *  唐威
 */
@Controller
public class SY_DeptController {

    @Autowired
    private SY_DeptDao sy_deptDao ;

    @ResponseBody
    @RequestMapping(value = "getDeptAll")
    public List<SY_Dept> getAll(){

        List<SY_Dept> depts = sy_deptDao.getDeptAll();

        return depts ;
    }




}
