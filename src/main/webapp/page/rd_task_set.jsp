<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/8 0008
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>

<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>湖南省自来水公司营销管理信息系统</title>

</head>

<body>

<div id="wrapper">


    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">


        <div class="x12">

            <h2>任务分配</h2>
            <div id="app">
                <div class="form label-inline uniform">

                    <div class="field"><label for="yearmonthid">抄表年月</label> <input id="yearmonthid" name="fname"
                                                                                    size="50" type="text" class="medium"
                                                                                    disabled="disabled"
                                                                                    value="${task.readYear}${task.readMonth}"/>
                    </div>

                    <div class="field"><label for="areasid">辖区</label> <input id="areasid" name="fname" size="50"
                                                                              type="text" class="medium"
                                                                              disabled="disabled"
                                                                              value="${task.areaName}"/></div>

                    <div class="field"><label for="volumeid">表册</label> <input id="volumeid" name="fname" size="50"
                                                                               type="text" class="medium"
                                                                               disabled="disabled"
                                                                               value="${task.volumeName}"/></div>

                    <div class="field"><label>任务分配给</label>
                        <select class="medium" id="selected">
                            <option v-for="emp in emps" v-bind:value="emp.id">{{emp.empName}}</option>
                        </select>
                    </div>

                    <div class="buttonrow">
                        <button class="btn" v-on:click="taskrenter('+${task.id}+')">确定</button>
                        <button class="btn btn-grey" onClick="history.back(-1);">返回</button>
                    </div>

                </div>
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

    /* $(document).ready ( function ()
     {
         Dashboard.init ();

            });*/

    new Vue({
        el: "#app",
        data: {
            "empurl": "/emp/getmeterreading.action?deptId=1",
            "emps": [],
            "emp": "",

        },
        methods: {
            getallemps: function () {
                var emp_this = this;
                $.getJSON(emp_this.empurl, function (result, status) {
                    emp_this.emps = result;
                });
            },
            taskrenter: function (id) {
                //获取分配的工作人员id
                var empid = $('#selected').val();

                window.location.href = '/task/updatesenter.action?empid=' + empid + '&id=' + id + '';
            }

        },
        created: function () {
            this.getallemps();
        }


    });


</script>

</body>
</html>
