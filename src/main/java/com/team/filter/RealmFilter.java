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

        //获取session中当前用户所有的菜单
        HttpSession session = request.getSession();
        List<SY_Menu> allMenu = (List<SY_Menu>) session.getAttribute("allMenu");

        //获取当前请求路径，判断是否拥有访问权限
        String requestURI = request.getRequestURI();
        System.out.println("请求路径："+requestURI);

        if (!requestURI.equals("/404.jsp") && allMenu!=null) {
            boolean isFlag = false;
            for (SY_Menu menu : allMenu) {
                System.out.println(menu);
                if (menu.getUrl()!=null && requestURI.contains(menu.getUrl())) {
                    isFlag = true;
                    break;
                }
            }

            //没有访问权限
            if (!isFlag) {
                response.sendRedirect("/404.jsp");
                return;
            }
        }
        //通过验证
        filterChain.doFilter(servletRequest , servletResponse);

    }

    public void destroy() {

    }
}
