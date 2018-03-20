<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <title>湖南省自来水公司营销管理信息系统</title>
</head>

<body>


<div id="wrapper">


    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">
        <div id="app">

            <div class="x12">

                <h2>添加表册信息</h2>

                <div class="form label-inline uniform">

                    <div class="field"><label for="id">表册ID</label> <input id="id" name="fname" size="50" type="text"
                                                                           class="medium" disabled="disabled"
                                                                           value="自动生成"/></div>

                    <div class="field"><label for="name">表册名称</label> <input id="name" name="lname" size="50"
                                                                             type="text" class="medium"/></div>

                    <div class="field"><label for="name">所属辖区:</label>
                        <select id="select_area" class="medium">
                            <option v-for="area in areas" v-bind:value="area.id">{{area.areaname}}</option>
                        </select>
                    </div>

                    <div class="field"><label for="description">备注</label> <textarea rows="7" cols="50" id="description"
                                                                                     name="description"></textarea>
                    </div>

                    <div class="buttonrow">
                        <button class="btn" onclick="addDvlume()">保存</button>
                        <button class="btn btn-grey" onClick="history.back(-1);">返回</button>
                    </div>


                </div>

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

    new Vue({
        el: '#app',
        data: {
            areas: [],
            area: "",
            submitUrl: '/area/getallareas.action'
        },
        methods: {
            getallareas: function () {
                var _this = this;
                _this.submitUrl = "/area/getallareas.action";
                $.getJSON(_this.submitUrl, function (result, status) {
                    _this.areas = result;
                });
            }
        },
        created: function () {
            this.getallareas();
        }
    });


    function addDvlume() {
        var VolumeName = $('#name').val();
        var AreaID = $('#select_area').val();
        var Remark = $('#description').val();
        $.ajax(
            {
                url: "/dvolume/addDvolume.action",
                dataType: "JSON",
                data: {volumeName: VolumeName, areaID: AreaID, remark: Remark},
                success: function (data) {
                    window.location.href = "/dvolume/sentvolume.action";
                }
            });
    }

</script>

</body>
</html>
