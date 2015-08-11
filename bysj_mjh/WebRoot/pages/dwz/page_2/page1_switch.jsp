
<div class="pageContent" >
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent"  layoutH="48">
            <table class="formTable" >
                <tr>
                    <th>所选资产数：</th>
                    <td><span>1</span></td>
                </tr>
                <tr>
                    <th>请选择状态：</th>
                    <td>
                        <select name="sel1">
                            <option value="">出售</option>
                            <option value="">入库</option>
                            <option value="">收回</option>
                            <option value="">已租</option>
                        </select>
                    </td>
                </tr>


            </table>
        </div>
        <div class="formBar" >
            <ul>
                <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">执行变更</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">关闭窗口</button></div></div>
                </li>
            </ul>
        </div>
    </form>
</div>
</html>