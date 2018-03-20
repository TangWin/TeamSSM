<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/29
  Time: 10:40
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

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">


        <div class="x12">

            <h2>终止工单</h2>

            <div class="height40">
                工单号 <input id="OrderNo"/>
                <button class="btn btn-small btn-icon btn-find" onclick="selectOrder();">查询工单</button>
            </div>

            <br/><br/>

            <div class="form label-inline uniform">

                <div class="field"><label>工单号</label> <input name="fname" size="50" type="text" class="medium" disabled="disabled" id="a"/></div>
                <div class="field"><label>工单类型</label> <input name="fname" size="50" type="text" class="medium" disabled="disabled" id="b"/></div>
                <div class="field"><label>用户姓名</label> <input name="fname" size="50" type="text" class="medium" disabled="disabled" id="c"/></div>
                <div class="field"><label>用户地址</label> <input name="fname" size="50" type="text" class="medium" disabled="disabled" id="d"/></div>
                <div class="field"><label>联系人</label> <input name="fname" size="50" type="text" class="medium" disabled="disabled" id="e"/></div>
                <div class="field"><label>联系电话</label> <input name="fname" size="50" type="text" class="medium" disabled="disabled" id="f"/></div>
                <div class="field"><label>当前流程</label> <input name="fname" size="50" type="text" class="medium" disabled="disabled" id="g"/></div>
                <div class="field"><label>最后操作时间</label> <input  name="fname" size="50" type="text" class="medium" disabled="disabled" id="i"/></div>
                <div class="field"><label>已交费</label> <input name="fname" size="50" type="text" class="medium" disabled="disabled" id="j"/></div>

                <div class="field"><label for="description">终止原因</label> <textarea rows="7" cols="50" id="description" name="description"></textarea></div>

                <div class="buttonrow">
                    <button class="btn" onclick="gameOver();">确认终止</button>
                    <button class="btn btn-grey" onClick="history.back(-1);">返回</button>
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
<script src="../assets/js/jquery/jquery.uniform.min.js"></script>

<script src="../assets/js/dashboard.js"></script>

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();
    });

    function gameOver() {
        var OrderNo = $("#OrderNo").val();
        var g = $("#g").val();
        if(g=="已完成"){
            alert("工单已完成！");
        }else if(g=="已终止"){
            alert("工单已终止！");
        }else{
            var description = $("#description").val();
            if(description==""){
                alert("终止原因不能为空！");
            }else{
                if(confirm("确定要终止工单吗？")){
                        window.location.href="../orderoverOk.action?OrderNo="+OrderNo+"&&description="+description;
                }
            }
        }



    }

    function selectOrder() {
        var OrderNo = $("#OrderNo").val();
        $.ajax({
            url : '../overOrder.action?OrderNo='+OrderNo,
            dataType : 'text',
            success : function (data){
                var order=JSON.parse(data);
                var a = $("#a").val(order.orderNo);
                var type="";
                switch(order.orderType){
                    case 1:
                        type="新户";
                        break;
                    case 2:
                        type="分户";
                        break;
                    case 3:
                        type="过户";
                        break;
                    case 4:
                        type="代扣";
                        break;
                    case 5:
                        type="换表";
                        break;
                    case 6:
                        type="重签";
                        break;
                    case 7:
                        type="销户";
                        break;
                }
                var b = $("#b").val(type);
                var c = $("#c").val(order.userName);
                var d = $("#d").val(order.address);
                var e = $("#e").val(order.linkMan);
                var f = $("#f").val(order.phone);
                        var thestep="";
                        switch(order.stepID){
                            case 0:
                                thestep="已完成";
                                break;
                            case -1:
                                thestep="已终止";
                                break;
                            case 1:
                                thestep="用户申请";
                                break;
                            case 2:
                                thestep="初步审核";
                                break;
                            case 3:
                                thestep="交施工费";
                                break;
                            case 4:
                                thestep="水费清算";
                                break;
                            case 5:
                                thestep="供水协议";
                                break;
                            case 6:
                                thestep="施工竣工";
                                break;
                            case 7:
                                thestep="通水停水";
                                break;
                            case 8:
                                thestep="档案存档";
                                break;
                        }var g = $("#g").val(thestep);

                var i = $("#i").val(order.lastEditDate);
                        var flag="";
                        if(order.payDate!=null){
                            flag="是"
                        }else{
                            flag="否"
                        }
                var j = $("#j").val(flag);
                $("#description").val("");
            }
        });

    }

</script>

</body>

</html>
