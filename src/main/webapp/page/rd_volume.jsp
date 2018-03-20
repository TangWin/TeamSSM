<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/28 0028
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>湖南省自来水公司营销管理信息系统</title>
</head>

<body>
<div id="app">

    <div id="wrapper">

        <jsp:include page="/header.jsp"/>

        <div id="content" class="xgrid">

            <div class="x12">

                <div id="facebox_delete" style="display: none">
                    <div style="height:80px;text-align:center;padding-top:50px;">
                        确认删除吗？
                    </div>

                    <div class="dialogbutton center">
                        <a class="btn" href="javascript:closeDialog();" style="width:60px;">是</a>
                        <a class="btn btn-grey" href="javascript:closeDialog();" style="width:60px;">否</a>
                    </div>
                </div>

                <div id="facebox_setVolume" style="display: none">
                    <div id="facebox_setVolume_message" style="height:80px;text-align:center;padding-top:50px;">
                        确认移动到此表册吗？
                    </div>

                    <div class="dialogbutton center">
                        <a class="btn" href="javascript:closeDialog();" style="width:60px;">是</a>
                        <a class="btn btn-grey" href="javascript:closeDialog();" style="width:60px;">否</a>
                    </div>
                </div>

                <table id="parent_table">
                    <tr>
                        <td width="30%">
                            <h2>表册管理</h2>

                            <p>
                                <br/>
                            <div style="float:left;height:42px;">
                                <button class="btn-icon btn-plus" onClick="location='rd_volume_add.jsp';"><span></span>添加表册
                                </button>
                            </div>
                            </p>

                            <table class="data display">
                                <thead>
                                <tr>
                                    <th>未分配表册的用户</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd gradeX">
                                    <td><a href="rd_volume.html">未分配表册的用户</a></td>
                                    <td class="right">&nbsp;</td>
                                </tr>
                                </tbody>
                            </table>

                            <div id="tableares"></div>


                        </td>
                        <td width="1%">&nbsp;</td>
                        <td width="69%">
                            <h2>未分配表册的用户</h2>

                            <div style="float:right;">
                                分配至
                                <select id="select_area" class="medium" onChange="setVolume();">
                                    <option selected="selected"></option>
                                    <option>未分配</option>
                                    <optgroup label="城东区">
                                        <option>城东#1</option>
                                        <option>城东#2</option>
                                    </optgroup>
                                    <optgroup label="城南区">
                                        <option>城南#1</option>
                                        <option>城南#2</option>
                                    </optgroup>
                                    <optgroup label="城西区">
                                        <option>城西#1</option>
                                        <option>城西#2</option>
                                    </optgroup>
                                    <optgroup label="城北区">
                                        <option>城北#1</option>
                                        <option>城北#2</option>
                                    </optgroup>
                                    <optgroup label="新开发区">
                                        <option>新区#1</option>
                                        <option>新区#2</option>
                                    </optgroup>
                                    <optgroup label="旧城区">
                                        <option>旧城#1</option>
                                        <option>旧城#2</option>
                                    </optgroup>
                                    <optgroup label="特别商户">
                                        <option>特别商户#1</option>
                                    </optgroup>

                                </select>
                            </div>
                            <!--表册数据的绑定-->
                            <table class="table table-striped table-bordered" id="sample">
                                <thead>
                                <tr>
                                    <th>排序号</th>
                                    <th>区域名称</th>
                                    <th>区域备注</th>
                                </tr>
                                </thead>
                                <tbody>

                                </tbody>

                            </table>
                        </td>
                    </tr>
                </table>

            </div> <!-- .x12 -->

        </div> <!-- #content -->

        <div id="footer">
            <div class="content_pad">
                <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>. 技术支持 <a href="#">华瑞教育</a>.</p>
            </div> <!-- .content_pad -->
        </div> <!-- #footer -->

    </div> <!-- #wrapper -->
</div>
<script src="../assets/js/jquery/jquery.uniform.min.js"></script>

<script src="../assets/js/dashboard.js"></script>

<!--定义操作列按钮模板-->
<script id="tpl" type="text/x-handlebars-template">
    {{#each func}}
    <button type="button" class="btn btn-{{this.type}} btn-sm" onclick="{{this.fn}}">{{this.name}}</button>
    {{/each}}
</script>

<script type="text/javascript">

    var table;
    var eidtFlag = false;

    $(function () {
        $('#tableares').load("/dvolume/leftvolume.action");
    });


    $(document).ready(function () {
        Dashboard.init();
    });

    //设置用户所属表册
    function setVolume() {

        //
        var areaText = $('#select_area').val();
        if (areaText == '') return;
        if (areaText == '未分配') {
            $('#facebox_setVolume_message').text('确认将选择的用户变成未分配表册的用户吗？');
            $.facebox({div: '#facebox_setVolume'});
        } else {
            $('#facebox_setVolume_message').text('确认将选择的用户分配到表册【' + areaText + '】中吗？');
            $.facebox({div: '#facebox_setVolume'});
        }
    }


    new Vue({
        el: '#app',
        data: {
            areassubmiturl: '/area/getallareas.action',
            areas: [],
            area: "",
            volumesubmiturl: '/dvolume/getallvolumebyid.action',
            volumes: [],
            volume: "",
            sy_emps: [],
            sy_emp: ""

        },
        methods: {
            getallareas: function () {
                var area_this = this;
                area_this.areassubmiturl = "/area/getallareas.action";
                $.getJSON(area_this.areassubmiturl, function (result, status) {
                    area_this.areas = result;

                })
            },
            getallvolumes: function () {
                var volume_this = this;
                volume_this.volumesubmiturl = "/dvolume/getallvolumebyid.action";
                $.getJSON(erea_this.volumesubmiturl, function (result, status) {
                    erea_this.areas = result;

                })
            },
            updatevolume: function (id) {
                window.location.href = "/dvolume/updatevolume.action?id=4";
            },
            deletevolume: function (id) {
                if (confirm("确认删除该表册吗？")) {
                    $.ajax({
                        url: '/dvolume/deletevolume.action',
                        data: {id: id},
                        dataType: "JSON",
                        success: function (data) {
                            window.location.href = "/dvolume/sentvolume.action";
                        }
                    });
                }

            }

        },
        created: function () {
            //this.getallareas();

        }


    })


</script>

</body>
</html>
