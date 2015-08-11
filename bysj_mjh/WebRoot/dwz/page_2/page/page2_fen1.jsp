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
                    <th class="top" style="width:15%" >操作人员</th>
                    <th class="top" style="width:15%" >审查人员</th>
                    <th class="top" style="width:15%" >租约约定时间</th>
                    <th class="top" style="width:15%" >计划完成时间</th>
                    <th class="top" style="width:25%" >备注</th>
                </tr>
                <tr>
                    <td style="text-align: right">关键条款录入</td>
                    <td><select name="sel1">
                        <option name="op1" checked>请选择人员</option>
                        <option name="op1">陈刚</option>
                        <option name="op1">杨轶</option>
                        <option name="op1">周翔</option>
                        <option name="op1">测试计划人员</option>
                        <option name="op1">demo</option>
                        <option name="op1">Violet</option>
                    </select>
                    </td>
                    <td><select name="sel1">
                        <option name="op1" checked>请选择人员</option>
                        <option name="op1">陈刚</option>
                        <option name="op1">杨轶</option>
                        <option name="op1">周翔</option>
                        <option name="op1">测试计划人员</option>
                        <option name="op1">demo</option>
                        <option name="op1">Violet</option>
                    </select></td>
                    <td style="text-align: center;">2014-06-16</td>
                    <td  style="text-align: center">
                        <input type="text" class="date" size="13"value="2014-06-16" />
                        <a class="inputDateButton" href="javascript:;"></a>
                    </td>
                    <td>
                        <textarea class="textInput" rows="2" style="width:95%">

                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">其他条款录入</td>
                    <td><select name="sel1">
                        <option name="op1" checked>请选择人员</option>
                        <option name="op1">陈刚</option>
                        <option name="op1">杨轶</option>
                        <option name="op1">周翔</option>
                        <option name="op1">测试计划人员</option>
                        <option name="op1">demo</option>
                        <option name="op1">Violet</option>
                    </select>
                    </td>
                    <td><select name="sel1">
                        <option name="op1" checked>请选择人员</option>
                        <option name="op1">陈刚</option>
                        <option name="op1">杨轶</option>
                        <option name="op1">周翔</option>
                        <option name="op1">测试计划人员</option>
                        <option name="op1">demo</option>
                        <option name="op1">Violet</option>
                    </select></td>
                    <td style="text-align: center;">2014-06-16</td>
                    <td  style="text-align: center">
                        <input type="text" class="date" size="13" value="2014-06-16" />
                        <a class="inputDateButton" href="javascript:;"></a>
                    </td>
                    <td>
                        <textarea class="textInput" rows="2" style="width:95%">

                        </textarea>
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