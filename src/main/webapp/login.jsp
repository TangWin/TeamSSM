<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/2/4
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统 - 员工登录</title>

    <link rel="stylesheet" href="assets/css/reset.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/text.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/form.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/buttons.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/login.css" type="text/css" media="screen" title="no title" />

</head>

<body>
<div id="login_background">
    <div id="login">
        <h1>员工登录</h1>
        <div id="login_panel">
            <form id="loginForm" method="post" accept-charset="utf-8">
                <div class="login_fields">
                    <div class="field">
                        <label for="email">员工工号：</label>
                        <input type="text" name="empNo" value="" id="email" tabindex="1" placeholder="请输入您的员工编号" />
                    </div>

                    <div class="field">
                        <label for="password">登录密码： </label>
                        <input type="password" name="pwd" value="" id="password" tabindex="2" placeholder="请输入您的密码" />
                    </div>
                </div> <!-- .login_fields -->

                <div class="login_actions">
                    <input class="btn btn-orange btn-submit" tabindex="3" type="button" value="登录"/>
                </div>
                ${currentEmp.empName}
            </form>
        </div> <!-- #login_panel -->
    </div>
    <!-- #login -->
</div>

<script type="text/javascript" src="assets/js/jquery/jquery-1.5.2.min.js"></script>
<script type="text/javascript">

    $(function () {
        $(".btn-submit").click(function () {
            //获取所有要验证的值
            var empNo = $("#email").val() ;
            var pwd = $("#password").val() ;
            //判断是否输入值
            if (empNo.trim().length>0 && pwd.trim().length>0) {
                $.ajax({
                    url:"/login.action",
                    data:$("#loginForm").serialize(),
                    method:"POST",
                    dataType:"JSON",
                    success:function (result) {
                        console.info(result);
                        if (result) {
                            window.location.href = "workspace.jsp" ;
                        }else{
                            alert('用户名或密码错误！');
                        }
                    }
                });
            }else{
                alert('请输入正确的值！');
            }
        });
    });

</script>

</body>

</html>
