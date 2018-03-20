package com.team.controller;

import com.alibaba.fastjson.JSONObject;
import com.team.dao.BE_OrderDao;
import com.team.dao.BE_OrderUserDao;
import com.team.dao.US_MeterDao;
import com.team.dao.US_UserDao;
import com.team.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class BE_OrderController {
    @Autowired
    private BE_OrderDao be_orderDao;
    @Autowired
    private BE_OrderUserDao be_orderUserDao;
    @Autowired
    private US_UserDao us_userDao;
    @Autowired
    private US_MeterDao us_meterDao;

    /*
     *绑定工单
     */
    @RequestMapping(value = "cbshorder")
    public void cbshorder(HttpServletRequest request, HttpServletResponse response, int tid, int step) throws Exception {
        PrintWriter out = response.getWriter();
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        List<BE_Order> cbshList = be_orderDao.getCBSHOrder(step, (tid - 1) * 10);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        String str = "";
        int n = 0;
        for (BE_Order o : cbshList) {
            n++;
            String cla = "";
            if (n % 2 == 1) {
                cla = "odd";
            } else {
                cla = "even";
            }

            String type = "";
            switch (o.getOrderType()) {
                case 1:
                    type = "新户";
                    break;
                case 2:
                    type = "分户";
                    break;
                case 3:
                    type = "过户";
                    break;
                case 4:
                    type = "代扣";
                    break;
                case 5:
                    type = "换表";
                    break;
                case 6:
                    type = "重签";
                    break;
                case 7:
                    type = "销户";
                    break;
            }
            String thestep = "";
            String thebum = "";
            switch (o.getStepID()) {
                case 1:
                    thestep = "用户申请";
                    thebum = "收费室";
                    break;
                case 2:
                    thestep = "初步审核";
                    thebum = "生技室";
                    break;
                case 3:
                    thestep = "交施工费";
                    thebum = "财务室";
                    break;
                case 4:
                    thestep = "水费清算";
                    thebum = "收费室";
                    break;
                case 5:
                    thestep = "供水协议";
                    thebum = "生技室";
                    break;
                case 6:
                    thestep = "施工竣工";
                    thebum = "安装队";
                    break;
                case 7:
                    thestep = "通水停水";
                    thebum = "抄表班";
                    break;
                case 8:
                    thestep = "档案存档";
                    thebum = "生技室";
                    break;
            }

            str = str + "<tr class='" + cla + "'><td><a href='../page/be_orderInfo.jsp?id=" + o.getOrderNo() + "' target='orderInfo'>" + o.getOrderNo() + "</a></td><td>" + type + "</td> <td>" + thestep + "</td> <td>" + thebum + "</td> <td>" + sdf.format(o.getLastEditDate()) + "</td> <td>" + o.getUserName() + "</td> <td><a href='../auditForm.action?OrderNo=" + o.getOrderNo() + "'><button class='btn-icon btn-small btn-blue btn-check'><span></span>处理</button></a></td> </tr>";
        }

        out.write(str);
        out.flush();
        out.close();
    }


    /*
     *工单分页
     */
    @RequestMapping(value = "cbshorderNum")
    public void cbshorderNum(HttpServletRequest request, HttpServletResponse response, int step) throws Exception {
        PrintWriter out = response.getWriter();
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        int to = be_orderDao.getCBSHOrderNum(step);
        //计算总页数
        int total_page = (to + 10 - 1) / 10;
        out.write("" + total_page);
        out.flush();
        out.close();
    }

    /*
     *处理跳转
     */
    @RequestMapping(value = "auditForm")
    public void auditForm(HttpServletRequest request, HttpServletResponse response, String OrderNo) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();

        BE_Order orderone = be_orderDao.getOrderOne(OrderNo);
        session.setAttribute("orderone", orderone);

        if (orderone.getStepID() == 1 || orderone.getStepID() == 2) {
            response.sendRedirect("page/be__auditForm.jsp");
        } else if (orderone.getStepID() == 3) {
            response.sendRedirect("page/be__payForm.jsp");
        } else if (orderone.getStepID() == 4) {
            response.sendRedirect("page/be__billclearForm.jsp");
        } else if (orderone.getStepID() == 5) {
            response.sendRedirect("page/be__contractForm.jsp");
        } else if (orderone.getStepID() == 6) {
            response.sendRedirect("page/be__workingForm.jsp");
        } else if (orderone.getStepID() == 7) {
            response.sendRedirect("page/be__openForm.jsp");
        } else if (orderone.getStepID() == 8) {
            response.sendRedirect("page/be__saveForm.jsp");
        }
    }

    /*
     *工单撤回
     */
    @RequestMapping(value = "orderBack")
    public void orderBack(HttpServletRequest request, HttpServletResponse response, String OrderNo, int StepID, int type) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //撤回到哪一步哪个界面
        int sid = StepID;
        String ym = "";
        if (StepID == 2) {
            sid = 1;
            ym = "page/be__audit.jsp";
        } else if (StepID == 3) {
            sid = 2;
            ym = "page/be__pay.jsp";
        } else if (StepID == 4) {
            if (type == 2) {
                sid = 3;
            } else {
                sid = 2;
            }
            ym = "page/be__billclear.jsp";
        } else if (StepID == 5) {
            if (type == 1) {
                sid = 4;
            } else if (type == 2) {
                sid = 5;
            } else {
                sid = 3;
            }
            ym = "page/be__contract.jsp";
        } else if (StepID == 6) {
            if (type == 5) {
                sid = 3;
            } else {
                sid = 5;
            }
            ym = "page/be__working.jsp";
        } else if (StepID == 7) {
            if (type == 7) {
                sid = 4;
            } else {
                sid = 6;
            }
            ym = "page/be__open.jsp";
        } else if (StepID == 8) {
            if (type == 3 || type == 4) {
                sid = 2;
            } else if (type == 6) {
                sid = 5;
            } else {
                sid = 7;
            }
            ym = "page/be__save.jsp";
        }

        be_orderDao.UpdateOne(OrderNo, sid);

        response.sendRedirect(ym);
    }

    /*
     *初步审核同意
     */
    @RequestMapping(value = "cbshorderOk")
    public void cbshorderOk(HttpServletRequest request, HttpServletResponse response, String OrderNo, String advice) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        advice = new String(advice.getBytes("iso-8859-1"), "utf-8");

        BE_Order orderone = be_orderDao.getOrderOne(OrderNo);

        int type = 2;
        switch (orderone.getOrderType()) {//1新户 2分户 3过户 4代扣 5换表 6重签 7销户
            case 1:
                type = 3;
                break;
            case 2:
                type = 3;
                break;
            case 3:
                type = 5;
                break;
            case 4:
                type = 8;
                break;
            case 5:
                type = 3;
                break;
            case 6:
                type = 5;
                break;
            case 7:
                type = 4;
                break;
        }
        //获取当前登录员工  tw
        HttpSession session = request.getSession();
        SY_Emp currentEmp = (SY_Emp) session.getAttribute("currentEmp");

        //最后操作人和初步审核人为当前登录的员工id
        be_orderDao.UpdateOkOne(OrderNo, type, currentEmp.getId(), new Date(), currentEmp.getId(), advice);
        response.sendRedirect("page/be__audit.jsp");
    }

    /*
     *交施工费同意
     */
    @RequestMapping(value = "jsgforderOk")
    public void jsgforderOk(HttpServletRequest request, HttpServletResponse response, String OrderNo, double all, double themoney, double overdue) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        BE_Order orderone = be_orderDao.getOrderOne(OrderNo);

        int type = 3;
        switch (orderone.getOrderType()) {//1新户 2分户 5换表
            case 1:
                type = 5;
                break;
            case 2:
                type = 4;
                break;
            case 5:
                type = 6;
                break;
        }
        //获取当前登录员工  tw
        HttpSession session = request.getSession();
        SY_Emp currentEmp = (SY_Emp) session.getAttribute("currentEmp");

        //最后操作人当前登录的员工id
        be_orderDao.UpdatejsgfOne(OrderNo, type, currentEmp.getId(), new Date(), all, themoney, new Date());
        be_orderUserDao.updateMoney(OrderNo, all, themoney);
        //修改该用户的余额
        BE_OrderUser be_orderUser = be_orderUserDao.getOne(orderone.getOrderNo());
        US_User us_user = us_userDao.getOne(be_orderUser.getUserNo());
        double money = us_user.getUserMoney();
        us_userDao.updateMoney(us_user.getUserNo(), money + overdue);

        response.sendRedirect("page/be__pay.jsp");
    }

    /*
     *水费清算同意
     */
    @RequestMapping(value = "sfqsorderOk")
    public void fsqsorderOk(HttpServletRequest request, HttpServletResponse response, String OrderNo) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        BE_Order orderone = be_orderDao.getOrderOne(OrderNo);

        int type = 4;
        switch (orderone.getOrderType()) {//1新户 2分户 5换表
            case 2:
                type = 7;
                break;
            case 5:
                type = 7;
                break;
        }
        //获取当前登录员工  tw
        HttpSession session = request.getSession();
        SY_Emp currentEmp = (SY_Emp) session.getAttribute("currentEmp");

        //最后操作人当前登录的员工id
        be_orderDao.UpdategsxyOne(OrderNo, type, currentEmp.getId(), new Date());

        //修改该用户的余额
        BE_OrderUser be_orderUser = be_orderUserDao.getOne(orderone.getOrderNo());
        US_User us_user = us_userDao.getOne(be_orderUser.getUserNo());
        double money = 0;
        us_userDao.updateMoney(us_user.getUserNo(), money);

        response.sendRedirect("page/be__billclear.jsp");
    }

    /*
     *水费清算用户余额
     */
    @RequestMapping(value = "billclearMoney")
    public void billclearMoney(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();

        BE_Order be_order = (BE_Order) session.getAttribute("orderone");

        BE_OrderUser be_orderUser = be_orderUserDao.getOne(be_order.getOrderNo());
        US_User us_user = us_userDao.getOne(be_orderUser.getUserNo());
        double money = us_user.getUserMoney();
        double overdue = 0;
        if (money >= 0) {
            overdue = 0;
        } else {
            overdue = money;
        }

        out.write(money + "," + overdue);
        out.flush();
        out.close();

    }


    /*
     *供水协议同意
     */
    @RequestMapping(value = "gsxyorderOk")
    public void gsxyorderOk(HttpServletRequest request, HttpServletResponse response, String OrderNo, String laster) throws Exception {
        PrintWriter out = response.getWriter();
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        BE_Order orderone = be_orderDao.getOrderOne(OrderNo);

        int type = 5;
        switch (orderone.getOrderType()) {//1新户 2分户 6重签
            case 1:
                type = 6;
                break;
            case 2:
                type = 6;
                break;
            case 6:
                type = 8;
                break;
        }
        //获取当前登录员工  tw
        HttpSession session = request.getSession();
        SY_Emp currentEmp = (SY_Emp) session.getAttribute("currentEmp");


        //最后操作人当前登录的员工id
        be_orderDao.UpdategsxyOne(OrderNo, type, currentEmp.getId(), new Date());
        //用户详细表的提比提量
        be_orderUserDao.updateTibi(OrderNo, laster);
        //用户表的提比提量
        BE_OrderUser be_orderUser = be_orderUserDao.getOne(orderone.getOrderNo());
        US_User us_user = us_userDao.getOne(be_orderUser.getUserNo());
        us_userDao.updateTibi(us_user.getUserNo(), laster);

        out.write("ok");
        out.flush();
        out.close();
    }

    /*
     *施工竣工同意
     */
    @RequestMapping(value = "sgjgorderOk")
    public void sgjgorderOk(HttpServletRequest request, HttpServletResponse response, String OrderNo, String date) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        date = new String(date.getBytes("iso-8859-1"), "utf-8");

        String imp[] = date.split(",");
        //辖区//表径//表身码//表码值//起始码//厂家//施工日期//竣工日期

        //获取当前登录员工  tw
        HttpSession session = request.getSession();
        SY_Emp currentEmp = (SY_Emp) session.getAttribute("currentEmp");


        //最后操作人当前登录的员工id
        be_orderDao.UpdatesgjgOne(OrderNo, 7, currentEmp.getId(), new Date(), sdf.parse(imp[6]), sdf.parse(imp[7]), Integer.parseInt(imp[0]));//插入工单表的数据
        //插入工单用户详情表的数据
        be_orderUserDao.updateInfo(OrderNo, Integer.parseInt(imp[1]), imp[2], Integer.parseInt(imp[3]), Integer.parseInt(imp[4]), imp[5]);
        //插入水表类型表的数据
        BE_OrderUser be_orderUser = be_orderUserDao.getOne(OrderNo);
