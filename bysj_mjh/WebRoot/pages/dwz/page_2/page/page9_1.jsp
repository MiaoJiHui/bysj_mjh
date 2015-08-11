<html>
<head>
    <style type="text/css">

       .formTable th.top2{
           height:28px;
           line-height: 28px;;
           text-align: center;
       }
       .formTable th.middle2{
           height:25px;
           line-height: 25px;
           text-align: center;
       }
    </style>

</head>
<body>
<div class="pageContent" >
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="50">
            <table class="formTable page9_table1">

                   <tr>
                       <th class="top2"></th>
                       <th class="top2"colspan="2">
                           一次性费用
                       </th>
                       <th class="top2"colspan="2">
                           首付款
                       </th>
                       <th class="top2" colspan="2">
                           承租人保证金
                       </th>
                       <th class="top2" colspan="2">
                           贷款金额
                       </th>
                   </tr>
                   <tr>
                       <th class="middle2">销售发票号</th>
                       <th class="middle2">未付金额</th>
                       <th class="middle2">增量</th>
                       <th class="middle2">未付金额</th>
                       <th class="middle2">增量</th>
                       <th class="middle2">未付金额</th>
                       <th class="middle2">增量</th>
                       <th class="middle2">未付金额</th>
                       <th class="middle2">增量</th>
                   </tr>
                   <tr style="height:23px;line-height:23px;background-color:  #F6EAC6">
                       <td style="text-align:center;font-weight: bold;font-size:12px">合计</td>
                       <td></td>
                       <td></td><td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
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