
<div class="pageContent" >
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent"  layoutH="48">
            <table class="formTable" >
                <tr>
                    <th>租赁资产：</th>
                    <td><input type="text" size="30"alt="请输入租赁房产"/></td>
                </tr>
                <tr>
                    <th>单价：</th>
                    <td><input type="text" class="required" size="25"/></td>
                </tr>

                <tr>
                    <th>数量：</th>
                    <td><input type="text" class="required" size="5"/></td>
                </tr>
                <tr>
                    <th>单价：</th>
                    <td><input type="text" class="required" size="10"/></td>
                </tr>

            </table>
        </div>
        <div class="formBar" >
            <ul>
                <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
                </li>
            </ul>
        </div>
    </form>
</div>
</html>