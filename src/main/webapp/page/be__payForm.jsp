<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/29
  Time: 10:37
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


<jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">


        <div class="x12">

            <h2>
                交施工费 - <a href="../page/be_orderInfo.html?id=B1-20140105-0001"
                          target="orderInfo">${orderone.orderNo}</a>
                <a style="float:right" href="javascript:history.back(-1);">返回</a>
            </h2>

            <div class="buttonrow">
                <button class="btn-icon btn-arrow-left btn-red"
                        onclick="goback('${orderone.orderNo}',${orderone.orderType});"><span></span>撤回
                </button>
                <button class="btn-icon btn-arrow-right btn-blue"
                        onclick="gook('${orderone.orderNo}');"><span></span>发送
                </button>
            </div>

            <table width="100%">
                <thead>
                <tr>
                    <th width="60"></th>
                    <th width="220"></th>
                    <th width="60"></th>
                    <th width="220"></th>
                    <th width="60"></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>用户名称</td>
                    <td><input readonly="readonly" value="${orderone.userName}"/></td>
                </tr>
                <tr>
                    <td>总应收</td>
                    <td><input class="left" id="all" onmousemove="result();" onmouseout="result();"/> 元</td>
                </tr>
                <tr>
                    <td>总实收</td>
                    <td><input class="left" id="themoney" onmousemove="result();" onmouseout="result();"/> 元</td>
                </tr>
                <tr>
                    <td>总欠缴</td>
                    <td><input class="left" id="overdue" onmousemove="result();" onmouseout="result();"/> 元</td>
                </tr>
                </tbody>
            </table>

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
    })

    function result() {
        var all = $("#all").val();
        var themoney = $("#themoney").val();
        if (all != "" && themoney != "") {
            $("#overdue").val(parseInt(all) - parseInt(themoney));
        }
    }

    function goback(OrderNo, type) {
        if (confirm("确定要撤回吗？")) {
            window.location.href = "../orderBack.action?OrderNo=" + OrderNo + "&&StepID=" + 3 + "&&type=" + type;
        }
    }

    function gook(OrderNo) {
        if (confirm("确定要发送吗？")) {
            var all = $("#all").val();
            var themoney = $("#themoney").val();
            var overdue = $("#overdue").val();
            if (all == "" || themoney == "") {
                alert("金额不能为空！");
            } else {
                window.location.href = "../jsgforderOk.action?OrderNo=" + OrderNo + "&&all=" + all + "&&themoney=" + themoney + "&&overdue=" + overdue;
            }
        }
    }
</script>

</body>

</html>