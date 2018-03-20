<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/16 0016
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>进度条</title>
</head>

<body>

<form class="form label-inline uniform ">
    <h2>正在复核...</h2>

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

    $(document).ready(function () {
        Dashboard.init();

        $("#progressbar").progressbar({max: max, value: 0});
        setTimeout(process, 1000)
    });

    var max = 1;
    var value = 0;

    function process() {
        value += 1;
        if (value > max) value = max;
        $("#progressbar").progressbar({max: max, value: value});
        processShowInfo();
        if (value < max) {
            setTimeout(process, 10);
        } else {
            processComplete();
        }
    }

    function processShowInfo() {
        $('#message').text(value + '户/' + max + '户');
    }

    function processComplete() {
        $('#ok').show();
    }


</script>

</body>
</html>
