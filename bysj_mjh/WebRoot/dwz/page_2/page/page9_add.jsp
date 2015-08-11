<html>
<head>
    <style type="text/css">
        .page9_table1 th{
            width:122px;
        }
        .page9_table1 td{
            width:326px;
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
            <table class="formTable page9_table1">
                <tr >
                    <th >变更单号：</th>
                    <td ><input type="text" value="CH-LS2014060001-0001"/></a>
                    </td>
                    <th>发票币种：</th>
                    <td ><input size="20"type="text" class="required"></td>
                </tr>
                <tr>
                    <th>汇率：</th>
                    <td><input type="text" size="20" class="required" value="0.00"/></td>
                    <th>会计期间：</th>
                    <td><input type="text"size="10"class="required" value="201405"/><span class="inputInfo">%</span></td>
                </tr>
                <tr>
                    <th>付款周期：</th>
                    <td>
                        <input type="radio" value="月结" checked/>月结
                        <input type="radio" value="季结"/>季结
                        <input type="radio" value="半年结"/>半年结
                        <input type="radio" value="年结"/>年结
                    </td>
                    <th>税率：</th>
                    <td><input type="text"size="5"class="required "value="17.00" />
                    <span class="inputInfo">%</span></td>
                </tr>
                <tr>
                    <th>变更原因：</th>
                    <td colspan="3">
                        <textarea rows="3" style="width: 95%"></textarea>
                   </td>
                </tr>
            </table>
            <div class="tabs" currentIndex="0" style="margin-top:5px;" eventType="click">
                <div class="tabsHeader">
                    <div class="tabsHeaderContent">
                        <ul>
                            <li class=""><a href="javascript:;"><span>费用变更</span></a></li>

                        </ul>
                    </div>
                </div>
                <div class="tabsContent tabsContent2"  style="background-color:white;padding:0px;"  >
                    <div class="tab1" style="padding:5px;height:350px;">
                        <table class="formTable page9_table2" style="width:100%;height:450px;">

                           <tr>
                               <th>费用项目</th>
                               <th>原币</th>
                               <th>本位币</th>
                               <th>税额</th>
                           </tr>
                            <tr>
                                <td colspan="4" style="font-weight: bold;font-style: italic;font-size:14px;color:#183152" >一次性费用</td>
                            </tr>
                            <tr>
                                <td style="height:20px;line-height:20px;padding-left:50px;">
                                    保险费
                                    <input type="checkbox" style="position: relative;top:2px;" title="预收" value="1" name="bx"></input>
                                </td>
                                <td style="padding-left:50px;height:20px;line-height:20px;">
                                    <input type="text" />
                                </td>
                                <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                                <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                            </tr>
                            <tr>
                                <td style="padding-left:50px;height:20px;line-height:20px;">
                                    留购价
                                    <input type="checkbox" style="position: relative;top:2px;" title="预收" value="1" name="bx"></input>
                                </td>
                                <td style="padding-left:50px;height:20px;line-height:20px;">
                                    <input type="text" />
                                </td>
                                <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                                <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                            </tr>
                            <tr>
                                <td style="padding-left:50px;height:20px;line-height:20px;">
                                    手续费
                                </td>
                                <td style="padding-left:50px;height:20px;line-height:20px;">
                                    <input type="text" />
                                </td>
                                <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                                <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                            </tr>
                            <td style="padding-left:50px;height:20px;line-height:20px;">
                                罚息
                            </td>
                            <td style="padding-left:50px;height:20px;line-height:20px;">
                                <input type="text" />
                            </td>
                            <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                            <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                            </tr>
                            <td style="padding-left:50px;height:20px;line-height:20px;">
                                其他费用
                            </td>
                            <td style="padding-left:50px;height:20px;line-height:20px;">
                                <input type="text" />
                            </td>
                            <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                            <td style="padding-left:50px;height:20px;line-height:20px;"></td>
                            </tr>
                            <tr style="background-color: #F6EAC6;">
                                <td style="padding-left:50px;height:20px;line-height: 20px;font-weight: bold;font-size:14px;">小计</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="font-weight: bold;font-style: italic;font-size:14px;color:#183152" >
                                    余额调整
                                <span style="padding-left: 450px"><a href="page/page9_2.html" rel="next"title="租约管理→租约变更→提款变更" target="dialog" width="900" height="500" mask="true" style="color: blue;font-weight:normal;font-style: normal;">【提款变更】</a>
                                <a href="page/page9_1.html"target="dialog" width="1000" height="450" rel="next" mask="true" title="租约管理→租约变更→销售发票变更"  style="padding-left:25px;color: blue;font-weight:normal;font-style: normal;">【销售发票变更】</a>
                                </span>
                                </td>

                            </tr>
                            <tr style="background-color: #F0F8FF">
                                <td style="padding-left:50px;height:20px;line-height: 20px;">贷款金额</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>
                            <tr id="tr1" onmouseover="jin()" onmouseout="chu()" >
                                <td style="padding-left:50px;height:20px;line-height: 20px;">分期费用</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>
                            <tr>
                                <td style="padding-left:50px;height:20px;line-height: 20px;">一次性费用</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>
                            <tr>
                                <td style="padding-left:50px;height:20px;line-height: 20px;">周期性费用</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>
                            <tr>
                                <td style="padding-left:50px;height:20px;line-height: 20px;">首付款</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>
                            <tr style="background-color: #F6EAC6;">
                                <td style="padding-left:50px;height:20px;line-height: 20px;font-weight: bold;font-size:14px;">小计</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>
                            <tr>
                                <td style="padding-left:50px;height:20px;line-height: 20px;">保证金</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>
                            <tr style="background-color: #F6EAC6;">
                                <td style="padding-left:50px;height:20px;line-height: 20px;font-weight: bold;font-size:14px;">总计</td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                                <td  style="padding-left:50px;height:20px;line-height: 20px;"></td>
                            </tr>



                        </table>
                    </div>



              </div>


        </div>
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