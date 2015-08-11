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
        .formTable th.top{
            height:28px;
            line-height: 28px;;
            text-align: center;
        }
        .formTable th.middle{
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
                    <th class="top"></th>
                    <th class="top"colspan="2">
                        周期性费用
                    </th>
                    <th class="top"colspan="2">
                        分期收款
                    </th>
                </tr>
                <tr>
                    <th class="middle">现有提款批次</th>
                    <th class="middle">未付金额</th>
                    <th class="middle">增量</th>
                    <th class="middle">未付金额</th>
                    <th class="middle">增量</th>
                </tr>
                <tr style="height:20px;line-height:20px;background-color:  #F6EAC6">
                    <td style="text-align:center;font-weight: bold;font-size:14px">合计</td>
                    <td></td>
                    <td></td><td></td>
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