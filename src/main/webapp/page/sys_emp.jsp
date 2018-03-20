<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/3/14
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
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

            <h2>员工设置</h2>


            <p>
            <div style="float:left;">
                <button class="btn-icon btn-plus" onClick="location='sys_emp_add.jsp';"><span></span>添加员工</button>
            </div>


            <div style="float:right;">
                部门
                <select id="type" class="medium" v-on:Change="changeDept">
                    <option>全部</option>
                    <option v-for="dept in deptList" >{{ dept.deptName }}</option>
                </select>
            </div>
            </p>


            <div>
                <div class="dataTables_length">
                    每页显示
                    <select size="1" class="currentCount" v-on:Change="changeCount">
                    <option value="10">10</option>
                    <option value="25">25</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                    </select> 条
                </div>
            <table class="data display" id="dataTable">

                <thead>
                <tr>
                    <th>员工ID</th>
                    <th>员工工号</th>
                    <th>员工姓名</th>
                    <th>所属部门</th>
                    <th>备注</th>
                    <th></th>
                </tr>
                </thead>
                <tr v-for="emp in empList">
                    <td>{{ emp.id }}</td>
                    <td>{{ emp.empNo }}</td>
                    <td>{{ emp.empName }}</td>
                    <td>{{ emp.deptID.deptName }}</td>
                    <td>{{ emp.remark }}</td>
                    <td class="center">
                        <button class="btn-icon btn-small btn-blue btn-star" v-on:Click="jumpUpdate(emp.id)"><span></span>修改</button>
                        <a href="#" v-on:Click="deleteModalShow(emp.id)" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                        <button class="btn-icon btn-small btn-blue btn-star" v-on:Click="jumpUpdateMenu(emp.id)"><span></span>设置菜单权限</button>
                    </td>
                </tr>
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

<script src="/assets/js/jquery/jquery.uniform.min.js"></script>

<script type="text/javascript" src="/assets/js/dashboard.js"></script>

<script type="text/javascript">

    $(document).ready(function () {
        Dashboard.init();

        var vue = new Vue({
            el: "#content",
            data: {
                empList: [],
                deptList:[],
                id: null,
                search:"",
                pageCount:10 ,
                currentPage:0
            },
            methods: {
                //获得所有员工信息
                getAll: function () {
                    var _this = this;
                    $.ajax({
                        url: "/getEmpPage.action",
                        method: "POST",
                        dataType: "JSON",
                        data:{
                            search :_this.search ,
                            currentPage :_this.currentPage,
                            pageCount:_this.pageCount
                        },
                        success: function (result) {
                            if (result != null) {
                                _this.empList = result;
                            }
                        }
                    });
                },
                //获取所有部门
                getDeptAll:function () {
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
                    window.location.href = "sys_emp_add.jsp?Id=" + id;
                },
                //进入修改菜单权限
                jumpUpdateMenu: function (id) {
                    window.location.href = "sys_menupower_set.jsp?Id=" + id;
                },
                //删除
                del: function () {
                    var _this = this;
                    $.ajax({
                        url: "/delEmpById.action",
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
                //显示数量下拉选择的change事件
                changeCount:function () {
                    this.pageCount = $(".currentCount").val();
                    this.getAll() ;
                },
                //显示部门下拉选择的change事件
                changeDept:function () {
                    this.search = $(".medium").val();
                    if (this.search == "全部") {
                        this.search = "" ;
                    }
                    this.getAll() ;
                }
            },
            created: function () {
                this.getAll();
                this.getDeptAll();
            }
        });





    });

</script>

</body>
</html>
