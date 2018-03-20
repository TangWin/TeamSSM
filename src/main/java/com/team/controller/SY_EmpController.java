package com.team.controller;

import com.team.dao.SY_EmpDao;
import com.team.dao.SY_MenuDao;
import com.team.entity.SY_Emp;
import com.team.entity.SY_Menu;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class SY_EmpController {

    @Autowired
    private SY_EmpDao sy_empDao;

    @Autowired
    private SY_MenuDao sy_menuDao;

    /**
     * 登录
     *
     * @param emp
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "login")
    public boolean login(SY_Emp emp, HttpServletRequest request) {
        //获取对象用于验证
        Subject subject = SecurityUtils.getSubject();
        //实例化验证信息对象
        UsernamePasswordToken token = new UsernamePasswordToken(emp.getEmpNo(), emp.getPwd());
        try {
            subject.login(token);
            subject.isAuthenticated();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * 得到所有员工以及所在部门信息，包括模糊查询，分页功能
     *
     * @param search
     * @param currentPage
     * @param pageCount
     * @return
     */
    @ResponseBody
    @RequestMapping("getEmpPage")
    public List<SY_Emp> getEmpPage(@RequestParam(value = "search", required = false) String search, @RequestParam(value = "currentPage", required = false) Integer currentPage, @RequestParam(value = "pageCount", required = false) Integer pageCount) {

        List<SY_Emp> empList = sy_empDao.getEmpPage(search.trim(), currentPage, pageCount);

//        Map map = new HashMap<String , List<String[]>>();

//        ArrayList<String[]> data = new ArrayList<String[]>();
//        for (SY_Emp sy_emp : empList) {
//            String[] strings = new String[]{sy_emp.getId()+"" , sy_emp.getEmpNo() , sy_emp.getEmpName() ,  sy_emp.getDeptID().getDeptName() ,sy_emp.getRemark()};
//            data.add(strings);
//        }
//
//        map.put("data", data);


        return empList;
    }

    /**
     * 根据id得到单个员工对象
     *
     * @param requestId
     * @return
     */
    @ResponseBody
    @RequestMapping("getEmpById")
    public SY_Emp getEmpById(Integer requestId) {
        SY_Emp syEmp = sy_empDao.getEmpById(requestId);
        return syEmp;
    }


    /**
     * 添加
     *
     * @param emp
     * @return
     */
    @ResponseBody
    @RequestMapping("addEmp")
    public boolean addEmp(SY_Emp emp) {

        boolean flag = false;

        //设置禁用为false
        emp.setDisabled(false);

        Integer integer = sy_empDao.addEmp(emp);
        if (integer > 0) {
            emp = sy_empDao.login(emp.getEmpNo(), emp.getPwd());
            System.out.println(emp);

            //添加员工成功，为此员工添加默认的菜单权限
            List<Map<String, String>> paramMap = new ArrayList<Map<String, String>>();
            for (int i = 0; i < 3; i++) {
                Map<String, String> map = new HashMap<String, String>();
                map.put("empId", emp.getId() + "");
                map.put("menuId", "3" + i);
                paramMap.add(map);
            }

            sy_menuDao.addEmpMenuPower(paramMap);

            flag = true;
        }

        return flag;
    }

    /**
     * 修改
     *
     * @param emp
     * @return
     */
    @ResponseBody
    @RequestMapping("updateEmpById")
    public boolean updateEmpById(SY_Emp emp) {

        boolean flag = false;

        //设置禁用为false
        emp.setDisabled(false);

        Integer integer = sy_empDao.updateEmpById(emp);
        if (integer > 0) {
            flag = true;
        }

        return flag;
    }


    /**
     * 删除
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("delEmpById")
    public boolean delEmpById(Integer id) {

        boolean flag = false;
        Integer integer = sy_empDao.delEmpById(id);
        if (integer > 0) {
            flag = true;
        }

        return flag;
    }

    /**
     * 根据id获取此用户的所有权限
     *
     * @param id
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("getMenuById")
    public Map<String, List<Map<String, Object>>> getMenuById(Integer id, HttpServletRequest request) {
        Map<String, List<Map<String, Object>>> map = new HashMap<String, List<Map<String, Object>>>();

        HttpSession session = request.getSession();

        List<Map<String, Object>> myAllMenu = new ArrayList<Map<String, Object>>();
        //获取到所有的菜单和拥有权限的菜单
        List<SY_Menu> allMenu = (List<SY_Menu>) session.getAttribute("allMenu");
        List<SY_Menu> myMenu = sy_menuDao.getMenuAllByEmpId(id);

        for (SY_Menu menu : allMenu) {
            Map<String, Object> stringMap = new HashMap<String, Object>();
            stringMap.put("id", menu.getId());
            stringMap.put("menuName", menu.getMenuName());
            stringMap.put("parent", menu.getParent());
            stringMap.put("url", menu.getUrl());
            stringMap.put("state", false);
            for (SY_Menu sy_menu : myMenu) {
                if (sy_menu.getId() == menu.getId()) {
                    stringMap.put("state", true);
                }
            }
            myAllMenu.add(stringMap);
        }

        map.put("myAllMenu", myAllMenu);

        return map;
    }


    /**
     * 修改用户权限
     *
     * @param id
     * @param menu
     * @return
     */
    @ResponseBody
    @RequestMapping("updateEmpMenuPower")
    public boolean updateEmpMenuPower(@RequestParam(value = "menu", required = false) String[] menu, @RequestParam(value = "id") Integer id) {

        boolean flag = false;
        //删除原有的权限
        Integer integer = sy_menuDao.delEmpMenuPower(id, null);
        //重新添加新的权限
        List<Map<String, String>> paramMap = new ArrayList<Map<String, String>>();
        for (int i = 0; i < menu.length; i++) {
            Map<String, String> map = new HashMap<String, String>();
            map.put("empId", id + "");
            map.put("menuId", menu[i]);
            paramMap.add(map);
        }
        Integer power = sy_menuDao.addEmpMenuPower(paramMap);
        if (power > 0) {
            flag = true;
        }


        return flag;
    }


    /**
     * 登出
     *
     * @param request
     * @return
     */
    @RequestMapping("logout")

    public String logout(HttpServletRequest request) {

//        request.getSession().invalidate();

        // 清空session
        Enumeration<String> enumeration = request.getSession().getAttributeNames();
        while (enumeration.hasMoreElements()) {
            String key = enumeration.nextElement().toString();
            request.getSession().removeAttribute(key);
        }

        return "redirect:/login.jsp";
    }


}
