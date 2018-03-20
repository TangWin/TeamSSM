<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/8 0008
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

            <div id="facebox_init" style="display: none">
                <div style="height:80px;text-align:center;padding-top:50px;">
                    什么什么
                </div>

                <div class="dialogbutton center">
                    <a class="btn" href="javascript:closeDialog();" style="width:60px;">是</a>
                    <a class="btn btn-grey" href="javascript:closeDialog();" style="width:60px;">否</a>
                </div>
            </div>

            <h2>抄表任务分配 - 2013年12月</h2>
            <div id="app">
                <table class="data display">
                    <thead>
                    <tr>
                        <th>抄表辖区</th>
                        <th>表册</th>
                        <th>抄表员</th>
                        <th>本月应抄数</th>
                        <th>本月实抄数</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="task in tasks ">
                        <td>{{task.AreaName}}</td>
                        <td>{{task.VolumeName}}</td>
                        <td>{{task.EmpName}}</td>
                        <td>1456</td>
                        <td>0</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" v-on:click="tasksenter(task.id)">
                                <span></span>分配
                            </button>
                        </td>
                    </tr>

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

    $(document).ready(function () {
        Dashboard.init();
    });


    new Vue({
        el: "#app",
        data: {
            "taskurl": "/task/getalltask.action",
            "tasks": [],
            "task": "",
        },
        methods: {
            getalltask: function () {
                var task_this = this;
                $.getJSON(task_this.taskurl, function (result, status) {
                    task_this.tasks = result;
                })
            },
            tasksenter: function (id) {
                window.location.href = "/task/gettaskobject.action?id=" + id + "";
            }

        },
        created: function () {
            this.getalltask();
        }

    });


</script>

</body>
</html>
