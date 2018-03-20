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
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>

</head>

<body>

<div id="wrapper">

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">


        <div class="x12">

            <h2>
                供水协议 - <a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">${orderone.orderNo}</a>
                <a style="float:right" href="javascript:history.back(-1);">返回</a>
            </h2>

            <div class="buttonrow">
                <button class="btn-icon btn-arrow-left btn-red"
                        onclick="goback('${orderone.orderNo}',${orderone.orderType});"><span></span>撤回</button>
                <button class="btn-icon btn-arrow-right btn-blue"
                        onclick="gook('${orderone.orderNo}');"><span></span>发送</button>
            </div>
            <br/>
            <table width="100%">
                <thead>
                <tr>
                    <th width="60"></th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>用户名称</td>
                    <td><input readonly="readonly" value="${orderone.userName}" /></td>
                    <td>提比提量值</td>
                    <td><input style="width:96.5%;" id="last"/></td>
                </tr>
                <%--<tr>--%>
                    <%--<td>提比提量值</td>--%>
                    <%--<td><input readonly="readonly" style="width:50%;" id="last"/></td>--%>
                <%--</tr>--%>
                </tbody>
            </table>
            <br/>
            <div style="height:500px">
                    <table id="tibiTable" class="data display">
                        <thead>
                        <tr>
                            <th>用水类型</th>
                            <th>提取值</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="odd" id="find1">
                            <td>SH:生活用水</td>
                            <td><input value="" onmousemove="onmouse();" onmouseout="onmouse();"/></td>
                            <td><button class="btn btn-small btn-red" onclick="delTheInsert(1);">移除</button></td>
                        </tr>
                        <tr class="odd" id="find2">
                            <td>SY:商业用水</td>
                            <td><input value="" onmousemove="onmouse();" onmouseout="onmouse();"/></td>
                            <td><button class="btn btn-small btn-red" onclick="delTheInsert(2);">移除</button></td>
                        </tr>
                        <tr class="odd" id="find3">
                            <td>XZ:行政用水</td>
                            <td><input value="" onmousemove="onmouse();" onmouseout="onmouse();"/></td>
                            <td><button class="btn btn-small btn-red" onclick="delTheInsert(3);">移除</button></td>
                        </tr>
                        <tr class="odd" id="find4">
                            <td>GY:工业用水</td>
                            <td><input value="" onmousemove="onmouse();" onmouseout="onmouse();"/></td>
                            <td><button class="btn btn-small btn-red" onclick="delTheInsert(4);">移除</button></td>
                        </tr>
                        </tbody>
                    </table>

                    <select style="width:100%;" onchange="addtibi(this);">
                        <option>添加新规则</option>
                        <option>SH:生活用水</option>
                        <option>SY:商业用水</option>
                        <option>GY:工业用水</option>
                        <option>XZ:行政用水</option>
                        <option>JQ:军区用水</option>
                        <option>TZ:特种用水</option>
                    </select>

                    <pre>操作说明：
1.提量   指定常量值，如：20，说明提取20吨做为该类型用水
2.提比   指定百分比，如：20%，说明从提量后剩余中提取20%做为该类型用水
3.取剩余 指定*号，说明把提量以及提比之后剩余量做为该类型用水
	</pre>

                <%--</div>--%>

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

    function goback(OrderNo,type) {
        if(confirm("确定要撤回吗？")) {
            window.location.href = "../orderBack.action?OrderNo=" + OrderNo + "&&StepID=" + 5 + "&&type=" + type;
        }
    }

    function gook(OrderNo) {
        if(confirm("确定要发送吗？")) {
            var last = $("#last").val();
            $.ajax({
                url: "../gsxyorderOk.action",
                data: {
                    OrderNo: OrderNo,
                    laster: last
                },
                success: function (data) {
                    window.location.href = "../page/be__contract.jsp";
                }
            });
        }
    }

    function onmouse() {
        var rowarr=document.getElementById("tibiTable").rows;
        var str="";
        for(var i=1;i<rowarr.length;i++){
            var type=rowarr.item(i).cells.item(0).innerText;
            var num=rowarr.item(i).cells.item(1).childNodes[0].value;
            if(num!=""){
                str=str+"["+type.substring(0,3)+num+"]";
            }
        }
        $("#last").val(str);
    }

    //删除行
    function delTheInsert(flag){
        //哪一行
        var row=$("#find"+flag);
        row.remove();
        onmouse();
    }

    //添加提比提量规则
    function addtibi(sel){
        var name = $(sel).val();
        var fid;
        if(name=='添加新规则'){
            return;
        }else if(name=='SH:生活用水'){
            fid=1;
        }else if(name=='SY:商业用水'){
            fid=2;
        }else if(name=='GY:工业用水'){
            fid=3;
        }else if(name=='XZ:行政用水'){
            fid=4;
        }else if(name=='JQ:军区用水'){
            fid=5;
        }else{
            fid=6;
        }
        var tbody = $('#tibiTable tbody');
        tbody.append('<tr id="find'+fid+'"><td>'+name+'</td><td><input onmousemove="onmouse();" onmouseout="onmouse();"/></td><td><button class="btn btn-small btn-red" onclick="delTheInsert('+fid+');">移除</button></td></tr>');
    }

</script>

</body>

</html>