<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/29
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>
    <style type="text/css">
        .searchDiv input.chk { width:auto; vertical-align:middle; padding:0px; margin:2px; }
    </style>
</head>

<body>

<div id="wrapper">


    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid" >

        <div class="x12">

            <h2>业扩收费报表</h2>

            <div class="searchDiv">
                业扩类型 &nbsp;&nbsp;
                <label><input type="checkbox" class="chk" checked="checked" />新户</label>
                <label><input type="checkbox" class="chk" checked="checked" />分户</label>
                <label><input type="checkbox" class="chk" checked="checked" />换表</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                交费日期 <span class="between">
							<input onClick="WdatePicker();" /> - <input onClick="WdatePicker();" />
						</span>
                <button class="btn btn-small btn-icon btn-find"><span></span>查询</button>
            </div>


            <div class="reportTitle">
                业扩收费报表
            </div>
            <div class="height24">
                <div style="float:left;width:200px;">收费总金额：239434.00 元</div>
            </div>
            <table class="report">
                <thead>
                <tr>
                    <th width="140">工单号</th>
                    <th width="60">类型</th>
                    <th>工单户名</th>
                    <th width="120">用户姓名</th>
                    <th width="120">交费日期</th>
                    <th width="120">交费金额</th>
                    <th width="120">发票号码</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="center">B1-20140105-0001</td>
                    <td class="center">新户</td>
                    <td class="left">中国电信家属区A楼</td>
                    <td class="left">张三</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0001</td>
                    <td class="center">新户</td>
                    <td class="left">中国电信家属区A楼</td>
                    <td class="left">李四</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0001</td>
                    <td class="center">新户</td>
                    <td class="left">中国电信家属区A楼</td>
                    <td class="left">王五</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0001</td>
                    <td class="center">新户</td>
                    <td class="left">中国电信家属区A楼</td>
                    <td class="left">赵六</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0001</td>
                    <td class="center">新户</td>
                    <td class="left">中国电信家属区A楼</td>
                    <td class="left">钱七</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0001</td>
                    <td class="center">新户</td>
                    <td class="left">中国电信家属区A楼</td>
                    <td class="left">唐八</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0001</td>
                    <td class="center">新户</td>
                    <td class="left">中国电信家属区A楼</td>
                    <td class="left">何九</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0001</td>
                    <td class="center">新户</td>
                    <td class="left">中国电信家属区A楼</td>
                    <td class="left">布十</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0374</td>
                    <td class="center">新户</td>
                    <td class="left">许文强</td>
                    <td class="left">许文强</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                <tr>
                    <td class="center">B1-20140105-0291</td>
                    <td class="center">换表</td>
                    <td class="left">丁力</td>
                    <td class="left">丁力</td>
                    <td class="center">2014年01月27日</td>
                    <td class="right">3000.00 元</td>
                    <td class="center">48549933</td>
                </tr>
                </tbody>
            </table>
            <div class="page">
                <a href="#">第一页</a>
                <a href="#">上一页</a>
                <input class="pageIndex" value="1"/> / <input class="pageCount" readonly="readonly" value="98765" />
                <a href="#">下一页</a>
                <a href="#">第未页</a>
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
<script src="../assets/My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();

    });


</script>

</body>

</html>
