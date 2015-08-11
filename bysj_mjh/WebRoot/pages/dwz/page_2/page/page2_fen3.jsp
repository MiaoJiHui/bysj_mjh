<head>
    <style type="text/css">
        th.top{
            text-align: center;
        }
    </style>

</head>
<div class="pageContent">
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="48">

            <table class="list nowrap itemDetail " width="100%" addbutton="新增批次" style="clear: both;">
                <thead>
                <tr>
                    <th style="width:10%" type="readonly" defaulttext="批次" size="2"defaultVal="#index#" fieldclass="digits readonly" name="sale[#index#].salesInvoiceSequence"></th>
                    <th name="sale[#index#].assigneeId" fieldclass="select2 operator"  type="enum" enumUrl="page/database/db_select.html" style="width:15%;text-align: center;font-weight: normal;">
                        操作人员
                    </th>
                    <th name="sale[#index#].reviewerId" fieldclass="select2 operator" type="enum" enumUrl="page/database/db_select.html"style="width:15%;text-align: center;font-weight: normal;">
                        审查人员
                    </th>
                    <th name="sale[#index#].duedateLease" fieldclass="ctr" defaulttext="" defaultval="" type="hidden" style="width:15%;text-align: center;font-weight: normal;">
                        租约约定时间
                    </th>
                    <th name="sale[#index#].duedateAssigned" fieldclass="date showImg" defaultval=""type="date" style="width:15%;text-align: center;font-weight: normal;">
                        计划完成时间
                    </th>
                    <th width="95%" rows="2" name="sale[#index#].comments" type="textarea" style="width:25%;text-align: center;font-weight: normal;">
                        备注
                    </th>
                    <th type="del" style="width:5%;text-align: center;font-weight: normal;">
                        删除
                    </th>
                </tr>
                </thead>
                <tbody>

                <tr class="unitBox">
                    <td style="text-align:center">
                        <span style="position: relative; ">批次</span>
                        <input class="number invoiceNo od textInput readonly " type="text" size="2" value="1" name="sale[0].salesInvoiceSequence" readonly="">
                        </input>
                    </td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                    </td>
                    <td  style="text-align: center">
                        <input type="text" class="date" size="12" value="" />
                        <a class="inputDateButton" href="javascript:;"></a>
                    </td>
                    <td>
                        <textarea rows="2" style="width: 95%"/>
                    </td>
                    <td> <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a></td>
                </tr>




                </tbody>
            </table>
        </div>
        <div class="formBar">
            <ul>
                <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交数据</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">关闭窗口</button></div></div>
                </li>
            </ul>
        </div>
    </form>
</div>
</html>