<%--
  Created by IntelliJ IDEA.
  User: TW
  Date: 2018/1/26
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>湖南省自来水公司营销管理信息系统</title>

    <link rel="stylesheet" href="assets/css/reset.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/text.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/form.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/buttons.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/grid.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/layout.css" type="text/css" media="screen" title="no title" />

    <link rel="stylesheet" href="assets/css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/plugin/facebox.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/plugin/uniform.default.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="assets/css/plugin/dataTables.css" type="text/css" media="screen" title="no title" />

    <link rel="stylesheet" href="assets/css/custom.css" type="text/css" media="screen" title="no title">

</head>

<body>

<div id="wrapper">



    <div id="header">

        <div class="content_pad">
            <h1><a href="./workspace.html">湖南省自来水公司营销管理信息系统</a></h1>

            <ul id="nav">

                <li class="nav_dropdown nav_icon">
                    <a href="javascript:;"><span class="ui-icon ui-icon-wrench"></span>业扩工程</a>

                    <div class="nav_menu">
                        <ul>
                            <li><a href="./page/be__request.html">01 用户申请</a></li>
                            <li><a href="./page/be__audit.html">02 初步审核</a></li>
                            <li><a href="./page/be__pay.html">03 交施工费</a></li>
                            <li><a href="./page/be__billclear.html">04 水费清算</a></li>
                            <li><a href="./page/be__contract.html">05 供水协议</a></li>
                            <li><a href="./page/be__working.html">06 施工竣工</a></li>
                            <li><a href="./page/be__open.html">07 通水停水</a></li>
                            <li><a href="./page/be__save.html">08 档案存档</a></li>
                            <li><a href="./page/be_order.html">工单管理</a></li>
                            <li><a href="./page/be_abort.html">终止工单</a></li>
                            <li><a href="./page/be_reportProgress.html">业扩工程进度</a></li>
                            <li><a href="./page/be_reportMoney.html">业扩收费报表</a></li>
                        </ul>

                    </div>
                </li>

                <li class="nav_dropdown nav_icon">
                    <a href="javascript:;"><span class="ui-icon ui-icon-person"></span>用户管理</a>

                    <div class="nav_menu">
                        <ul>
                            <li><a href="./page/user_search.html">用户查询</a></li>
                            <li><a href="./page/user_add.html">快捷新户</a></li>
                            <li><a href="./page/user_changeName.html">快捷过户</a></li>
                            <li><a href="./page/user_changeBank.html">快捷代扣</a></li>
                            <li><a href="./page/user_changeMeter.html">快捷换表</a></li>
                            <li><a href="./page/user_changeFormula.html">快捷重签</a></li>
                            <li><a href="./page/user_delete.html">快捷销户</a></li>
                            <li><a href="./page/user_reportShortcut.html">快捷操作记录</a></li>
                            <li><a href="./page/user_docNum.html">档案号管理</a></li>
                            <li><a href="./page/user_sendMsg.html">短信群发</a></li>
                        </ul>

                    </div>
                </li>

                <li class="nav_dropdown nav_icon">
                    <a href="javascript:;"><span class="ui-icon ui-icon-pencil"></span>抄表管理</a>

                    <div class="nav_menu">
                        <ul>
                            <li><a href="./page/rd_volume.html">表册管理</a></li>
                            <li><a href="./page/rd_init.html">抄表初始化</a></li>
                            <li><a href="./page/rd_task.html">任务分配</a></li>
                            <li><a href="./page/rd_enter.html">抄表录入</a></li>
                            <li><a href="./page/rd_audit.html">抄表审核</a></li>
                            <li><a href="./page/rd_reportReading.html">抄表情况查询</a></li>
                            <li><a href="./page/rd_reportVolumeReading.html">抄表统计报表</a></li>
                            <li><a href="./page/rd_reportZero.html">零吨位用户查询</a></li>
                            <li><a href="./page/rd_reportMaxValue.html">最大码值修正记录</a></li>
                            <li><a href="./page/rd_reportCPreAmount.html">底码修正记录</a></li>
                            <li><a href="./page/rd_reportMeterCheck.html">水表周检报表</a></li>
                        </ul>

                    </div>
                </li>

                <li class="nav_dropdown nav_icon">
                    <a href="javascript:;"><span class="ui-icon ui-icon-star"></span>收费管理</a>

                    <div class="nav_menu">
                        <ul>
                            <li><a href="./page/pay_window.html">窗口收费</a></li>
                            <li><a href="./page/pay_batch.html">批量收费</a></li>
                            <li><a href="./page/pay_invoiceReprint.html">发票补开/作废</a></li>
                            <li><a href="./page/pay_reportDebts.html">欠费报表</a></li>
                            <li><a href="./page/pay_reportPay.html">收费情况报表</a></li>
                            <li><a href="./page/pay_reportMonthRecycle.html">月资金回收情况报表</a></li>
                            <li><a href="./page/pay_reportBalance.html">用户预收情况报表</a></li>
                            <li><a href="./page/pay_reportWaterType.html">各类用水统计总表</a></li>
                        </ul>

                    </div>
                </li>

                <li class="nav_dropdown nav_icon">
                    <a href="javascript:;"><span class="ui-icon ui-icon-script"></span>发票管理</a>

                    <div class="nav_menu">
                        <ul>
                            <li><a href="./page/inv_invoiceManage.html">发票总表</a></li>
                            <li><a href="./page/inv_invoiceIn.html">发票入库</a></li>
                            <li><a href="./page/inv_invoiceOut.html">发票出库</a></li>
                            <li><a href="./page/inv_invoiceArchive.html">发票交票</a></li>
                            <li><a href="./page/inv_invoiceReportOut.html">发票出库情况查询</a></li>
                            <li><a href="./page/inv_invoiceReportEmp.html">收费人员发票查询</a></li>
                            <li><a href="./page/inv_invoiceReportArchive.html">发票交票情况查询</a></li>
                            <li><a href="./page/inv_invoiceReportUse.html">发票使用情况查询</a></li>
                            <li><a href="./page/inv_invoiceReportMoneySum.html">销账汇总报表</a></li>
                            <li><a href="./page/inv_invoiceReportMoneyDetail.html">销账明细报表</a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav_dropdown nav_icon">
                    <a href="javascript:;"><span class="ui-icon ui-icon-gear"></span>系统设置</a>

                    <div class="nav_menu">
                        <ul>
                            <li><a href="./page/sys_area.html">抄表辖区</a></li>
                            <li><a href="./page/sys_meterType.html">水表型号</a></li>
                            <li><a href="./page/sys_dept.html">部门管理</a></li>
                            <li><a href="./page/sys_emp.html">员工管理</a></li>
                            <li><a href="./page/sys_menupower.html">菜单权限设置</a></li>
                            <li><a href="./page/sys_areapower.html">辖区权限设置</a></li>
                            <li><a href="./page/sys_waterType.html">用水类型设定</a></li>
                            <li><a href="./page/sys_surcharge.html">附加费设定</a></li>
                            <li><a href="./page/sys_flow.html">流程配置</a></li>
                        </ul>

                    </div>
                </li>

                <li class="nav_current nav_dropdown nav_icon_only">
                    <a href="javascript:;">&nbsp;</a>

                    <div class="nav_menu">
                        <ul>
                            <li><a href="./workspace.html">我的工作台</a></li>
                            <li><a href="./page/sys_pwd.html">修改密码</a></li>
                            <li><a href="./login.html">退出系统</a></li>
                        </ul>
                    </div> <!-- .menu -->
                </li>
            </ul>
        </div> <!-- .content_pad -->

    </div> <!-- #header -->

    <div id="masthead">
        <div>
            <span id="pagetitle"><a href="javascript:;">我的工作台</a></span>
            <span id="welcome_span">欢迎回来，马云</span>
        </div>
    </div> <!-- #masthead -->

    <div id="content" class="xgrid">

        <div id="welcome" class="x4">

            <p><strong><a href="/getDeptAll.action">欢迎回来, 马云</a></strong><br /></p>

            <table class="data info_table">
                <tbody>

                <tr>
                    <td class="value right">789</td>
                    <td class="full">本月新增用户数</td>
                </tr>
                <tr>
                    <td class="value right">23857</td>
                    <td class="full">本月应抄表数</td>
                </tr>
                <tr>
                    <td class="value right">23857</td>
                    <td class="full">本月实抄表数</td>
                </tr>
                <tr>
                    <td class="value right">3459391 吨</td>
                    <td class="full">本月用水量</td>
                </tr>
                <tr>
                    <td class="value right">13459391.49 元</td>
                    <td class="full">本月应收水费</td>
                </tr>
                <tr>
                    <td class="value right">10385394.12 元</td>
                    <td class="full">本月实收水费</td>
                </tr>

                </tbody>
            </table>

        </div> <!-- .x4 -->

        <div class="x8">
            <table class="stats" data-chart="bar">
                <caption>收费情况统计图表</caption>
                <thead>
                <tr>
                    <td>&nbsp;</td>
                    <th>2013年09月</th>
                    <th>2013年10月</th>
                    <th>2013年11月</th>
                    <th>2013年12月</th>
                    <th>2014年01月</th>
                    <th>2014年02月</th>
                </tr>

                </thead>

                <tbody>
                <tr>
                    <th>应收（万元）</th>
                    <td>945</td>
                    <td>845</td>
                    <td>1445</td>
                    <td>1145</td>
                    <td>1245</td>
                    <td>845</td>
                </tr>
                <tr>
                    <th>实收（万元）</th>
                    <td>945</td>
                    <td>745</td>
                    <td>1045</td>
                    <td>845</td>
                    <td>745</td>
                    <td>245</td>
                </tr>
                </tbody>
            </table>
        </div> <!-- .x8 -->

        <div class="xbreak"></div> <!-- .xbreak -->



        <div class="x5 a1">

            <h2>用水类型统计</h2>

            <table class="stats" data-chart="pie">
                <caption>2014年02月用水类型占比表</caption>
                <thead>
                <tr>
                    <td>&nbsp;</td>
                    <th>&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <tr><th>生活用水</th><td>3328942</td></tr>
                <tr><th>商业用水</th><td>4839423</td></tr>
                <tr><th>工业用水</th><td>6832948</td></tr>
                <tr><th>行政用水</th><td>548239</td></tr>
                <tr><th>军区用水</th><td>1834839</td></tr>
                <tr><th>特种用水</th><td>120233</td></tr>
                </tbody>
            </table>

            <p>以上数据由系统自动生成，在本月结算之前，都不能视为正式数据，此图表仅供参考。</p>

        </div> <!-- .x5 -->



        <div class="x6">

            <h2>
                待处理的工单
                <span class="fright "><a href="./page/be_order.html" class="ticket closed" style="color:#fff;">更多</a></span>
            </h2>

            <table class="data support_table">
                <tbody>
                <tr>
                    <td><span class="ticket responded">新户</span></td>
                    <td><span class="ticket open">初步审核</span></td>
                    <td class="full"><a href="./page/be__auditForm.html" target="_blank">雨花区南门口东风巷子12号</a></td>
                    <td class="who"><a href="./page/be__auditForm.html" target="_blank">张三</a></td>
                </tr>

                <tr>
                    <td><span class="ticket responded">分户</span></td>
                    <td><span class="ticket open">水费清算</span></td>
                    <td class="full"><a href="#">天心区紫阳北路北风胡同12号</a></td>
                    <td class="who">李四</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">换表</span></td>
                    <td><span class="ticket open">施工竣工</span></td>
                    <td class="full"><a href="#">忠孝东路下马区前进街C区19号</a></td>
                    <td class="who">王五</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">销户</span></td>
                    <td><span class="ticket open">水费清算</span></td>
                    <td class="full"><a href="#">雨花区南门口东风巷子12号</a></td>
                    <td class="who">赵六</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">过户</span></td>
                    <td><span class="ticket open">档案存档</span></td>
                    <td class="full"><a href="#">天心区紫阳北路北风胡同12号</a></td>
                    <td class="who">钱七</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">代扣</span></td>
                    <td><span class="ticket open">初步审核</span></td>
                    <td class="full"><a href="#">忠孝东路下马区前进街C区19号</a></td>
                    <td class="who">孙八</td>
                </tr>
                <tr>
                    <td><span class="ticket responded">重签</span></td>
                    <td><span class="ticket open">供水协议</span></td>
                    <td class="full"><a href="#">雨花区南门口东风巷子12号</a></td>
                    <td class="who">何九</td>
                </tr>
                </tbody>
            </table>
        </div> <!-- .x6 -->

        <a href="./page/error.html">出错演示页</a> |
        <a href="./page/success.html">成功演示页</a>

    </div> <!-- #content -->

    <div id="footer">
        <div class="content_pad">
            <p>&copy; 2013-11 版权所有 <a href="#">湖南省自来水公司</a>.   技术支持 <a href="#">华瑞教育</a>.</p>
        </div> <!-- .content_pad -->
    </div> <!-- #footer -->

</div> <!-- #wrapper -->

<script src="assets/js/vue.min.js" type="text/javascript"></script>

<script src="assets/js/jquery/jquery-1.5.2.min.js"></script>
<script src="assets/js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="assets/js/misc/excanvas.min.js"></script>
<script src="assets/js/jquery/facebox.js"></script>
<script src="assets/js/jquery/jquery.visualize.js"></script>
<script src="assets/js/jquery/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery/jquery.tablesorter.min.js"></script>
<script src="assets/js/jquery/jquery.uniform.min.js"></script>
<script src="assets/js/jquery/jquery.placeholder.min.js"></script>

<script src="assets/js/widgets.js"></script>
<script src="assets/js/dashboard.js"></script>

<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();
    });

</script>

</body>

</html>
