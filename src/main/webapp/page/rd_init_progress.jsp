<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/9 0009
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>初始化抄表年月</title>
</head>

<body>

<div id="messageDiv">
    <div style="height:80px;text-align:center;padding-top:50px;">
        确定要初始化抄表年月【2014年01月】吗？
    </div>

    <div class="dialogbutton center">
        <a class="btn" href="javascript:start();" style="width:60px;">是</a>
        <a class="btn btn-grey" href="javascript:parent.close();" style="width:60px;">否</a>
    </div>
</div>

<form class="form label-inline uniform " style="display:none;">
    <h2>正在初始化【2014年01月】的抄表任务...</h2>

    <div class="progressContent">
        <span id="message">&nbsp;</span>
        <div id="progressbar"></div>
    </div>

    <div class="center">
        <br/>
        <button id="ok" class="btn btn-blue" style="display:none;" onClick="parent.close();">完成</button>
    </div>
</form>

<script src="../assets/js/jquery/jquery.uniform.min.js"></script>

<script src="../assets/js/dashboard.js"></script>

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();

        function start(){
            $('#messageDiv').hide();
            $('form').show();
            process();
        }




        var max = 57184;
        var value = 0;
        function process(){
            value+=100; if(value>max)value=max;
            $( "#progressbar" ).progressbar({ max:max, value: value });
            processShowInfo();
            if(value<max){
                setTimeout(process, 10);
            }else{
                processComplete();
            }
        }
        function processShowInfo(){
            $('#message').text(value+'户/'+max+'户');
        }
        function processComplete(){
            $('#ok').show();
        }

        $( "#progressbar" ).progressbar({ max:max, value: 0 });
    });

</script>

</body>
</html>
