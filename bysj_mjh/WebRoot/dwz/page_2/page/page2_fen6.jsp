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
            <table class="formTable">
                <tbody>

                <tr>
                    <th class="top" style="width:15%" ></th>
                    <th class="top" style="width:15%">操作人员</th>
                    <th class="top" style="width:15%">审查人员</th>
                    <th class="top" style="width:15%">租约约定时间</th>
                    <th class="top" style="width:15%">计划完成时间</th>
                    <th class="top" style="width:25%">备注</th>
                </tr>
                <tr>
                    <td style="text-align: right">租约终止 </td>
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
                    <input type="text" class="date" size="13" value="" />
                    <a class="inputDateButton" href="javascript:;"></a>
                    </td>
                    <td>
                        <textarea type="textInput" rows="2" style="width:95%;"></textarea>
                    </td>
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