<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/9 0009
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>湖南省自来水公司营销管理信息系统</title>
    <style type="text/css">
        table.data thead th {
            vertical-align: middle;
            text-align: center;
        }

        .re {
            width: 60px;
            text-align: center;
        }
    </style>
</head>

<body>

<div id="wrapper">

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">

        <div class="x12">

            <h2>
                抄表复核 - 按表册复核
                <div style="float:right;">
                    按表册复核
                    <a href="rd_auditUser.html">按用户复核</a>
                </div>
            </h2>
            <div id="app">
                <table class="data display">
                    <thead>
                    <tr>
                        <th>辖区</th>
                        <th>表册</th>
                        <th>抄表员</th>
                        <th>应抄数</th>
                        <th>实抄数</th>
                        <th>复核数</th>
                        <th>复核操作</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr class="odd" v-for="audit in audits">
                        <td>{{audit.AreaName}}</td>
                        <td>{{audit.VolumeName}}</td>
                        <td>{{audit.EmpName}}</td>
                        <td class="center">3129</td>
                        <td class="center">3129</td>
                        <td class="center">2056</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" v-on:click="inputclick(audit)">
                                <span></span>进入表册
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

    new Vue({
        el: "#app",
        data: {
            "auditurl": "/task/getalltask.action",
            "audits": [],
            "audit": "",
        },
        methods: {
            getallaudit: function () {
                var audit_this = this;
                $.getJSON(audit_this.auditurl, function (result, status) {
                    audit_this.audits = result;
                })
            },
            inputclick: function (data) {
                sessionStorage.setItem("volumeid", data.VolumeId);
                window.location.href = "rd_audit_details.jsp";
            }
        },
        created: function () {
            this.getallaudit();
        }


    });


</script>

</body>
</html>
