<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/29
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>
    <style type="text/css">
        table.report tr { line-height:38px; }
        table.report th,table.report td.item{ background-color:#CCCCCC; }
        table.report .todo , table.report .cnt{ background-color:#99FFFF; }
        table.report tr.todo td.cnt { font-weight:bold; color:red; }
        table.report td.hover { cursor:pointer; }
        table.report td.hover { background-color:#FFFF99; }
    </style>

</head>

<body>

<div id="wrapper">


    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid" >

        <div class="x12">

            <h2>业扩工程进度</h2>


            <table class="report">
                <thead>
                <tr>

                    <th>进度</th>
                    <th width="100">新户</th>
                    <th width="100">分户</th>
                    <th width="100">过户</th>
                    <th width="100">代扣</th>
                    <th width="100">换表</th>
                    <th width="100">重签</th>
                    <th width="100">销户</th>
                    <th width="100">总数</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="center item">01 用户申请</td>
                    <td class="center num">16</td>
                    <td class="center num">2</td>
                    <td class="center num">15</td>
                    <td class="center num">14</td>
                    <td class="center num">31</td>
                    <td class="center num">13</td>
                    <td class="center num">15</td>
                    <td class="center cnt num">106</td>
                </tr>
                <tr>
                    <td class="center item">02 初步审核</td>
                    <td class="center num">45</td>
                    <td class="center num">45</td>
                    <td class="center num">145</td>
                    <td class="center num">12</td>
                    <td class="center num">4</td>
                    <td class="center num">56</td>
                    <td class="center num">1</td>
                    <td class="center cnt num">308</td>
                </tr>
                <tr>
                    <td class="center item">03 交施工费</td>
                    <td class="center num">14</td>
                    <td class="center num">91</td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center num">19</td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center cnt num">124</td>
                </tr>
                <tr>
                    <td class="center item">04 水费清算</td>
                    <td class="center num"></td>
                    <td class="center num">33</td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center num">17</td>
                    <td class="center cnt num">50</td>
                </tr>
                <tr>
                    <td class="center item">05 供水协议</td>
                    <td class="center num">41</td>
                    <td class="center num">78</td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center num">40</td>
                    <td class="center num"></td>
                    <td class="center cnt num">159</td>
                </tr>
                <tr>
                    <td class="center item">06 施工竣工</td>
                    <td class="center num">188</td>
                    <td class="center num">12</td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center num">10</td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center cnt num">210</td>
                </tr>
                <tr>
                    <td class="center item">07 通水停水</td>
                    <td class="center num">31</td>
                    <td class="center num">9</td>
                    <td class="center num"></td>
                    <td class="center num"></td>
                    <td class="center num">54</td>
                    <td class="center num"></td>
                    <td class="center num">48</td>
                    <td class="center cnt num">142</td>
                </tr>
                <tr>
                    <td class="center item">08 档案存档</td>
                    <td class="center num">31</td>
                    <td class="center num">61</td>
                    <td class="center num">14</td>
                    <td class="center num">156</td>
                    <td class="center num">16</td>
                    <td class="center num">55</td>
                    <td class="center num">19</td>
                    <td class="center cnt num">352</td>
                </tr>
                <tr class="todo">
                    <td class="center item">　 待办总数</td>
                    <td class="center num">366</td>
                    <td class="center num">331</td>
                    <td class="center num">174</td>
                    <td class="center num">182</td>
                    <td class="center num">134</td>
                    <td class="center num">164</td>
                    <td class="center num">100</td>
                    <td class="center cnt num">1451</td>
                </tr>
                <tr>
                    <td class="center item">　 工单完成</td>
                    <td class="center num">29384</td>
                    <td class="center num">19485</td>
                    <td class="center num">8548</td>
                    <td class="center num">1240</td>
                    <td class="center num">6231</td>
                    <td class="center num">19485</td>
                    <td class="center num">1589</td>
                    <td class="center cnt num">85962</td>
                </tr>
                <tr>
                    <td class="center item">　 工单终止</td>
                    <td class="center num">2495</td>
                    <td class="center num">1947</td>
                    <td class="center num">156</td>
                    <td class="center num">153</td>
                    <td class="center num">345</td>
                    <td class="center num">389</td>
                    <td class="center num">49</td>
                    <td class="center cnt num">5534</td>
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
<script src="../assets/My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();

        $('.num').hover(function(){
            $(this).addClass('hover');
        },function(){
            $(this).removeClass('hover');
        }).click(function(){
            if(!$(this).text())return;
            window.open('../page/be_order.html?where___');
        });
    });


</script>

</body>

</html>
