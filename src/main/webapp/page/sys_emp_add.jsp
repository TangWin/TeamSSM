<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/3/18
  Time: 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>
</head>
<body>

<div id="wrapper">

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">


        <div class="x12">

            <h2>添加/修改员工信息</h2>

            <div class="form label-inline uniform">

                <form class="editForm">
                <div class="field"><label for="id">员工ID</label> <input id="id" name="id" size="50" type="text" class="medium" readonly placeholder="自动生成" v-bind:value="emp.id"  /></div>

                <div class="field"><label for="empNo">员工工号</label> <input id="empNo" name="empNo" size="50" type="text" class="medium" v-bind:value="emp.empNo" /></div>

                <div class="field"><label for="empName">员工姓名</label> <input id="empName" name="empName" size="50" type="text" class="medium" v-bind:value="emp.empName" /></div>

                <div class="field"><label for="pwd">密码</label> <input id="pwd" name="pwd" size="50" type="password" class="medium" v-bind:value="emp.pwd"/></div>

                <div class="field"><label for="type">所属部门</label>
                    <select id="type" class="medium" @Change="changeDept" name="deptID.ID">
                        <option v-for="dept in deptList" :value="dept.id" v-html="dept.deptName"></option>
                    </select>
                </div>

                <div class="field"><label for="remark">备注</label> <textarea rows="7" cols="50" id="remark" name="remark">{{ emp.remark }}</textarea></div>
                </form>
                <div class="buttonrow">
                    <button class="btn" v-on:Click="save">保存</button>
                    <button class="btn btn-grey" onClick="location.href='/page/sys_emp.jsp';">返回</button>
                </div>

            </div>

        </div> <!-- .x12 -->

    </div> <!-- #content -->

    <div id="footer">
        <div class="content_pad">
            <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">华瑞教育</a>.</p>
        </div> <!-- .content_pad -->
    </div> <!-- #footer -->

</div> <!-- #wrapper -->


<script src="/assets/js/jquery/jquery.uniform.min.js"></script>

<script type="text/javascript" src="/assets/js/dashboard.js"></script>

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();



        var requestId = "${param.Id}" ;

        var vue = new Vue({
            el: "#content",
            data: {
                emp: "",
                saveUrl: "/addEmp.action",
                deptList: []
            },
            methods: {
                //根据id获取单个员工
                getArea: function () {
                    var _this = this;
                    $.ajax({
                        url: "/getEmpById.action",
                        data: {requestId: requestId},
                        dataType: "JSON",
                        success: function (result) {
                            _this.emp = result;
                            $("#uniform-type").find("span").html(result.deptID.deptName);
                            $("#type").val(result.deptID.id);
                        }
                    });
                },
                //保存编辑
                save: function () {
                    var _this = this;
                    var editForm = $(".editForm").serialize();
                    $.ajax({
                        url: _this.saveUrl,
                        data: editForm,
                        dataType: "JSON",
                        success: function (result) {
                            exitPage(result);
                        }
                    });
                },
                //获取所有部门
                getDeptAll: function () {
                    var _this = this;
                    $.ajax({
                        url: "/getDeptAll.action",
                        method: "POST",
                        dataType: "JSON",
                        success: function (result) {
                            if (result != null) {
                                _this.deptList = result;
                                $("#uniform-type").find("span").html(result[0].deptName);
                            }
                        }
                    });
                },
                //修改部门显示的change事件
                changeDept: function () {
                    $("#uniform-type").find("span").html($("#type").find("option:selected").text());
                }
            },
            created: function () {
                this.getDeptAll();
                //当有传入id，则此次操作为修改
                if (requestId != null && requestId != "") {
                    this.getArea();
                    this.saveUrl = "/updateEmpById.action";
                }
            }
        });

        //是否编辑成功
        function exitPage(isFlag) {
            if (isFlag) {
                alert("编辑成功！");
                window.location.href = "/page/sys_emp.jsp";
            }else{
                alert("编辑失败！");
            }
        }

    });

</script>


</body>
</html>
