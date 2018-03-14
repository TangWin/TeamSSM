<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/3/13
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>
</head>
<body>
<div id="wrapper">

    <jsp:include page="../header.jsp"/>



    <div id="content" class="xgrid">


        <div class="x12">




            <div id="facebox_delete" style="display: none">
                <div style="height:80px;text-align:center;padding-top:50px;">
                    确认删除吗？
                </div>

                <div class="dialogbutton center">
                    <a class="btn" href="javascript:closeDialog();" style="width:60px;">是</a>
                    <a class="btn btn-grey" href="javascript:closeDialog();" style="width:60px;">否</a>
                </div>
            </div>

            <h2>部门设置</h2>

            <p><button class="btn-icon btn-plus" onClick="location='sys_dept_add.jsp';"><span></span>添加部门</button></p>

            <table class="data display">
                <thead>
                <tr>
                    <th>部门ID</th>
                    <th>部门名称</th>
                    <th>备注</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="dept in deptList" class="odd gradeX">
                    <td>{{ dept.id }}</td>
                    <td>{{ dept.deptName }}</td>
                    <td>{{ dept.remark }}</td>
                    <td class="center">
                        <button class="btn-icon btn-small btn-blue btn-star" v-on:click="jumpUpdate(dept.id)"><span></span>修改</button>
                        <a href="#" v-on:click="deleteModalShow(dept.id)" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                    </td>
                </tr>
                </tbody>
            </table>

        </div> <!-- .x12 -->

    </div> <!-- #content -->

    <div id="footer">
        <div class="content_pad">
            <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.技术支持 <a href="#">华瑞教育</a>.</p>
        </div> <!-- .content_pad -->
    </div> <!-- #footer -->

</div> <!-- #wrapper -->


<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();

        var vue = new Vue({
            el: "#content",
            data: {
                deptList: [],
                id: null
            },
            methods: {
                //获得所有部门
                getAll: function () {
                    var _this = this;
                    $.ajax({
                        url: "/getDeptAll.action",
                        method: "POST",
                        dataType: "JSON",
                        success: function (result) {
                            if (result != null) {
                                _this.deptList = result;
                            }
                        }
                    });
                },
                //进入修改
                jumpUpdate: function (id) {
                    window.location.href = "sys_dept_add.jsp?Id=" + id ;
                },
                //删除
                del: function () {
                    var _this = this;
                    $.ajax({
                        url: "/delDeptById.action",
                        method: "POST",
                        dataType: "JSON",
                        data: {id: _this.id},
                        success: function (result) {
                            _this.exitPage(result);
                        }
                    });
                },
                //是否编辑成功
                exitPage: function (isFlag) {
                    this.getAll() ;
                    if (isFlag) {
                        alert("操作成功！");
                    } else {
                        alert("操作失败！");
                    }
                },
                //删除提示
                deleteModalShow: function (id) {
                    this.id = id;
                    if (confirm("确认删除吗？")) {
                        this.del();
                    }
                },
            },
            created: function () {
                this.getAll();
            }
        });



    });

</script>
</body>
</html>
