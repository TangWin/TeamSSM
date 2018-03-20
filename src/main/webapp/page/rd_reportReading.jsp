<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/9 0009
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>

</head>

<body>

<div id="wrapper">
    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid" >

        <div class="x12">

            <h2>抄表情况查询</h2>

            <div class="searchDiv">
                抄表年月 <select class="medium" >
                <option>201402</option>
                <option>201401</option>
                <option>201312</option>
                <option>201311</option>
            </select>
                表册 <select class="medium" >
                <option>所有</option>
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
                审核日期 <span class="between">
							<input onClick="WdatePicker();" /> - <input onClick="WdatePicker();" />
						</span>
                <button class="btn btn-small btn-icon btn-find"><span></span>查询</button>
            </div>


            <div class="reportTitle">
                表册抄表详细报表
            </div>
            <div class="height24">
                <div style="float:left;width:200px;">抄表年月：201402</div>
                <div style="float:left;width:200px;">抄表员：李彦宏</div>
                <div style="float:left;width:200px;">总用户数：908户</div>
                <div style="float:left;width:200px;">总实用水量：714吨</div>
            </div>
            <table class="report">
                <thead>
                <tr>
                    <th width="100">用户编码</th>
                    <th>用户姓名</th>
                    <th width="100">上月底数</th>
                    <th width="100">本月抄数</th>
                    <th width="100">实用水量</th>
                    <th width="60">是否已抄</th>
                    <th width="60">是否复核</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="center">0100000987</td>
                    <td class="">张三</td>
                    <td class="right">983</td>
                    <td class="right">1034</td>
                    <td class="right">51</td>
                    <td class="center">是</td>
                    <td class="center">是</td>
                </tr>
                <tr>
                    <td class="center">0100003487</td>
                    <td class="">李四</td>
                    <td class="right">981</td>
                    <td class="right">1034</td>
                    <td class="right">53</td>
                    <td class="center">是</td>
                    <td class="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="center">0100009484</td>
                    <td class="">王五</td>
                    <td class="right">981</td>
                    <td class="right">981</td>
                    <td class="right">0</td>
                    <td class="center">&nbsp;</td>
                    <td class="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="center">0100000987</td>
                    <td class="">张三</td>
                    <td class="right">983</td>
                    <td class="right">1034</td>
                    <td class="right">51</td>
                    <td class="center">是</td>
                    <td class="center">是</td>
                </tr>
                <tr>
                    <td class="center">0100003487</td>
                    <td class="">李四</td>
                    <td class="right">981</td>
                    <td class="right">1034</td>
                    <td class="right">53</td>
                    <td class="center">是</td>
                    <td class="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="center">0100009484</td>
                    <td class="">王五</td>
                    <td class="right">981</td>
                    <td class="right">981</td>
                    <td class="right">0</td>
                    <td class="center">&nbsp;</td>
                    <td class="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="center">0100000987</td>
                    <td class="">张三</td>
                    <td class="right">983</td>
                    <td class="right">1034</td>
                    <td class="right">51</td>
                    <td class="center">是</td>
                    <td class="center">是</td>
                </tr>
                <tr>
                    <td class="center">0100003487</td>
                    <td class="">李四</td>
                    <td class="right">981</td>
                    <td class="right">1034</td>
                    <td class="right">53</td>
                    <td class="center">是</td>
                    <td class="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="center">0100009484</td>
                    <td class="">王五</td>
                    <td class="right">981</td>
                    <td class="right">981</td>
                    <td class="right">0</td>
                    <td class="center">&nbsp;</td>
                    <td class="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="center">0100000987</td>
                    <td class="">张三</td>
                    <td class="right">983</td>
                    <td class="right">1034</td>
                    <td class="right">51</td>
                    <td class="center">是</td>
                    <td class="center">是</td>
                </tr>
                <tr>
                    <td class="center">0100003487</td>
                    <td class="">李四</td>
                    <td class="right">981</td>
                    <td class="right">1034</td>
                    <td class="right">53</td>
                    <td class="center">是</td>
                    <td class="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="center">0100009484</td>
                    <td class="">王五</td>
                    <td class="right">981</td>
                    <td class="right">981</td>
                    <td class="right">0</td>
                    <td class="center">&nbsp;</td>
                    <td class="center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="center">0100000987</td>
                    <td class="">张三</td>
                    <td class="right">983</td>
                    <td class="right">1034</td>
                    <td class="right">51</td>
                    <td class="center">是</td>
                    <td class="center">是</td>
                </tr>
                <tr>
                    <td class="center">0100003487</td>
                    <td class="">李四</td>
                    <td class="right">981</td>
                    <td class="right">1034</td>
                    <td class="right">53</td>
                    <td class="center">是</td>
                    <td class="center">&nbsp;</td>
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
