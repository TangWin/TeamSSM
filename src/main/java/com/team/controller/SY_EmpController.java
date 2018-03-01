package com.team.controller;

import com.team.dao.SY_EmpDao;
import com.team.entity.SY_Emp;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

@Controller
public class SY_EmpController {

    @Autowired
    private SY_EmpDao sy_empDao ;

    /**
     * 登录
     * @param emp
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "login")
    public boolean login(SY_Emp emp , HttpServletRequest request){
        //获取对象用于验证
        Subject subject = SecurityUtils.getSubject() ;
        //实例化验证信息对象
        UsernamePasswordToken token = new UsernamePasswordToken(emp.getEmpNo(), emp.getPwd());
        try {
            subject.login(token);
            subject.isAuthenticated() ;
        } catch (Exception e) {
            e.printStackTrace();
            return false ;
        }
        return true ;
    }


    @RequestMapping("logout")
    public String logout(HttpServletRequest request){

//        request.getSession().invalidate();

        // 清空session
        Enumeration<String> enumeration = request.getSession().getAttributeNames();
        while (enumeration.hasMoreElements()) {
            String key = enumeration.nextElement().toString();
            request.getSession().removeAttribute(key);
        }

        return "redirect:/login.jsp" ;
    }



}
