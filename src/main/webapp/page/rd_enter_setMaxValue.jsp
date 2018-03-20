<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/15 0015
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>修改最大表码值</title>

</head>

<body>
<div id="app">
<form action="?" class="form label-inline uniform ">
    <h2>修改最大表码值</h2>

    <div class="field"><label>用户编码</label>
        <input size="50"  type="text" class="medium" v-model="datastr.UserNo" disabled="disabled" /></div>

    <div class="field"><label >表身码</label>
        <input size="50" type="text" class="medium" v-model="datastr.MeterName" disabled="disabled" /></div>

    <div class="field"><label >用户姓名</label>
        <input size="50" type="text" class="medium" v-model="datastr.UserName" disabled="disabled" /></div>

    <div class="field"><label >最大表码值</label>
        <input size="50" type="text" class="medium" v-model="datastr.MaxValue" /></div>

    <div class="buttonrow">
        <input type="button" class="btn"  v-on:click="submitdatasstr(datastr);" value="确定"/>
        <button class="btn btn-grey" onClick="parent.close();">关闭</button>
    </div>

</form>
</div>
<script src="../assets/js/jquery/jquery.uniform.min.js"></script>

<script src="../assets/js/dashboard.js"></script>

<script type="text/javascript">



   new Vue({
       el:"#app",
       data:{
           "datastr":"",
       },
       methods:{
           getdatastr:function(){
               var data_this=this;
               var  datastr=sessionStorage.getItem("data");
               var data=JSON.parse(datastr);
                 data_this.datastr=data;
           },
           submitdatasstr:function (data) {
               //获取水表的编号
               var meterno=data.MeterNo;
               //获取用户的编码
               var username=data.UserNo;
               //拿到修改后的数据
               var modiydata=data.MaxValue;


               window.location.href="/changevalue/changemaxvalue.action?datastrtwo="+datastrtwo;



           }
       },
       created:function () {
           this.getdatastr();
       }

   });



</script>

</body>

</html>
