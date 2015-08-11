<html>
<head>
   <!--<link href="themes/css/application.css" rel="stylesheet" type="text/css">-->
    <style type="text/css">
         .formTable th{
             width:120px;
         }
         .formTable td{
             width:auto;
         }
    </style>
</head>
<body>
<div class="pageContent">
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="48">
            <table class="formTable page1_add" style="">
                <tr>
                    <th class="">资产：</th>
                    <td>
                        <select value="" name="sel1">
                           <option value="请选择">请选择</option>
                           <option value="大圆机">大圆机</option>
                           <option value="重型挖机-12">重型挖机-12</option>
                           <option value="宇通大巴">宇通大巴</option>
                        </select>
                    </td>
                    <th>仓储状态：</th>
                    <td>
                        <select value="" name="sel2">
                            <option value="请选择">请选择</option>
                            <option value="出售">出售</option>
                            <option value="入库">入库</option>
                            <option value="收回">收回</option>
                            <option value="已租">已租</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="th1">编号：</th>
                    <td><input type="text" class="required"></td>
                    <th>单价：</th>
                    <td><input type="text" class=""></td>
                </tr>
                <tr>
                    <th class="th1">序列号：</th>
                    <td><input type="text" class="required"></td>
                    <th>制造商序列号：</th>
                    <td><input type="text" class=""></td>
                </tr>
                <tr>
                    <th class="th1">生产日期：</th>
                    <td><input type="text" class="date" size="10"><a class="inputDateButton" href="javascript:;">选择</a></td>
                    <th>购入日期：</th>
                    <td><input type="text" class="date" size="10"><a class="inputDateButton" href="javascript:;">选择</a></td>
                </tr>
                <tr>
                    <th class="th1">备注：</th>
                    <td colspan="3">
                        <textarea type="text" class="" rows="5" cols="85px"></textarea>
                    </td>
                </tr>
            </table>
        </div>
        <div class="formBar">
            <ul>

                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交数据</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">关闭窗口</button></div></div>
                </li>
            </ul>
        </div>
    </form>
</div>
</body>
</html>
