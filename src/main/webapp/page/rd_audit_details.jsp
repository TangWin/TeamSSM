<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/16 0016
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>
    <style type="text/css">
        table.data thead th { vertical-align:middle; text-align:center; }
        .re { width:60px; text-align:center; }
    </style>
</head>

<body>

<div id="wrapper">

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">

        <div class="x12">
        <div id="app">
            <h2>
                抄表复核 - 按表册复核 - 城东#1
                <div style="float:right;">
                    按表册复核
                    <a href="rd_auditUser.html">按用户复核</a>
                </div>
            </h2>

            <div style="float:left;">
                <button class="btn-icon btn-grey btn-back" onClick="history.back(-1);"><span></span>返回</button>
            </div>
            <div style="float:right;">
                <button class="btn-icon btn-blue btn-check" onClick="auditMutil();"><span></span>复核选中的所有记录</button>
            </div>
            <br/><br/>

            <table class="data display">
                <thead>
                <tr>
                    <th><input type="checkbox" onClick="$(':checkbox.chk').attr('checked',this.checked);"></th>
                    <th>年份</th>
                    <th>月份</th>
                    <th>用户编码</th>
                    <th>用户姓名</th>
                    <th>上次底码</th>
                    <th>本次底码</th>
                    <th>用水量</th>
                    <th>性质</th>
                    <th>&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <tr class="odd" v-for="audidetail in audidetails">
                    <td class="center"><input type="checkbox" class="chk"></td>
                    <td class="center">{{audidetail.ReadYear}}</td>
                    <td class="center">{{audidetail.ReadMonth}}</td>
                    <td class="center">{{audidetail.UserNo}}</td>
                    <td class="center">{{audidetail.UserName}}</td>
                    <td class="center">{{audidetail.PreValue}}</td>
                    <td class="right">{{audidetail.CurValue}}</td>
                    <td class="right">{{audidetail.Amount}}</td>
                    <td class="center">每月抄表任务</td>
                    <td class="center">
                        <button class="btn-icon btn-small btn-blue btn-check" v-on:click="audit(audidetail.id);"><span></span>复核</button>
                    </td>
                </tr>

                </tbody>
            </table>
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

    //审核操作
    function auditMutil(){
        showWindow({url:'../page/rd_audit_progress.jsp',width:560,height:240});
    }
    /*function audit(id){


    }*/

    new Vue({
      el:"#app",
      data:{
          "audidetails":[],
          "audidetail":"",
          "auditdetailurl":""
        },
       methods:{
           auditdetail:function () {
               var auditdetail_this=this;
               var voluemid=sessionStorage.getItem("volumeid");
               auditdetail_this.auditdetailurl="/enter/auditdetail.action?volumeid="+voluemid;
               $.getJSON(auditdetail_this.auditdetailurl,function (result,status) {
                   auditdetail_this.audidetails=result;

               });
           },
           audit:function(id){
               var audit_this=this;
               $.ajax({
                   url:"/enter/check.action?id="+id,
                   type:"JSON",
                   success:function (data) {
                       audit_this.auditdetail();
                   }
               });

                showWindow({url:'../page/rd_audit_progress1.jsp',width:560,height:240});
           }

       },
        created:function () {
            this.auditdetail();
        }
    });









</script>

</body>

</html>
