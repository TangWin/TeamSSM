package com.team.controller;

import com.alibaba.fastjson.JSON;
import com.team.entity.ReadSimulate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

/**
 * Created by Administrator on 2018/3/15 0015.
 * 修改最大的表码值
 */
@Controller
@RequestMapping("/changevalue")
public class RD_ChangeMaxValueController {

    /**
     * 插入数据（修改最大的表码值）
     *
     */
    @RequestMapping("/changemaxvalue")
    public String changemaxvalue(String datastrtwo, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");

        return null;
    }





}
