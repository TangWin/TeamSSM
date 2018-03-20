<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/29
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>

    <script type="text/javascript">

    </script>
</head>

<body onload="table(1);">

<div id="wrapper">

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">


        <div class="x12">

            <h2>正在等待【水费清算】的工单</h2>

            <table class="data display">
                <thead>
                <tr>
                    <th width="120">工单号</th>
                    <th width="60">类型</th>
                    <th width="80">进度</th>
                    <th width="90">当前处理部门</th>
                    <th width="100">最后操作日期</th>
                    <th width="200">用户名称</th>
                    <th></th>
                </tr>
                </thead>
                <tbody  id="table">
                </tbody>
            </table>
            <div class="page">
                <a href="javascript:page(1);">第一页</a>
                <a href="javascript:page(2);">上一页</a>
                <input id="newtotal" class="pageCount" readonly="readonly" value="0"/> / <input id="total" class="pageCount" readonly="readonly" value="0" />
                <a href="javascript:page(3);">下一页</a>
                <a href="javascript:page(4);">第未页</a>
            </div>

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


    function table(tid) {
        $.ajax({
            url : '../cbshorderNum.action?step='+4,
            dataType : 'text',
            success : function (data){
                if(data==0){
                    $("#newtotal").val(data);
                }else{
                    $("#newtotal").val(1);
                }
                $("#total").val(data);
            }
        });
        $("#table").load("../cbshorder.action?tid="+tid+"&&step="+4);
    }

    function page(tid) {
        if(tid==2){
            var newtotal = $("#newtotal").val();
            if(newtotal<=1){
                tid=1;
            }else{
                tid=parseInt(newtotal)-1;
            }
        }else if(tid==3){
            var newtotal = $("#newtotal").val();
            var total = $("#total").val();
            if(newtotal>=total){
                tid=total;
            }else{
                tid=parseInt(newtotal)+1;
            }
        }else if(tid==4){
            var last = $("#total").val();
            tid=last;
        }
        $("#newtotal").val(tid);
        $("#table").load("../cbshorder.action?tid="+tid+"&&step="+4);
    }


</script>

</body>

</html>
