<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/29
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

            <h2>工单管理</h2>

            <div class="height40">
                工单类型 <select>
                <option>所有</option>
                <option>新户</option>
                <option>分户</option>
                <option>过户</option>
                <option>代扣</option>
                <option>换表</option>
                <option>重签</option>
                <option>销户</option>
            </select>
                工程进度 <select>
                <option>所有</option>
                <option>用户申请</option>
                <option>初步审核</option>
                <option>交施工费</option>
                <option>水费清算</option>
                <option>供水合同</option>
                <option>施工竣工</option>
                <option>通水停水</option>
                <option>档案存档</option>
                <option>完成</option>
                <option>终止</option>
            </select>
                工单号 <input />
                用户姓名 <input />
                <label><input type="checkbox" style="vertical-align:middle;" />等待我处理</label>
                <button class="btn btn-small btn-icon btn-find"><span></span>查询工单</button>
            </div>

            <table class="data display">
                <thead>
                <tr>
                    <th width="120">工单号</th>
                    <th width="60">类型</th>
                    <th width="80">进度</th>
                    <th width="90">当前处理部门</th>
                    <th width="100">最后操作日期</th>
                    <th width="200">用户名称</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr class="odd">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0001</a></td>
                    <td>新户</td>
                    <td>交施工费</td>
                    <td>财务部</td>
                    <td>2014-02-18</td>
                    <td>许三多</td>
                    <td></td>
                </tr>
                <tr class="even">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140117-0002</a></td>
                    <td>分户</td>
                    <td>水费清算</td>
                    <td>收费室</td>
                    <td>2014-02-18</td>
                    <td>许四多</td>
                    <td></td>
                </tr>
                <tr class="odd">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0003</a></td>
                    <td>过户</td>
                    <td>初步审核</td>
                    <td>生技室</td>
                    <td>2014-02-18</td>
                    <td>许五多</td>
                    <td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__auditForm.html';"><span></span>处理</button></td>
                </tr>
                <tr class="even">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0004</a></td>
                    <td>代扣</td>
                    <td>档案存档</td>
                    <td>生技室</td>
                    <td>2014-02-18</td>
                    <td>中国农业银行解放路支行</td>
                    <td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__saveForm.html';"><span></span>处理</button></td>
                </tr>
                <tr class="odd">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0005</a></td>
                    <td>换表</td>
                    <td>施工竣工</td>
                    <td>安装队</td>
                    <td>2014-02-18</td>
                    <td>中国联通广东路营业厅</td>
                    <td></td>
                </tr>
                <tr class="even">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0006</a></td>
                    <td>重签</td>
                    <td>供水合同</td>
                    <td>生技室</td>
                    <td>2014-02-18</td>
                    <td>许八多</td>
                    <td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__contractForm.html';"><span></span>处理</button></td>
                </tr>
                <tr class="odd">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0007</a></td>
                    <td>销户</td>
                    <td>通水停水</td>
                    <td>抄表班</td>
                    <td>2014-02-18</td>
                    <td>许蛮多</td>
                    <td></td>
                </tr>
                <tr class="even">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0008</a></td>
                    <td>分户</td>
                    <td>完成</td>
                    <td>&nbsp;</td>
                    <td>2014-02-18</td>
                    <td>新多国际商务大厦</td>
                    <td></td>
                </tr>
                <tr class="odd">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0009</a></td>
                    <td>新户</td>
                    <td>终止</td>
                    <td>&nbsp;</td>
                    <td>2014-02-18</td>
                    <td>许钱多</td>
                    <td></td>
                </tr>
                <tr class="even">
                    <td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0010</a></td>
                    <td>重签</td>
                    <td>初步审核</td>
                    <td>生技室</td>
                    <td>2014-02-18</td>
                    <td>许翔多</td>
                    <td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__auditForm.html';"><span></span>处理</button></td>
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

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();
    });

</script>

</body>

</html>
