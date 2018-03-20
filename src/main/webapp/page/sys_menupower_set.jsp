<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/3/18
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>湖南省自来水公司营销管理信息系统</title>

    <style>

        .checkMenu {
            margin-top: 20px;
        }

    </style>

</head>
<body>


<div id="wrapper">

    <jsp:include page="/header.jsp"/>


    <div id="content" class="xgrid">


        <div class="x12">

            <h2>设置菜单权限</h2>

            <form id="setMenuForm" method="post">

                <div class="form label-inline uniform xgrid">


                    <input type="hidden" value="${param.Id}" name="id"/>

                    <div class="field">
                        <span class="bold">正在设置单个员工的菜单权限</span> <br/>
                        <span class="red">注意：批量编辑多个员工的菜单权限时，不会显示这些员工的原有权限。
							<br/>仅仅在只编辑一个员工时，才会显示该员工的原有权限。</span>
                    </div>

                    <div class="field">
                        <textarea class="medium" disabled="disabled" style="width:100%;height:50px;"> </textarea>
                    </div>

                    <div class="portlet x4">
                        <div class="controlset field">
                            <span class="label">业扩工程</span>
                            <div class="controlset-pad">
                            <span v-for="menu in myAllMenu" v-if="menu.parent==1">
                                <input type="checkbox" name="menu" v-bind:id="menu.id" v-bind:value="menu.id"
                                       v-model="menu.state"
                                       class="checkMenu"/>
                                <label v-bind:for="menu.id">
                                    <i>{{ menu.menuName }}</i>
                                </label><br/>
                            </span>
                            </div>
                        </div>
                    </div>


                    <div class="portlet x4">
                        <div class="controlset field">
                            <span class="label">抄表管理</span>
                            <div class="controlset-pad">
                            <span v-for="menu in myAllMenu" v-if="menu.parent==3">
                                <input type="checkbox" name="menu" v-bind:id="menu.id" v-bind:value="menu.id"
                                       v-model="menu.state"
                                       class="checkMenu"/>
                                <label v-bind:for="menu.id">
                                    <i>{{ menu.menuName }}</i>
                                </label><br/>
                            </span>
                            </div>
                        </div>
                    </div>


                    <div class="portlet x4">
                        <div class="controlset field">
                            <span class="label">用户管理</span>
                            <div class="controlset-pad">
                            <span v-for="menu in myAllMenu" v-if="menu.parent==2">
                                <input type="checkbox" name="menu" v-bind:id="menu.id" v-bind:value="menu.id"
                                       v-model="menu.state"
                                       class="checkMenu"/>
                                <label v-bind:for="menu.id">
                                    <i>{{ menu.menuName }}</i>
                                </label><br/>
                            </span>
                            </div>
                        </div>
                    </div>


                    <div class="portlet x4">
                        <div class="controlset field">
                            <span class="label">收费管理</span>
                            <div class="controlset-pad">
                            <span v-for="menu in myAllMenu" v-if="menu.parent==4">
                                <input type="checkbox" name="menu" v-bind:id="menu.id" v-bind:value="menu.id"
                                       v-model="menu.state" class="checkMenu"/>
                                <label v-bind:for="menu.id">
                                    <i>{{ menu.menuName }}</i>
                                </label><br/>
                            </span>
                            </div>
                        </div>
                    </div>


                    <div class="portlet x4">
                        <div class="controlset field">
                            <span class="label">系统管理</span>
                            <div class="controlset-pad">
                            <span v-for="menu in myAllMenu" v-if="menu.parent==5">
                                <input type="checkbox" name="menu" v-bind:id="menu.id" v-bind:value="menu.id"
                                       v-model="menu.state"
                                       class="checkMenu"/>
                                <label v-bind:for="menu.id">
                                    <i>{{ menu.menuName }}</i>
                                </label><br/>
                            </span>
                            </div>
                        </div>
                    </div>


                </div>

            </form>
            <div class="buttonrow" style="float: right ;">
                <button class="btn" id="submitForm" @click="save">保存</button>
                <button class="btn btn-grey" onClick="history.go(-2);">返回</button>
            </div>
        </div> <!-- .x12 -->

    </div> <!-- #content -->

    <div id="footer">
        <div class="content_pad">
            <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>. 技术支持 </p>
        </div> <!-- .content_pad -->
    </div> <!-- #footer -->


    <script type="text/javascript">

        $(document).ready(function () {

            // Dashboard.init();


            $("body").delegate(".checkMenu", "change", function () {
                $(".checkMenu").each(function () {
                    if (this.checked) {
                        $(this).parent().attr("class", "checked");
                    } else {
                        $(this).parent().attr("class", "");
                    }
                });
            });


            var vue = new Vue({
                el: "#content",
                data: {
                    myAllMenu: [],
                    id: ""
                },
                methods: {
                    //获得员工所有菜单权限
                    getMenuById: function () {
                        var _this = this;
                        $.ajax({
                            url: "/getMenuById.action",
                            method: "POST",
                            dataType: "JSON",
                            data: {
                                id: _this.id
                            },
                            success: function (result) {
                                if (result != null) {
                                    _this.myAllMenu = result.myAllMenu;
                                }
                            }
                        });
                    },
                    //保存编辑
                    save: function () {
                        var _this = this;
                        var editForm = $("#setMenuForm").serialize();
                        console.info(editForm);
                        $.ajax({
                            url: "/updateEmpMenuPower.action",
                            data: editForm,
                            dataType: "JSON",
                            success: function (result) {
                                _this.exitPage(result);
                            }
                        });
                    },
                    //是否编辑成功
                    exitPage: function (isFlag) {
                        if (isFlag) {
                            alert("编辑成功！");
                            window.location.href = "/page/sys_emp.jsp";
                        } else {
                            alert("编辑失败！");
                        }
                    }
                },
                //创建vue对象之前
                beforeCreate: function () {

                },
                //创建完成之后
                created: function () {
                    var requestId = "${param.Id}";
                    var _this = this;
                    if (requestId != null) {
                        this.id = requestId;
                        this.getMenuById();
                    } else {
                        window.location.href = "/404.jsp";
                    }


                }

            });
        });


    </script>


</div>
</body>
</html>
