<html>

<head>
<style type="text/css">
    .page10_t1 th,.page10_t1 td{
        width:125px;height:20px;line-height:20px;
    }
    .page10_t1 th.why{
        width:125px;
        height:20px;
        line-height:20px;
        text-align: center;
    }
    .p10_tr1,.p10_tr2,.p10_tr3
    ,.p10_tr4{
        width:125px;
        height:20px;
        line-height:20px;
        text-align: center;
    }

</style>
</head>

 <body>
  <div class="pageContent "  >
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent " layoutH="50">
         <table class="formTable page10_t1" style="width:100%;">
             <tr>
                 <td colspan="7" style="font-style: italic;font-size:14px;padding:5px;">周期性费用</td>
             </tr>
             <tr class="p10_tr1">
                 <th class="why">付款周期 & 批次</th>
                 <th class="why">保险费</th>
                 <th class="why">管理费</th>
                 <th class="why">手续费</th>
                 <th class="why">罚息费</th>
                 <th class="why">其他费用</th>
                 <th class="why">小计</th>
             </tr>
             <tr class="p10_tr2">
                 <td style="text-align: right">应收金额：</td>
                 <td></td> <td></td> <td></td> <td></td> <td></td>
                 <td style="text-align: right">0.00</td>
             </tr>
             <tr class="p10_tr3">
                 <td style="text-align: right">已开票金额：</td>
                 <td></td> <td></td> <td></td> <td></td> <td></td>
                 <td style="text-align: right">0.00</td>
             </tr>
             <tr class="p10_tr4">
                 <td style="text-align: right">费用调整：</td>
                 <td><input type="text" /></td>
                 <td><input type="text" /></td>
                 <td><input type="text" /></td>
                 <td><input type="text" /></td>
                 <td><input type="text" /></td>
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