package com.team.filter;

import com.team.entity.SY_Menu;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class RealmFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //强转
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        //先判断请求路径是否存在于数据表中，若存在则进行判断
        String requestURI = request.getRequestURI();
        System.out.println("请求路径："+requestURI);

        //获取session中所有的菜单选项以及当前用户所有的菜单
        HttpSession session = request.getSession();

        if (!requestURI.equals("/404.jsp") && !requestURI.equals("/login.jsp")) {

            List<SY_Menu> myAllMenu = (List<SY_Menu>) session.getAttribute("MyAllMenu");
            List<SY_Menu> allMenu = (List<SY_Menu>) session.getAttribute("allMenu");

            //判断是否需要判断
            if (allMenu != null && myAllMenu != null) {
                boolean isFlag = false;
                for (SY_Menu menu : allMenu) {
                    if (menu.getUrl() != null && requestURI.contains(menu.getUrl())) {
                        isFlag = true;
                        break;
                    }
                }

                //存在于要判断的菜单中
                if (isFlag) {
                    boolean Flag = false;
                    for (SY_Menu menu : myAllMenu) {
                        if (menu.getUrl() != null && requestURI.contains(menu.getUrl())) {
                            Flag = true;
                            break;
                        }
                    }
                    //判断是否拥有访问权限
                    if (!Flag) {
                        response.sendRedirect("/404.jsp");
                        return;
                    }
                }
            }
        }

        //通过验证
        filterChain.doFilter(servletRequest , servletResponse);

    }

    public void destroy() {

    }
}
