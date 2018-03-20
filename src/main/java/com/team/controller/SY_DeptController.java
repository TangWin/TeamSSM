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
    private SY_DeptDao sy_deptDao;


    /**
     * 获取所有部门
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getDeptAll")
    public List<SY_Dept> getAll(){

        List<SY_Dept> depts = sy_deptDao.getDeptAll();

        return depts ;
    }


    /**
     * 根据id获取部门
     * @param requestId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getDeptById")
    public SY_Dept getDeptById(Integer requestId){

        SY_Dept syDept = null ;

        if (requestId!=null) {
            syDept = sy_deptDao.getDeptById(requestId);
        }

        return syDept ;
    }


    /**
     * 删除
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("delDeptById")
    public boolean delDeptById(Integer id){
        boolean flag = false ;
        System.out.println(id);
        Integer integer = sy_deptDao.delDeptById(id) ;
        if (integer > 0) {
            flag = true ;
        }
        return flag ;
    }

    /**
     * 增加
     * @param dept
     * @return
     */
    @ResponseBody
    @RequestMapping("addDept")
    public boolean addDept(SY_Dept dept){
        boolean flag = false ;

        dept.setDisabled(false);

        Integer integer = sy_deptDao.addDept(dept);
        if (integer > 0) {
            flag = true ;
        }

        return flag ;
    }




    /**
     * 修改
     * @param dept
     * @return
     */
    @ResponseBody
    @RequestMapping("updateDept")
    public boolean updateDept(SY_Dept dept){
        Boolean flag = false ;

        dept.setDisabled(false);

        Integer integer = sy_deptDao.updateDept(dept);
        if (integer > 0) {
            flag = true ;
        }

        return flag ;
    }




}
