package com.team.controller;

import com.mysql.fabric.xmlrpc.base.Data;
import com.team.dao.RD_ReadDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/3/12 0012.
 * 抄表录入controller
 */
@Controller
@RequestMapping("/enter")
public class RD_EnterController {
    @Autowired
    private RD_ReadDao rdReadDao;
 @RequestMapping("/getallread")
 @ResponseBody
    public List<Map<String,Object>> getallread() throws ParseException {

        int volumeid=4;
        String date="2017-03-04";
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        List<Map<String,Object>> liss= rdReadDao.getallread(volumeid,sdf.parse(date));

     return liss;
    }

    /**
     * 修改录入的数据
     */
    @ResponseBody
    @RequestMapping("/updateamount")
    public  void  updateamount(int id,int amount,int curvalue){

        rdReadDao.updatemount(id,curvalue,amount);
    }

    /**
     * 修改录入状态
     */
    @RequestMapping("/updatenter")
    @ResponseBody
   public void updatenter(int id){

        rdReadDao.updatenter(id);
   }
    /**
     * 审核
     */
    @RequestMapping("/check")
    @ResponseBody
    public void  check(int id, HttpServletRequest request, HttpServletResponse response){
        //得到当前的系统时间
        // 得到抄表员
       HttpSession session=request.getSession();
        //得到当前的系统时间
       /*Calendar c=Calendar.getInstance();
        c.get(Calendar.YEAR);*/
        Date date=new Date();
        /*SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String udate=sdf.format(date);*/
        rdReadDao.updatereadmore(4,date,id);



    }
    /**
     * 未复核的数据绑定
     */
    @RequestMapping("/auditdetail")
    @ResponseBody
    public List<Map<String,Object>> auditdetail(int volumeid){

       //Calendar c=Calendar.getInstance();
//        int year=c.get(Calendar.YEAR);
//        int month=c.get(Calendar.MONTH)+1;
         int year=2017;
         int month=3;
         List<Map<String,Object>> auditdetaillist=rdReadDao.auditdetail(year,month,volumeid);

         return auditdetaillist;
    }



}
