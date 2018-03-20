<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/1 0001
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>湖南省自来水公司营销管理信息系统</title>

</head>

<body>

<div id="wrapper">


    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">


        <div class="x12">

            <h2>抄表初始化</h2>

            <p><a href="javascript:initYM();"
                  class="btn-icon btn-plus"><span></span>初始化新抄表年月</a></p>
            <div id="app">
                <table class="data display" id="simple">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>抄表年份</th>
                        <th>抄表月份</th>
                        <th>当前</th>
                        <th>初始化操作人</th>
                        <th>初始化日期</th>
                        <th>结束日期</th>
                    </tr>
                    </thead>
                    <tbody v-for="yearmonth in yearmonths">
                    <th>{{yearmonth.id}}</th>
                    <th>{{yearmonth.ReadYear}}</th>
                    <th>{{yearmonth.ReadMonth }}</th>
                    <th>{{yearmonth.IsCurrent}}</th>
                    <th>{{yearmonth.EmpName}}</th>
                    <th>{{yearmonth.InitDate}}</th>
                    <th>{{yearmonth.EndDate}}</th>

                    </tbody>
                </table>
            </div>
        </div> <!-- .x12 -->

    </div> <!-- #content -->

    <div id="footer">
        <div class="content_pad">
            <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>. 技术支持 <a href="#">华瑞教育</a>.</p>
        </div> <!-- .content_pad -->
    </div> <!-- #footer -->

</div> <!-- #wrapper -->

<script src="../assets/js/jquery/jquery.uniform.min.js"></script>

<script src="../assets/js/dashboard.js"></script>
<script type="text/javascript">

    new Vue({
        el: "#app",
        data: {
            "submiturl": "/yearmonth/allyearmonth.action",
            "yearmonths": [],
            "yearmonth": ""
        },
        methods: {

            getallsyemp: function () {
                var empthis = this;
                $.getJSON(empthis.submiturl, function (result, status) {
                    empthis.yearmonths = result;
                });
            }
        },
        created: function () {
            this.getallsyemp();
        }

    });


    //初始化抄表年月
    function initYM() {
        //确定要初始化抄表年月【2014年01月】吗？
        showWindow({url: '../page/rd_init_progress.jsp', width: 560, height: 240});
    }


</script>

</body>

</html>