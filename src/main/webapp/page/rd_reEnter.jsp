<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/9 0009
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>

    <style type="text/css">
        table.data thead th { vertical-align:middle; text-align:center; }
    </style>
</head>

<body>

<div id="wrapper">

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid" >

        <div class="x12">

            <h2>再次抄表录入</h2>
            <div>说明：用于在同一月份中，对用户进行第二次，第三次或更多次抄表。注意：再次抄表同样要进行复核，复核后同样会产生水费单，这样用户一个月可能会出现两张或更多张水费单。</div>

            <div class="searchUserDiv">
                用户编码 <input value="0100000987" />
                用户简码 <input value="张三" />
                用户姓名 <input />
                联系电话 <input />
                家庭住址 <input />
                <button class="btn btn-small btn-icon btn-person"><span></span>查询用户</button>
            </div>

            <div class="height40">
                <button class="btn-icon btn-blue btn-check" onClick="location.href = 'rd_reEnter_add.html';"><span></span>添加再次抄表记录</button>
            </div>

            <table class="data display">
                <thead>
                <tr>
                    <th>用户编码</th>
                    <th>用户姓名</th>
                    <th>抄表年月</th>
                    <th>性质</th>
                    <th>复核</th>
                    <th>上次底码</th>
                    <th>本次底码</th>
                    <th>用水量</th>
                    <th>操作人</th>
                    <th>操作日期</th>
                </tr>
                </thead>
                <tbody>
                <tr class="odd">
                    <td class="center">0100000987</td>
                    <td class="center">张三</td>
                    <td class="center">201312</td>
                    <td class="center">每月抄表任务</td>
                    <td class="center">是</td>
                    <td class="right">2056</td>
                    <td class="right">2066</td>
                    <td class="right">10</td>
                    <td class="center">李彦宏</td>
                    <td class="center">2014年01月03日</td>
                </tr>
                <tr class="even">
                    <td class="center">0100000987</td>
                    <td class="center">张三</td>
                    <td class="center">201312</td>
                    <td class="center">再次抄表</td>
                    <td class="center">否</td>
                    <td class="right">2066</td>
                    <td class="right">2079</td>
                    <td class="right">13</td>
                    <td class="center">李彦宏</td>
                    <td class="center">2014年01月11日</td>
                </tr>
                <tr class="odd"> <!-- 查询不到数据 -->
                    <td class="center" colspan="11">
                        用户【0100000987 张三】没有任何抄表记录。
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

<script src="../assets/js/jquery/jquery.uniform.min.js"></script>

<script src="../assets/js/dashboard.js"></script>

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();

    });


</script>

</body>

</html>
