package com.team.controller;

import com.team.dao.RD_TaskDao;
import com.team.entity.Tasksimulate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/3/11 0011.
 * 任务分配的controller
 */
@Controller
@RequestMapping("/task")
public class RD_TaskController {
    @Autowired
     private RD_TaskDao rdTaskDao;

    @ResponseBody
    @RequestMapping("/getalltask")
     public List<Map<String,Object>> getalltask(){
         List<Map<String,Object>> mapListtask=rdTaskDao.getalltask();

        return mapListtask;
    }


    /**
     * 根据任务分配的id拿到该对象
     */
    @RequestMapping("/gettaskobject")
    public  String gettaskobject(int id, HttpServletResponse response, HttpServletRequest request){
        Tasksimulate  objecttask=rdTaskDao.gettaskobject(id);
        request.setAttribute("task",objecttask);
        return "/page/rd_task_set";
    }
    /**
     * 任务分配
     */
     @RequestMapping("/updatesenter")
     public String updatesenter(int empid,int id){
         System.out.println("empid"+empid+"id:"+id);
         rdTaskDao.updatetask(empid,id);

         return  "/page/rd_task";
     }


}
