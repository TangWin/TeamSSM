<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/29
  Time: 10:38
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

            <h2>
                施工竣工 - <a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">${orderone.orderNo}</a>
                <a style="float:right" href="javascript:history.back(-1);">返回</a>
            </h2>

            <div class="buttonrow">
                <button class="btn-icon btn-arrow-left btn-red"
                        onclick="goback('${orderone.orderNo}',${orderone.orderType});"><span></span>撤回</button>
                <button class="btn-icon btn-arrow-right btn-blue"
                        onclick="gook('${orderone.orderNo}');"><span></span>发送</button>
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
                    <td><input readonly="readonly" value="${orderone.userName}" /></td>
                </tr>
                <tr>
                    <td>所属辖区</td>
                    <td><select style="width:152px;" id="xq">
                        <option value="1">城东区</option>
                        <option value="2">城南区</option>
                        <option value="3">城西区</option>
                        <option value="4">城北区</option>
                        <option value="5">新开发区</option>
                        <option value="6">旧城区</option>
                        <option value="7">特别商户区</option>
                    </select></td>
                </tr>
                <tr>
                    <td>表径</td>
                    <td><select style="width:152px;" id="bj">
                        <option value="1">DN10</option>
                        <option value="2">DN15</option>
                        <option value="3">DN20</option>
                        <option value="4">DN40</option>
                        <option value="5">DN80</option>
                        <option value="6">DN100</option>
                        <option value="7">DN200</option>
                        <option value="8">DN500</option>
                        <option value="9">DN1000</option>
                    </select></td>
                </tr>
                <tr>
                    <td>表身码</td>
                    <td><input value="" id="bsm"/></td>
                </tr>
                <tr>
                    <td>最大表码值</td>
                    <td><input value="" id="bmz"/></td>
                </tr>
                <tr>
                    <td>起始码</td>
                    <td><input value="" id="qsm"/></td>
                </tr>
                <tr>
                    <td>水表厂家</td>
                    <td><input value="" id="cj"/></td>
                </tr>
                <tr>
                    <td>开工日期</td>
                    <td><input value="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" id="start"/></td>
                </tr>
                <tr>
                    <td>竣工日期</td>
                    <td><input value="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" id="end"/></td>
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

    function goback(OrderNo,type) {
        if(confirm("确定要撤回吗？")) {
            window.location.href = "../orderBack.action?OrderNo=" + OrderNo + "&&StepID=" + 6 + "&&type=" + type;
        }
    }

    function gook(OrderNo) {
        if(confirm("确定要发送吗？")) {
            var xq = $("#xq").val();//辖区
            var bj = $("#bj").val();//表径
            var bsm = $("#bsm").val();//表身码
            var bmz = $("#bmz").val();//表码值
            var qsm = $("#qsm").val();//起始码
            var cj = $("#cj").val();//厂家
            var start = $("#start").val();//施工日期
            var end = $("#end").val();//竣工日期
            var date = xq + "," + bj + "," + bsm + "," + bmz + "," + qsm + "," + cj + "," + start + "," + end;
            window.location.href = "../sgjgorderOk.action?OrderNo=" + OrderNo + "&&date=" + date;
        }
    }

</script>

</body>

</html>