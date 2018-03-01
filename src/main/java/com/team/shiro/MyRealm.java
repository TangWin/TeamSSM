package com.team.shiro;

import com.team.dao.SY_EmpDao;
import com.team.dao.SY_MenuDao;
import com.team.entity.SY_Emp;
import com.team.entity.SY_Menu;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * shiro框架  ==》 自定义realm
 * @author TW
 */
public class MyRealm extends AuthorizingRealm {


    @Autowired
    private SY_EmpDao sy_empDao ;

    @Autowired
    private SY_MenuDao sy_menuDao ;

    /**
     * 授权
     * @param principalCollection
     * @return
     */
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

//        principalCollection.getPrimaryPrincipal() ;

//        System.out.println("进来了");
//        //获取当前认证的员工信息
//        SY_Emp currentEmp = (SY_Emp) SecurityUtils.getSubject().getSession().getAttribute("currentEmp");
//
//        //判断是否为管理员
//        if (currentEmp.getDeptID().getID()==1) {
//            //得到所有的菜单权限
//            List<SY_Menu> allMenu = sy_menuDao.getMenuAllByEmpId(null);
//            //存入session
//            SecurityUtils.getSubject().getSession().setAttribute("allMenu",allMenu);
//        }else{
//            //得到当前员工所拥有的菜单权限
//            List<SY_Menu> allMenu = sy_menuDao.getMenuAllByEmpId(currentEmp.getId());
//            //存入session
//            SecurityUtils.getSubject().getSession().setAttribute("allMenu",allMenu);
//        }
//
//
//        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

        return null;
    }

    /**
     * 认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //强转
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;

        //数据访问验证
        SY_Emp currentEmp = sy_empDao.login(token.getUsername(), null);

        System.out.println(currentEmp);

        //将此用户存入session
        SecurityUtils.getSubject().getSession().setAttribute("currentEmp", currentEmp);


        //判断是否为管理员
        if (currentEmp.getDeptID().getID()==1) {
            //得到所有的菜单权限
            List<SY_Menu> allMenu = sy_menuDao.getMenuAllByEmpId(null);
            //存入session
            SecurityUtils.getSubject().getSession().setAttribute("allMenu",allMenu);
        }else{
            //得到当前员工所拥有的菜单权限
            List<SY_Menu> allMenu = sy_menuDao.getMenuAllByEmpId(currentEmp.getId());
            //存入session
            SecurityUtils.getSubject().getSession().setAttribute("allMenu",allMenu);
        }

        //实例化返回信息
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(token.getUsername() , currentEmp.getPwd() , this.getName());

        return info;
    }
}
