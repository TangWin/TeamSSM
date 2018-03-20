<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/9 0009
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>湖南省自来水公司营销管理信息系统</title>
    <style type="text/css">
        input.enter {
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            -moz-border-radius: 0px;
            -webkit-border-radius: 0px;
            border-radius: 0px;
            border: 1px solid #000;
            margin: 0px;
            padding: 0px;
            background: none;
            width: 98%;
            height: 100%;
            text-align: right;
        }

        table.data tbody td.enter {
            padding: 0px;
            margin: 0px;
            width: 100px;
            vertical-align: middle;
        }

        .right a {
            color: #000;
        }

        .state0 {
            color: #999;
        }

        /*待抄*/
        .state1 {
            color: #000;
        }

        /*已抄未复核*/
        .state2 {
            color: #0000FF;
        }

        /*已复核*/
    </style>
</head>

<body>

<div id="wrapper">

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">
        <div id="app">
            <div class="x12">

                <h2>
                    抄表录入 - 2013年12月 - 城东#1（共406户）
                    <div style="float:right;" id="selected">

                    </div>
                </h2>

                <table class="data display">
                    <thead>
                    <tr>
                        <th>用户编码</th>
                        <th>表身码</th>
                        <th>最大表码值</th>
                        <th width="100">用户姓名</th>
                        <th>上月表码数</th>
                        <th>本月表码数</th>
                        <th>实际用水量</th>
                        <th width="200">状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="odd gradeX" v-for="read in reads">
                        <td>{{read.UserNo}}</td>
                        <td>{{read.MeterName}}</td>
                        <td class="right"><a v-on:click="setMaxValue(read)">{{read.MaxValue}}</a></td>
                        <td>{{read.UserName}}</td>
                        <td class="right"><a href="javascript:setPreValue('{{read}}');">{{read.PreValue}}</a></td>
                        <td class="enter"><input type="text" @blur="blufn(read)" id="{{read.id}}" class="enter"
                                                 v-model.number="read.CurValue"></td>
                        <td class="right">{{read.Amount}}</td>
                        <td><a v-if="read.Enter==1" v-on:click="setNotEnter(read)" class="state1">已抄，未复核</a></td>
                        <a v-else="read.Enter=='0'" v-bin:href="javascript:void(0)" class="state1">未抄</a>
                        </td>
                    </tr>

                    </tbody>
                </table>

            </div> <!-- .x12 -->
        </div>
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


    });

    <!---->
    function getselect() {
        $("#selected").load('/area/getallareas.action');
    }

    new Vue({
        el: '#app',
        data: {
            "tip": '',
            "reads": [],
            "read": "",
            "readsubmiturl": "/enter/getallread.action"
        },
        methods: {
            getallread: function () {
                var read_this = this;
                read_this.readsubmiturl = "/enter/getallread.action";
                $.getJSON(read_this.readsubmiturl, function (result, status) {
                    read_this.reads = result;

                });
            },
            blufn: function (data) {

                var readthis = this;
                //得到当月的用水量
                var curvalue = data.CurValue;
                //得到上个月的用水量
                var prevules = data.PreValue;

                //比较当前月份的用户用水量，本月的用水量大于最大表码值，则该水表转盘不合理
                if (prevules <= curvalue) {

                    data.Amount = curvalue - prevules;
                    //将该条记录改为已超的状态
                    data.Enter = 1;

                } else {
                    //不合理的现象
                    //给当前的总用水量并且重新赋值（最大的表码值-当前+上个月）

                    data.Amount = data.MaxValue - prevules + curvalue;

                    if (data.Amount >= data.MaxValue * 0.2) {

                        //显示水表转盘不合理的提示
                        readthis.tip = "(不合理的水表转盘)";
                        data.Enter = 1;
                    } else {
                        data.Enter = 1;
                    }
                    //提交到数据库进行数据修改
                    $.ajax({
                        url: "/enter/updateamount.action",
                        data: {"id": data.id, "curvalue": data.CurValue, "amount": data.Amount},
                        Type: "POST",
                        success: function (data) {
                        }
                    });

                }


            },
            setNotEnter: function (data) {
                var enter_this = this;
                showDialog('确认将此条[' + data.MeterName + ']更改为待抄状态吗？', function () {
                    //提交到数据库进行数据修改

                    $.ajax({
                        url: "/enter/updatenter.action",
                        data: {"id": data.id},
                        Type: "POST",
                        success: function (data) {
                            enter_this.getallread();
                        }
                    });
                });

            },
            setMaxValue: function (data) {

                var datastr = JSON.stringify(data);
                sessionStorage.setItem("data", datastr);
                /* showwindow({url:'../page/rd_enter_setMaxValue.jsp',width:560,height:340});*/
                window.location.href = "../page/rd_enter_setMaxValue.jsp";
            }


        },
        created: function () {
            this.getallread();
        },

    });


    //修改上月底码
    function setPreValue(data) {

        showWindow({url: '../page/rd_enter_setPreValue.jsp', width: 560, height: 540});
    }


    $(function () {
        getselect();

    });


</script>

</body>
</html>
