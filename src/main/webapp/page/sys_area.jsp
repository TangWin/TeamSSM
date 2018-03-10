<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/3/5
  Time: 16:54
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

    <%--引入头文件--%>
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

                <h2>抄表辖区设置</h2>

                <p><button class="btn-icon btn-plus" onClick="location='sys_area_add.html';"><span></span>添加抄表辖区</button></p>

                <table class="data display">
                    <thead>
                    <tr>
                        <th>抄表辖区ID</th>
                        <th>抄表辖区名称</th>
                        <th>备注</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="odd gradeX">
                        <td>1</td>
                        <td>城东区</td>
                        <td>复兴路口以东</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" onClick="location='sys_area_add.html';"><span></span>修改</button>
                            <a href="#facebox_delete" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                        </td>
                    </tr>
                    <tr class="even gradeC">
                        <td>2</td>
                        <td>城南区</td>
                        <td>四合大夏以南（含阳光巷子、添光巷子）</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" onClick="location='sys_area_add.html';"><span></span>修改</button>
                            <a href="#facebox_delete" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                        </td>
                    </tr>
                    <tr class="odd gradeA">
                        <td>3</td>
                        <td>城西区</td>
                        <td>复兴路口以西</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" onClick="location='sys_area_add.html';"><span></span>修改</button>
                            <a href="#facebox_delete" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                        </td>
                    </tr>
                    <tr class="even gradeA">
                        <td>4</td>
                        <td>城北区</td>
                        <td>市政府以北</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" onClick="location='sys_area_add.html';"><span></span>修改</button>
                            <a href="#facebox_delete" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                        </td>
                    </tr>
                    <tr class="odd gradeA">
                        <td>5</td>
                        <td>新开发区</td>
                        <td>富书开发区</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" onClick="location='sys_area_add.html';"><span></span>修改</button>
                            <a href="#facebox_delete" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                        </td>
                    </tr>
                    <tr class="even gradeA">
                        <td>6</td>
                        <td>旧城区</td>
                        <td>马驱旧城所属区域</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" onClick="location='sys_area_add.html';"><span></span>修改</button>
                            <a href="#facebox_delete" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                        </td>
                    </tr>
                    <tr class="odd gradeA">
                        <td>7</td>
                        <td>特别商户</td>
                        <td>需要单独抄表的特类用水户所属</td>
                        <td class="center">
                            <button class="btn-icon btn-small btn-blue btn-star" onClick="location='sys_area_add.html';"><span></span>修改</button>
                            <a href="#facebox_delete" rel="facebox" class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
                        </td>
                    </tr>
                    </tbody>
                </table>

            </div> <!-- .x12 -->

        </div> <!-- #content -->

        <div id="footer">
            <div class="content_pad">
                <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">华瑞教育</a>.</p>
            </div> <!-- .content_pad -->
        </div> <!-- #footer -->


</div> <!-- #wrapper -->

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();
    });

</script>

</body>

</html>