//        水表编号（规则：M+用户编码+杠+2位流水号）
        BE_Order orderone = be_orderDao.getOrderOne(OrderNo);
        String MeterNo = "";
        if (orderone.getOrderType() == 5) {
            int meterHow = us_meterDao.getOne(be_orderUser.getUserNo());
            String num = "";
            if (1 <= meterHow && meterHow < 9) {
                meterHow = meterHow + 1;
                num = "0" + meterHow;
            } else {
                meterHow = meterHow + 1;
                num = meterHow + "";
            }
            MeterNo = "M" + be_orderUser.getUserNo() + "-" + num;
        } else {
            MeterNo = "M" + be_orderUser.getUserNo() + "-01";
        }
//        所属用户
        String UserNo = be_orderUser.getUserNo();
//        水表类型
        int MeterTypeID;
//        最大表码值
        int MaxValue = Integer.parseInt(imp[3]);
//        起始底码
        int StartValue = Integer.parseInt(imp[4]);

        us_meterDao.insertOne(new US_Meter(MeterNo, UserNo, imp[2], Integer.parseInt(imp[1]), MaxValue, StartValue, sdf.parse(imp[6]), imp[5], (byte) 0));

        response.sendRedirect("page/be__working.jsp");
    }

    /*
     *通水停水同意
     */
    @RequestMapping(value = "tstsorderOk")
    public void tstsorderOk(HttpServletRequest request, HttpServletResponse response, String OrderNo) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取当前登录员工  tw
        HttpSession session = request.getSession();
        SY_Emp currentEmp = (SY_Emp) session.getAttribute("currentEmp");

        //最后操作人当前登录的员工id
        be_orderDao.UpdategsxyOne(OrderNo, 8, currentEmp.getId(), new Date());

        response.sendRedirect("page/be__open.jsp");
    }

    /*
     *档案存档同意
     */
    @RequestMapping(value = "dacdorderOk")
    public void dacdorderOk(HttpServletRequest request, HttpServletResponse response, String OrderNo, String advice) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        BE_Order orderone = be_orderDao.getOrderOne(OrderNo);

        //获取当前登录员工  tw
        HttpSession session = request.getSession();
        SY_Emp currentEmp = (SY_Emp) session.getAttribute("currentEmp");


        //最后操作人当前登录的员工id
        be_orderDao.UpdatedacdOne(OrderNo, 0, new Date(), currentEmp.getId(), new Date());
        //插入工单用户详细表的档案编号
        be_orderUserDao.updateDangan(OrderNo, advice);
        //插入用户表的档案编号
        BE_OrderUser be_orderUser = be_orderUserDao.getOne(orderone.getOrderNo());
        US_User us_user = us_userDao.getOne(be_orderUser.getUserNo());
        us_userDao.updateDangan(us_user.getUserNo(), advice);
        if (orderone.getOrderType() == 7) {
            us_userDao.updatexm(us_user.getUserNo(), (byte) 1);
        }

        response.sendRedirect("page/be__save.jsp");
    }

    /*
     *终止工单 绑定工单信息
     */
    @RequestMapping(value = "overOrder")
    public void overOrder(HttpServletRequest request, HttpServletResponse response, String OrderNo) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        PrintWriter out = response.getWriter();

        BE_Order orderone = be_orderDao.getOrderOne(OrderNo);

        String str = JSONObject.toJSON(orderone).toString();

        out.write(str);
        out.flush();
        out.close();
    }


    /*
     *终止工单确认
     */
    @RequestMapping(value = "orderoverOk")
    public void orderoverOk(HttpServletRequest request, HttpServletResponse response, String OrderNo, String description) throws Exception {
        //转码
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        description = new String(description.getBytes("iso-8859-1"), "utf-8");

        //获取当前登录员工  tw
        HttpSession session = request.getSession();
        SY_Emp currentEmp = (SY_Emp) session.getAttribute("currentEmp");


        be_orderDao.overOrder(OrderNo, -1, currentEmp.getId(), new Date(), description);

        response.sendRedirect("page/be_abort.jsp");

    }


}
