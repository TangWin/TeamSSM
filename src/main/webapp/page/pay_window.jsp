<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/9 0009
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>收费窗口 - 湖南省自来水公司营销管理信息系统</title>
    <style type="text/css">
        table.pay td { height:30px; vertical-align:middle;  }
        .getmoney { text-align:right; font-weight:bold; }
        table.billlist { cursor:default; }
        table.billlist thead th{ background-color:#000 !important; }
        table.billlist tr.selected td { background-color:#333; color:#ff0; }
        .second,.second td,.second th { font-size:12px; }
    </style>
</head>

<body>

<div id="wrapper">

    <jsp:include page="/header.jsp"/>

    <div id="content" class="xgrid">

        <div class="x12">

            <h2>
                收费窗口
            </h2>

            <div class="tab_container">
                <ul class="tabs">
                    <li><a href="#tab1">查询及收费</a></li>
                    <li><a href="#tab2">陈欠账单</a></li>
                    <li><a href="#tab3">历史交费记录</a></li>
                    <li><a href="#tab4">修改联系资料</a></li>
                    <li><a href="#tab5">打印历史详单</a></li>
                    <li><a href="#tab6">打印催缴通知单</a></li>
                </ul>

                <div class="tab_content_container">

                    <div id="tab1" class="tab_content">

                        <!------------------------------------- 查询 --------------------------------------------->
                        <h3>查询</h3>

                        <table>
                            <tr>
                                <td>用户编码</td>
                                <td><input size="16"/> </td>
                                <td>用户简码</td>
                                <td><input size="16"/> </td>
                                <td>短信电话</td>
                                <td><input size="16"/> </td>
                                <td>联系电话</td>
                                <td><input size="16"/> </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>档案编号</td>
                                <td><input size="16"/> </td>
                                <td>用户姓名</td>
                                <td><input size="16"/> </td>
                                <td>联系地址</td>
                                <td colspan="4"><input size="16" />
                                    <a href="javascript:;" class="btn btn-icon btn-small btn-find btn-blue"
                                       onclick="findUser();"><span></span>查询</a>
                                    <a href="../page/user_search1.html?id=0100000987" target="_blank"
                                       class="btn btn-icon btn-small btn-person btn-blue"><span></span>详情</a>
                                    <a href="javascript:;" class="btn btn-icon btn-small btn-refresh"><span></span>重置</a>
                                </td>
                            </tr>

                        </table>
                        <br/>


                        <!------------------------------------- 收费 --------------------------------------------->
                        <h3>收费</h3>


                        <table class="pay">
                            <tr>
                                <td>陈欠总额</td>
                                <td class="right red bold" >-2381.23&nbsp;&nbsp;</td>
                                <td >元</td>
                                <td rowspan="5" style="padding-left:80px;">
                                    <button onClick="pay();"
                                            class="btn btn-icon btn-dollar btn-blue btn-large"><span></span>交费</button>
                                </td>
                            </tr>
                            <tr>
                                <td>剩余预交</td>
                                <td class="right green bold">+0.00&nbsp;&nbsp;</td>
                                <td>元</td>
                            </tr>
                            <tr>
                                <td>本次实收</td>
                                <td><input class="getmoney" value="934.12" /></td>
                                <td>元</td>
                            </tr>
                            <tr>
                                <td>本次找零</td>
                                <td class="right">0.00&nbsp;&nbsp;</td>
                                <td>元 <input id="cc" type="checkbox" checked="checked" /><label for="cc">找零转入预存</label></td>
                            </tr>
                            <tr>
                                <td>发票号码</td>
                                <td>
						<span class="text_button">
							<input style="width:120px; text-align:center;" value="08347927" />
							<button onClick="selectInvoice();">浏览</button>
						</span>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br/><br/><br/><br/>
                    </div>
                    <div id="tab2" class="tab_content second">


                        <!------------------------------------- 陈欠账单 --------------------------------------------->

                        <div style="float:left;width:45%;">

                            <h3>陈欠账单</h3>
                            <table class="data display billlist">
                                <thead>
                                <tr>
                                    <th>水费单</th>
                                    <th style="text-align:right">总金额</th>
                                    <th style="text-align:right">实收</th>
                                    <th style="text-align:right">未收</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd selected">
                                    <td>SF0100000987-201308</td>
                                    <td class="right">2822.14 元</td>
                                    <td class="right">2000.00 元</td>
                                    <td class="right"> 822.14 元</td>
                                </tr>
                                <tr class="even">
                                    <td>SF0100000987-201309</td>
                                    <td class="right">1239.84 元</td>
                                    <td class="right">1111.11 元</td>
                                    <td class="right"> 128.73 元</td>
                                </tr>
                                <tr class="odd">
                                    <td>SF0100000987-201310</td>
                                    <td class="right"> 921.11 元</td>
                                    <td class="right"> 111.11 元</td>
                                    <td class="right"> 810.00 元</td>
                                </tr>
                                <tr class="even">
                                    <td>SF0100000987-201311</td>
                                    <td class="right">   3.00 元</td>
                                    <td class="right">   2.00 元</td>
                                    <td class="right">   1.00 元</td>
                                </tr>
                                <tr class="odd">
                                    <td>SF0100000987-201312</td>
                                    <td class="right">3003.57 元</td>
                                    <td class="right">   0.57 元</td>
                                    <td class="right">3003.00 元</td>
                                </tr>
                                <tr class="even">
                                    <td>SF0100000987-201401</td>
                                    <td class="right">2873.39 元</td>
                                    <td class="right">1111.11 元</td>
                                    <td class="right">1762.28 元</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <span style="float:left;width:1%;">&nbsp;</span>
                        <div id="details" style="float:left;width:54%; min-height:600px;">

                            <!------------------------------------- 水费明细 --------------------------------------------->
                            <h3>账单明细</h3>
                            <table class="data display">
                                <thead>
                                <tr>
                                    <th>费用类型</th>
                                    <th style="text-align:right">水量</th>
                                    <th style="text-align:right">单价</th>
                                    <th style="text-align:right">小计</th>
                                    <th style="text-align:right">实收</th>
                                    <th style="text-align:right">未收</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd">
                                    <td>生活用水</td>
                                    <td class="right">   12 吨</td>
                                    <td class="right"> 2.14 元</td>
                                    <td class="right">25.68 元</td>
                                    <td class="right">11.11 元</td>
                                    <td class="right">14.57 元</td>
                                </tr>
                                <tr class="even">
                                    <td>经营用水</td>
                                    <td class="right">   108 吨</td>
                                    <td class="right">  3.25 元</td>
                                    <td class="right">351.00 元</td>
                                    <td class="right">111.11 元</td>
                                    <td class="right">239.89 元</td>
                                </tr>
                                <tr class="odd">
                                    <td>垃圾费</td>
                                    <td class="right">   120 吨</td>
                                    <td class="right">  0.80 元</td>
                                    <td class="right"> 96.00 元</td>
                                    <td class="right">  0.00 元</td>
                                    <td class="right"> 96.00 元</td>
                                </tr>
                                <tr class="even">
                                    <td>排污费</td>
                                    <td class="right">   108 吨</td>
                                    <td class="right">  1.20 元</td>
                                    <td class="right">129.60 元</td>
                                    <td class="right">  0.60 元</td>
                                    <td class="right">129.00 元</td>
                                </tr>
                                <tr class="odd">
                                    <td>资源费</td>
                                    <td class="right">   108 吨</td>
                                    <td class="right">  0.02 元</td>
                                    <td class="right">  2.16 元</td>
                                    <td class="right">  2.16 元</td>
                                    <td class="right">  0.00 元</td>
                                </tr>
                                </tbody>
                            </table>

                            <!------------------------------------- 上月本月底码 --------------------------------------------->
                            <br/><br/>
                            <h3>表码明细</h3>
                            <table class="data display">
                                <thead>
                                <tr>
                                    <th style="text-align:left">上月底码</th>
                                    <th style="text-align:left">本月底码</th>
                                    <th style="text-align:right">实用水量</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd">
                                    <td class="">93495 吨</td>
                                    <td class="">93515 吨</td>
                                    <td class="right">  120 吨</td>
                                </tr>

                                </tbody>
                            </table>

                            <!------------------------------------- 分类用水量 --------------------------------------------->
                            <table class="data display">
                                <thead>
                                <tr>
                                    <th>用水类型</th>
                                    <th>提取方式</th>
                                    <th style="text-align:right;">分类水量</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="odd">
                                    <td>生活用水</td>
                                    <td>10%</td>
                                    <td class="right">12 吨</td>
                                </tr>
                                <tr class="even">
                                    <td>经营用水</td>
                                    <td>90%</td>
                                    <td class="right">108 吨</td>
                                </tr>
                                </tbody>
                            </table>
                            <br/>
                        </div>
                    </div>
                    <div id="tab3" class="tab_content">
                        <!------------------------------------- 历史交费记录 --------------------------------------------->
                        <table class="data display">
                            <thead>
                            <tr>
                                <th width="200">历史交费单号</th>
                                <th width="140">交费日期</th>
                                <th width="140" style="text-align:right">交费金额</th>
                                <th width="100" style="text-align:center">发票号</th>
                                <th width="100">收费员</th>
                                <th>&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="odd">
                                <td>JF0100000987-201401-02</td>
                                <td>2014年01月22日</td>
                                <td class="right">2934 元</td>
                                <td class="center">08739320</td>
                                <td>比尔盖茨</td>
                                <td><a href="javascript:reInvoice();" class="btn btn-small">发票补开</a></td>
                            </tr>
                            <tr class="even">
                                <td>JF0100000987-201401-01</td>
                                <td>2014年01月04日</td>
                                <td class="right">100 元</td>
                                <td class="center">08714330</td>
                                <td>比尔盖茨</td>
                                <td><a href="javascript:reInvoice();" class="btn btn-small">发票补开</a></td>
                            </tr>
                            <tr class="odd">
                                <td>JF0100000987-201312-01</td>
                                <td>2013年12月05日</td>
                                <td class="right">3433 元</td>
                                <td class="center">49835092</td>
                                <td>比尔盖茨</td>
                                <td><a href="javascript:reInvoice();" class="btn btn-small">发票补开</a></td>
                            </tr>
                            <tr class="even">
                                <td>JF0100000987-201311-02</td>
                                <td>2013年11月24日</td>
                                <td class="right">925 元</td>
                                <td class="center">02139358</td>
                                <td>比尔盖茨</td>
                                <td><a href="javascript:reInvoice();" class="btn btn-small">发票补开</a></td>
                            </tr>
                            <tr class="odd">
                                <td>JF0100000987-201311-01</td>
                                <td>2013年11月07日</td>
                                <td class="right">1002 元</td>
                                <td class="center">45583937</td>
                                <td>比尔盖茨</td>
                                <td><a href="javascript:reInvoice();" class="btn btn-small">发票补开</a></td>
                            </tr>
                            <tr class="even">
                                <td>JF0100000987-201310-01</td>
                                <td>2013年10月01日</td>
                                <td class="right">1837 元</td>
                                <td class="center">57399377</td>
                                <td>比尔盖茨</td>
                                <td><a href="javascript:reInvoice();" class="btn btn-small">发票补开</a></td>
                            </tr>
                            <tr class="odd">
                                <td>JF0100000987-201309-01</td>
                                <td>2013年09月03日</td>
                                <td class="right">3094 元</td>
                                <td class="center">58439258</td>
                                <td>比尔盖茨</td>
                                <td><a href="javascript:reInvoice();" class="btn btn-small">发票补开</a></td>
                            </tr>
                            <tr class="even">
                                <td>JF0100000987-201308-01</td>
                                <td>2013年08月05日</td>
                                <td class="right">2495 元</td>
                                <td class="center">68345009</td>
                                <td>比尔盖茨</td>
                                <td><a href="javascript:reInvoice();" class="btn btn-small">发票补开</a></td>
                            </tr>
                            <tr class="odd">
                                <td colspan="6">只显示最近的8条交费记录...</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="tab4" class="tab_content" style="min-height:500px;">

                        <!------------------------------------- 修改联系信息 --------------------------------------------->
                        <div class="form label-inline uniform">

                            <div class="field"><label for="xxmax">用户编码</label> <input id="xxmax" disabled="disabled" value="0100000987" /></div>
                            <div class="field"><label for="xxname">用户姓名</label> <input id="xxname"  disabled="disabled" value="张三" /></div>
                            <div class="field"><label for="xxphone">联系电话</label> <input id="xxphone" value="13012345678" /></div>
                            <div class="field"><label for="xxnumber">短信号码</label> <input id="xxnumber" value="13012345678" /></div>
                            <div class="field"><label for="xxaddress">联系地址</label> <input id="xxaddress" size="80"
                                                                                   value="城东区福园路红午巷39号" /></div>
                            <div class="buttonrow">
                                <button class="btn">保存</button>
                            </div>

                        </div>
                    </div>
                    <div id="tab5" class="tab_content">
                        <div class="reportTitle">
                            用户历史详单
                        </div>
                        <div class="height24">
                            <div style="float:left;width:200px;">用户编码：0100000987</div>
                            <div style="float:left;">用户姓名：张三</div>

                            <div style="float:right;">当前欠费：179.16 元</div>
                            <div style="float:right;width:200px;">当前余额：0.00 元</div>
                        </div>
                        <table class="report">
                            <thead>
                            <tr>
                                <th style="width:210px;">水费/交费单号</th>
                                <th style="width:96px;">时间</th>
                                <th style="width:70px;">上月表码</th>
                                <th style="width:70px;">本月表码</th>
                                <th style="width:70px;">用水量</th>
                                <th style="width:100px;">应缴水费</th>
                                <th style="width:100px;">交费金额</th>
                                <th>余额/欠费</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="left">水费 SF0100000987-201309</td>
                                <td class="center">2013-09-03</td>
                                <td class="right">1033</td>
                                <td class="right">1240</td>
                                <td class="right">207 吨</td>
                                <td class="right">298.08 元</td>
                                <td class="right">&nbsp;</td>
                                <td class="right"><span class="fleft">欠费</span> -298.08 元</td>
                            </tr>
                            <tr>
                                <td class="left">交费 JF0100000987-201309-01</td>
                                <td class="center">2013-09-27</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">300.00 元</td>
                                <td class="right"><span class="fleft">余额</span> 1.92 元</td>
                            </tr>
                            <tr>
                                <td class="left">水费 SF0100000987-201310</td>
                                <td class="center">2013-10-06</td>
                                <td class="right">1240</td>
                                <td class="right">1330</td>
                                <td class="right">90 吨</td>
                                <td class="right">192.60 元</td>
                                <td class="right">&nbsp;</td>
                                <td class="right"><span class="fleft">欠费</span> -190.68 元</td>
                            </tr>
                            <tr>
                                <td class="left">交费 JF0100000987-201310-01</td>
                                <td class="center">2013-10-30</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">200.00 元</td>
                                <td class="right"><span class="fleft">余额</span> 9.32 元</td>
                            </tr>
                            <tr>
                                <td class="left">水费 SF0100000987-201311</td>
                                <td class="center">2013-11-11</td>
                                <td class="right">1330</td>
                                <td class="right">1460</td>
                                <td class="right">130 吨</td>
                                <td class="right">187.20 元</td>
                                <td class="right">&nbsp;</td>
                                <td class="right"><span class="fleft">欠费</span> -177.88 元</td>
                            </tr>
                            <tr>
                                <td class="left">交费 JF0100000987-201311-01</td>
                                <td class="center">2013-11-12</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">200.00 元</td>
                                <td class="right"><span class="fleft">余额</span> 22.12 元</td>
                            </tr>
                            <tr>
                                <td class="left">水费 SF0100000987-201312</td>
                                <td class="center">2013-12-05</td>
                                <td class="right">1460</td>
                                <td class="right">1882</td>
                                <td class="right">422 吨</td>
                                <td class="right">607.68 元</td>
                                <td class="right">&nbsp;</td>
                                <td class="right"><span class="fleft">欠费</span> -585.56 元</td>
                            </tr>
                            <tr>
                                <td class="left">交费 JF0100000987-201312-01</td>
                                <td class="center">2013-12-07</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">200.00 元</td>
                                <td class="right"><span class="fleft">欠费</span> -385.56 元</td>
                            </tr>
                            <tr>
                                <td class="left">交费 JF0100000987-201312-02</td>
                                <td class="center">2013-12-08</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">200.00 元</td>
                                <td class="right"><span class="fleft">欠费</span> -185.56 元</td>
                            </tr>
                            <tr>
                                <td class="left">交费 JF0100000987-201312-03</td>
                                <td class="center">2013-12-09</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">100.00 元</td>
                                <td class="right"><span class="fleft">欠费</span> -85.56 元</td>
                            </tr>
                            <tr>
                                <td class="left">水费 SF0100000987-201401</td>
                                <td class="center">2014-01-04</td>
                                <td class="right">1882</td>
                                <td class="right">1947</td>
                                <td class="right">65 吨</td>
                                <td class="right">93.60 元</td>
                                <td class="right">&nbsp;</td>
                                <td class="right"><span class="fleft">欠费</span> -179.16 元</td>
                            </tr>

                            </tbody>
                        </table>
                        <div class="height24 fright">
                            打印日期：2014年01月09日
                        </div>
                        <div style="margin:0px auto; text-align:center; margin-top:40px;">
                            <button class="btn btn-icon btn-print btn-blue" onClick="parent.close();"><span></span>打印</button>
                        </div>
                    </div>
                    <div id="tab6" class="tab_content">
                        <div class="reportTitle">
                            催缴水费通知单
                        </div>
                        <div class="height24">
                            <div style="float:left;width:200px;">用户编码：0100000987</div>
                            <div style="float:left;">用户姓名：张三</div>
                            <div style="float:right;">当前欠费：1377.16 元</div>
                        </div>
                        <table class="report">
                            <thead>
                            <tr>
                                <th style="width:100px;">时间</th>
                                <th style="width:120px;">上月表码</th>
                                <th style="width:120px;">本月表码</th>
                                <th style="width:120px;">用水量</th>
                                <th style="width:140px;">应缴水费</th>
                                <th style="width:140px;">实缴</th>
                                <th                     >未缴</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="center">2013-09-03</td>
                                <td class="right">1033</td>
                                <td class="right">1240</td>
                                <td class="right">207 吨</td>
                                <td class="right">298.08 元</td>
                                <td class="right">2.00 元</td>
                                <td class="right">296.08 元</td>
                            </tr>
                            <tr>
                                <td class="center">2013-10-06</td>
                                <td class="right">1240</td>
                                <td class="right">1330</td>
                                <td class="right">90 吨</td>
                                <td class="right">192.60 元</td>
                                <td class="right">0.00 元</td>
                                <td class="right">192.60 元</td>
                            </tr>
                            <tr>
                                <td class="center">2013-11-11</td>
                                <td class="right">1330</td>
                                <td class="right">1460</td>
                                <td class="right">130 吨</td>
                                <td class="right">187.20 元</td>
                                <td class="right">0.00 元</td>
                                <td class="right">187.20 元</td>
                            </tr>
                            <tr>
                                <td class="center">2013-12-05</td>
                                <td class="right">1460</td>
                                <td class="right">1882</td>
                                <td class="right">422 吨</td>
                                <td class="right">607.68 元</td>
                                <td class="right">0.00 元</td>
                                <td class="right">607.68 元</td>
                            </tr>
                            <tr>
                                <td class="center">2014-01-04</td>
                                <td class="right">1882</td>
                                <td class="right">1947</td>
                                <td class="right">65 吨</td>
                                <td class="right">93.60 元</td>
                                <td class="right">0.00 元</td>
                                <td class="right">93.60 元</td>
                            </tr>
                            <tr>
                                <td class="center">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">&nbsp;</td>
                                <td class="right">1377.16 元</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="height24">
                            尊敬的用户，你户已欠缴水费 1377.16 元，请在三天内至我公司收费大厅结清水费，否则将停止供水。
                        </div>
                        <div class="height24 right">
                            湖南省自来水公司
                            &nbsp;&nbsp;
                            2014年01月05日
                        </div>
                        <div style="margin:0px auto; text-align:center; margin-top:10px;">
                            <button class="btn btn-icon btn-print btn-blue" onClick="parent.close();"><span></span>打印</button>
                        </div>
                    </div>
                </div>
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

        //选择项初始化
        $('.tab_container').tabs ();

        //陈欠账单-选择账单的操作
        $('table.billlist tbody tr').click(function(){
            $('table.billlist tbody tr.selected').removeClass('selected');
            $(this).addClass('selected');

            //以下代码是模拟ajax视觉效果
            if(!temp_html) temp_html = $('#details').html();
            $('#details').html('正在加载...');
            setTimeout(function(){ $('#details').html(temp_html); }, 300);
        });
    });
    var temp_html;

    //查询用户
    function findUser(){
        showWindow({url:'sys_selectUser.html'});
    }
    //交费
    function pay(){
        showDialog('确认交费吗？', function(){
            //回调
            //打印发票
            showWindow({url:'../page/pay_printInvoice.html', width:800, height:260});
        });
    }
    //选择发票
    function selectInvoice(){
        showWindow({url:'../page/pay_window_selectInvoice.html'});
    }
    //发票补开
    function reInvoice(){
        showWindow({url:'../page/pay_window_reInvoice.html'});
    }



</script>

</body>
</html>
