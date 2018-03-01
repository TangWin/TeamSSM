<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/1/26
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>

    <link rel="stylesheet" href="assets/css/reset.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/text.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/form.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/buttons.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/grid.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/layout.css" type="text/css" media="screen" title="no title" />

    <link rel="stylesheet" href="assets/css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/plugin/facebox.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/plugin/uniform.default.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/plugin/dataTables.css" type="text/css" media="screen" title="no title" />

    <link rel="stylesheet" href="assets/css/custom.css" type="text/css" media="screen" title="no title">

</head>

<body>

<div id="wrapper">
    <%--引入头文件--%>
    <jsp:include page="header.jsp"/>

    <div id="content" class="xgrid">

        <div id="welcome" class="x4">

            <p><strong><a href="/getDeptAll.action">欢迎回来, ${currentEmp.empName}</a></strong><br /></p>

            <table class="data info_table">
                <tbody>

                <tr>
                    <td class="value right">789</td>
                    <td class="full">本月新增用户数</td>
                </tr>
                <tr>
                    <td class="value right">23857</td>
                    <td class="full">本月应抄表数</td>
                </tr>
                <tr>
                    <td class="value right">23857</td>
                    <td class="full">本月实抄表数</td>
                </tr>
                <tr>
                    <td class="value right">3459391 吨</td>
                    <td class="full">本月用水量</td>
                </tr>
                <tr>
                    <td class="value right">13459391.49 元</td>
                    <td class="full">本月应收水费</td>
                </tr>
                <tr>
                    <td class="value right">10385394.12 元</td>
                    <td class="full">本月实收水费</td>
                </tr>

                </tbody>
            </table>

        </div> <!-- .x4 -->

        <div class="x8">
            <table class="stats" data-chart="bar">
                <caption>收费情况统计图表</caption>
                <thead>
                <tr>
                    <td>&nbsp;</td>
                    <th>2013年09月</th>
                    <th>2013年10月</th>
                    <th>2013年11月</th>
                    <th>2013年12月</th>
                    <th>2014年01月</th>
                    <th>2014年02月</th>
                </tr>

                </thead>

                <tbody>
                <tr>
                    <th>应收（万元）</th>
                    <td>945</td>
                    <td>845</td>
                    <td>1445</td>
                    <td>1145</td>
                    <td>1245</td>
                    <td>845</td>
                </tr>
                <tr>
                    <th>实收（万元）</th>
                    <td>945</td>
                    <td>745</td>
                    <td>1045</td>
                    <td>845</td>
                    <td>745</td>
                    <td>245</td>
                </tr>
                </tbody>
            </table>
        </div> <!-- .x8 -->

        <div class="xbreak"></div> <!-- .xbreak -->



        <div class="x5 a1">

            <h2>用水类型统计</h2>

            <table class="stats" data-chart="pie">
                <caption>2014年02月用水类型占比表</caption>
                <thead>
                <tr>
                    <td>&nbsp;</td>
                    <th>&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <tr><th>生活用水</th><td>3328942</td></tr>
                <tr><th>商业用水</th><td>4839423</td></tr>
                <tr><th>工业用水</th><td>6832948</td></tr>
                <tr><th>行政用水</th><td>548239</td></tr>
                <tr><th>军区用水</th><td>1834839</td></tr>
                <tr><th>特种用水</th><td>120233</td></tr>
                </tbody>
            </table>

            <p>以上数据由系统自动生成，在本月结算之前，都不能视为正式数据，此图表仅供参考。</p>

        </div> <!-- .x5 -->



        <div class="x6">

            <h2>
                待处理的工单
                <span class="fright "><a href="./page/be_order.html" class="ticket closed" style="color:#fff;">更多</a></span>
            </h2>

            <table class="data support_table">
                <tbody>
                <tr>
                    <td><span class="ticket responded">新户</span></td>
                    <td><span class="ticket open">初步审核</span></td>
                    <td class="full"><a href="./page/be__auditForm.html" target="_blank">雨花区南门口东风巷子12号</a></td>
                    <td class="who"><a href="./page/be__auditForm.html" target="_blank">张三</a></td>
                </tr>

                <tr>
                    <td><span class="ticket responded">分户</span></td>
                    <td><span class="ticket open">水费清算</span></td>
                    <td class="full"><a href="#">天心区紫阳北路北风胡同12号</a></td>
                    <td class="who">李四</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">换表</span></td>
                    <td><span class="ticket open">施工竣工</span></td>
                    <td class="full"><a href="#">忠孝东路下马区前进街C区19号</a></td>
                    <td class="who">王五</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">销户</span></td>
                    <td><span class="ticket open">水费清算</span></td>
                    <td class="full"><a href="#">雨花区南门口东风巷子12号</a></td>
                    <td class="who">赵六</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">过户</span></td>
                    <td><span class="ticket open">档案存档</span></td>
                    <td class="full"><a href="#">天心区紫阳北路北风胡同12号</a></td>
                    <td class="who">钱七</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">代扣</span></td>
                    <td><span class="ticket open">初步审核</span></td>
                    <td class="full"><a href="#">忠孝东路下马区前进街C区19号</a></td>
                    <td class="who">孙八</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">重签</span></td>
                    <td><span class="ticket open">供水协议</span></td>
                    <td class="full"><a href="#">雨花区南门口东风巷子12号</a></td>
                    <td class="who">何九</td>
                </tr>
                </tbody>
            </table>
        </div> <!-- .x6 -->

        <a href="./page/error.html">出错演示页</a> |
        <a href="./page/success.html">成功演示页</a>

    </div> <!-- #content -->

    <div id="footer">
        <div class="content_pad">
            <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">华瑞教育</a>.</p>
        </div> <!-- .content_pad -->
    </div> <!-- #footer -->

</div> <!-- #wrapper -->

<script src="assets/js/vue.min.js" type="text/javascript"></script>

<script src="assets/js/jquery/jquery-1.5.2.min.js"></script>
<script src="assets/js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="assets/js/misc/excanvas.min.js"></script>
<script src="assets/js/jquery/facebox.js"></script>
<script src="assets/js/jquery/jquery.visualize.js"></script>
<script src="assets/js/jquery/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery/jquery.tablesorter.min.js"></script>
<script src="assets/js/jquery/jquery.uniform.min.js"></script>
<script src="assets/js/jquery/jquery.placeholder.min.js"></script>

<script src="assets/js/widgets.js"></script>
<script src="assets/js/dashboard.js"></script>

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();
    });

</script>

</body>

</html>
