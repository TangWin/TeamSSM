<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/3/11
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>湖南省自来水公司营销管理信息系统</title>
</head>
<body>


<div id="wrapper">

    <%--引入头文件--%>
    <jsp:include page="../header.jsp"/>

    <div id="content" class="xgrid">


        <div class="x12">

            <h2>添加/修改部门</h2>

            <div class="form label-inline uniform">
                <form class="editForm">

                <div class="field"><label for="id">部门ID</label>
                    <input id="id" name="ID" size="50" type="text" class="medium" readonly placeholder="自动生成"  v-bind:value="dept.id"/></div>

                <div class="field"><label for="name">部门名称</label>
                    <input id="name" name="deptName" size="50" type="text" class="medium" v-bind:value="dept.deptName" /></div>


                <div class="field"><label for="description">备注</label>
                    <textarea rows="7" cols="50" id="description" name="remark">{{ dept.remark }}</textarea></div>

                </form>
                <div class="buttonrow">
                    <input type="button" class="btn" v-on:click="save" value="保存" />
                    <input class="btn btn-grey" type="button" onClick="location='/page/sys_dept.jsp';" value="返回"/>
                </div>
            </div>

        </div> <!-- .x12 -->

    </div> <!-- #content -->

    <div id="footer">
        <div class="content_pad">
            <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>. 技术支持 <a href="#">华瑞教育</a>.</p>
        </div> <!-- .content_pad -->
    </div> <!-- #footer -->



</div>
<script type="text/javascript">
    $(function () {

        var requestId = "${param.Id}" ;

        var vue = new Vue({
            el:"#content",
            data:{
                dept:"",
                saveUrl:"/addDept.action"
            },
            methods:{
                //根据id获取单个部门
                getArea:function () {
                    var _this = this ;
                    $.ajax({
                        url:"/getDeptById.action",
                        data:{requestId : requestId },
                        dataType:"JSON",
                        success:function(result){
                            _this.dept = result ;
                        }
                    });
                },
                //保存编辑
                save:function () {
                    var _this = this ;
                    var editForm = $(".editForm").serialize();
                    $.ajax({
                        url:_this.saveUrl,
                        data:editForm,
                        dataType:"JSON",
                        success:function(result){
                            exitPage(result);
                        }
                    });
                }
            },
            created:function () {
                if (requestId!=null && requestId != "") {
                    this.getArea() ;
                    this.saveUrl = "/updateDept.action";
                }
            }
        });

        //是否编辑成功
        function exitPage(isFlag) {
            if (isFlag) {
                alert("编辑成功！");
                window.location.href = "/page/sys_dept.jsp";
            }else{
                alert("编辑失败！");
            }
        }


    });


</script>
</body>
</html>
