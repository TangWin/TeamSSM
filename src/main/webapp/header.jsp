<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/3/1
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>header</title>

    <link rel="stylesheet" href="/assets/css/reset.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/text.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/form.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/buttons.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/grid.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/layout.css" type="text/css" media="screen" title="no title" />

    <link rel="stylesheet" href="/assets/css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/plugin/facebox.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/plugin/uniform.default.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="/assets/css/plugin/dataTables.css" type="text/css" media="screen" title="no title" />

    <link rel="stylesheet" href="/assets/css/custom.css" type="text/css" media="screen" title="no title">


</head>
<body>

<div id="header">

    <div class="content_pad">
        <h1><a href="./workspace.html">湖南省自来水公司营销管理信息系统</a></h1>

        <ul id="nav">

            <li class="nav_dropdown nav_icon">

                <a href="javascript:;"><span class="ui-icon ui-icon-wrench"></span>业扩工程</a>

                <div class="nav_menu">
                    <ul>
                        <c:forEach var="menu" items="${allMenu}">
                            <c:if test="${menu.parent==1}">
                                <li><a href="${menu.url}">${menu.menuName}</a></li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </li>

            <li class="nav_dropdown nav_icon">
                <a href="javascript:;"><span class="ui-icon ui-icon-person"></span>用户管理</a>

                <div class="nav_menu">
                    <ul>
                        <c:forEach var="menu" items="${allMenu}">
                            <c:if test="${menu.parent==2}">
                                <li><a href="${menu.url}">${menu.menuName}</a></li>
                            </c:if>
                        </c:forEach>
                    </ul>

                </div>
            </li>

            <li class="nav_dropdown nav_icon">
                <a href="javascript:;"><span class="ui-icon ui-icon-pencil"></span>抄表管理</a>

                <div class="nav_menu">
                    <ul>
                        <c:forEach var="menu" items="${allMenu}">
                            <c:if test="${menu.parent==3}">
                                <li><a href="${menu.url}">${menu.menuName}</a></li>
                            </c:if>
                        </c:forEach>
                    </ul>

                </div>
            </li>
            <shiro:hasRole name="1">
                <li class="nav_dropdown nav_icon">
                    <a href="javascript:;"><span class="ui-icon ui-icon-star"></span>收费管理</a>

                    <div class="nav_menu">
                        <ul>
                            <c:forEach var="menu" items="${allMenu}">
                                <c:if test="${menu.parent==4}">
                                    <li><a href="${menu.url}">${menu.menuName}</a></li>
                                </c:if>
                            </c:forEach>
                        </ul>

                    </div>
                </li>
            </shiro:hasRole>
            <shiro:hasRole name="1">
                <li class="nav_dropdown nav_icon">
                    <a href="javascript:;"><span class="ui-icon ui-icon-gear"></span>系统设置</a>

                    <div class="nav_menu">
                        <ul>
                            <c:forEach var="menu" items="${allMenu}">
                                <c:if test="${menu.parent==5}">
                                    <li><a href="${menu.url}">${menu.menuName}</a></li>
                                </c:if>
                            </c:forEach>
                        </ul>

                    </div>
                </li>
            </shiro:hasRole>

            <li class="nav_current nav_dropdown nav_icon_only">
                <a href="javascript:;">&nbsp;</a>

                <div class="nav_menu">
                    <ul>
                        <c:forEach var="menu" items="${allMenu}">
                            <c:if test="${menu.parent==6}">
                                <li><a href="${menu.url}">${menu.menuName}</a></li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div> <!-- .menu -->
            </li>
        </ul>
    </div> <!-- .content_pad -->

</div> <!-- #header -->

<div id="masthead">
    <div>
        <span id="welcome_span">欢迎回来，${currentEmp.empName}</span>
    </div>
</div> <!-- #masthead -->


<script src="/assets/js/vue.min.js" type="text/javascript"></script>

<script src="/assets/js/jquery/jquery-1.5.2.min.js"></script>
<script src="/assets/js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="/assets/js/misc/excanvas.min.js"></script>
<script src="/assets/js/jquery/facebox.js"></script>
<script src="/assets/js/jquery/jquery.visualize.js"></script>
<script src="/assets/js/jquery/jquery.dataTables.min.js"></script>
<script src="/assets/js/jquery/jquery.tablesorter.min.js"></script>
<script src="/assets/js/jquery/jquery.uniform.min.js"></script>
<script src="/assets/js/jquery/jquery.placeholder.min.js"></script>

<script src="/assets/js/widgets.js"></script>
<script src="/assets/js/dashboard.js"></script>


</body>
</html>
