<html>
<head>
    <style type="text/css">
        .page9_table1 th{
            width:122px;
        }
        .page9_table1 td{
            width:326;
        }
        .page9_table2 th{
            text-align: center;
        }


    </style>
    <script type="text/javascript">
        function jin(){
            document.getElementById("tr1").style.background = "#F0F8FF";


        }
        function chu(){
            document.getElementById("tr1").style.bakcground ="white";
        }
    </script>
</head>
<body>
<div class="pageContent" >
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="50">
            <table class="formTable page10_table1"style="width:99%;margin:3px ;">
                <tr>
                    <th>租约编号：</th>
                    <td class="papa1"style="text-align: left;">LS2014030008</td>
                    <th>承租人：</th>
                    <td class="papa2" style="text-align: left">上海飞航租赁有限公司</td>
                </tr>
                <tr>
                    <th>汇率：</th>
                    <td></td>
                    <th>增值税税率：</th>
                    <td>17.00% </td>
                </tr>
                <tr>
                    <th>当前会计期间：</th>
                    <td>201405 </td>
                    <th>终止会计期间：</th>
                    <td><input type="text" size="15" class="required date"value="201405 "/></td>
                </tr>
                <tr>
                    <th>到期日：</th>
                    <td><input type="text" size="15" class="required date"value="2014-08-19 "/>
                     <a class="inputDateButton" href="javascript:;"></a></td>
                    <th>终止日期：</th>
                    <td><input type="text" size="15" class="required date"value="2014-08-19 "/>
                        <a class="inputDateButton" href="javascript:;"></a></td>
                </tr>
                <tr>
                    <th>终止原因：</th>
                    <td colspan="3"><textarea type="text" class="textInput" style="width:95%;" rows="3"/> </td>
                </tr>
            </table>
            <table class="formTable page10_table2"style="width:99%;margin:3px;">
                <tr>
                    <th style="height:25px;line-height: 28px; text-align: center">款项明细</th>
                    <th style="height:25px;line-height: 28px; text-align: center">原币（）</th>
                    <th style="height:25px;line-height: 28px; text-align: center">本位币（1：）</th>
                    <th style="height:25px;line-height: 28px; text-align: center">增值税</th>
                </tr>

                <tr>
                    <td colspan="4" style="text-align:left;color:#183152;font-weight: bold;font-style: italic;font-size: 14px" >
                        <span>一次性费用及到期的预付款
                            <a class="" href="page/page10_2.html" rel="sdffff" target="dialog"title="租约管理→租约终止→周期性费用"width="900" height="400" mask="true" style="font-style: normal;padding-left:10px;color:blue;" >
                                【填写周期性费用】
                            </a>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td>保险费：<input type="checkbox" name="bx"/></td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>留购价：<input type="checkbox" name="lg" /></td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>手续费：</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>罚息费：</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>其他费用：</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>小计：</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td class="t1" style="text-align: right">0.00</td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align:left;color:#183152;font-weight: bold;font-style: italic;font-size: 14px" >周期性利息</td>
                </tr>
                <tr>
                    <td>小计：</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td class="t1" style="text-align: right">0.00</td>
                </tr>
                <tr style="background-color: #F6EAC6;">
                    <td style="text-align:left;font-weight: bold;font-size:14px;">合计：</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td class="t1" style="text-align: right">0.00</td>
                    <td class="t1" style="text-align: right">0.00</td>
                </tr>
            </table>
            <table class="formTable page10_table3" style="width: 99%;margin: 3px ;">
                <tr>
                    <td colspan="3" class="td1"style="font-size:16px;font-style: italic;font-weight: bold;text-align: center;color:#183152">
                        应收款项汇总
                    </td>
                </tr>
                <tr>
                    <th style="text-align: center">款项明细</th>
                    <th style="text-align: center" >到期应收金额</th>
                    <th style="text-align: center" >实际到期付款</th>
                </tr>
                <tr>
                    <td class="td2"colspan="3" style="text-align:left;color:#183152;font-weight: bold;font-style: italic;font-size: 14px">（1）应收款余额</td>
                </tr>
                <tr>
                    <td>未结清的分期付款：</td>
                    <td></td>
                    <td><input type="text" size="40"/></td>

                </tr>
                <tr>
                    <td>未生成提款计划贷款余额：</td>
                    <td></td>
                    <td><input type="text" size="40"/></td>
                </tr>

                <tr>
                    <td>未结清的一次性费用：</td>
                    <td></td>
                    <td><input type="text" size="40"/></td>
                </tr>
                <tr>
                    <td>未结清的周期性费用：</td>
                    <td></td>
                    <td><input type="text" size="40"/></td>
                </tr>
                <tr>
                    <td>未结清的首付款：</td>
                    <td></td>
                    <td><input type="text" size="40"/></td>
                </tr>
                <tr>
                    <td>未结清的承租人保证金：</td>
                    <td></td>
                    <td><input type="text" size="40"/></td>
                </tr>
                <tr>
                    <td>小计：</td>
                    <td style="text-align: right">0.00</td>
                    <td style="text-align: right">0.00</td>
                </tr>
                <tr>
                    <td class="td3" colspan="3" style="text-align:left;color:#183152;font-weight: bold;font-style: italic;font-size: 14px">
                        （2）贷款余额
                    </td>
                </tr>
                <tr>
                    <td>小计：</td>
                    <td style="text-align: right">0.00</td>
                    <td style="text-align: right">0.00</td>
                </tr>
                <tr>
                    <td class="" colspan="3" style="text-align:left;color:#183152;font-weight: bold;font-style: italic;font-size: 14px">
                        （3）周期性利息
                    </td>

                </tr>
                <tr>
                    <td class="" colspan="3" style="text-align:left;color:#183152;font-weight: bold;font-style: italic;font-size: 14px">
                        （4)一次性费用
                    </td>

                </tr>
                <tr >
                    <td style="text-align:right;font-weight: bold;font-size:14px;">合计：</td>
                    <td style="text-align: right">0.00</td>
                    <td style="text-align: right" ></td>
                </tr>
                <tr style="background-color: #F6EAC6;">
                    <td style="text-align:right;font-weight: bold;font-size:14px;">收款总计：</td>
                    <td style="text-align: right">0.00</td>
                    <td ><input class="in1" style="text-align: right" type="text" size="40" value="0.00"/></td>
                </tr>

            </table>





            </div>

    </form>
    <div class="formBar">
        <ul>
            <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
            <li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交数据</button></div></div></li>
            <li>
                <div class="button"><div class="buttonContent"><button type="button" class="close">关闭窗口</button></div></div>
            </li>
        </ul>
    </div>

</div>
</body>
</html>