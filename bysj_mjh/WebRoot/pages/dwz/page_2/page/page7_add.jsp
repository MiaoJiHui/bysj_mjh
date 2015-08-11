<head>
    <style>
        .page4add_th{
            width:120px;
        }
        .page4add_td{
            width:250px;
        }
    </style>
</head>
<div class="pageContent">
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="48">
            <table class="formTable">
                <tr >
                    <th class="page4add_th">名称：</th>
                    <td class="page4add_td"><input  class="required" type="text" size="20" value=""  />
                    </td>
                </tr>
                <tr>
                    <th class="page4add_th" >类型：</th>
                    <td class="page4add_td">
                        <select name="page7_sel1">
                            <option value="请选择">请选择</option>
                            <option value="财务">财务</option>
                            <option value="合同">合同</option>
                            <option value="其他">其他</option>
                        </select>

                    </td>
                </tr>
                <tr>
                    <th class="page4add_th">描述：</th>
                    <td class="page4add_td">
                        <textarea type="text" class="textInput" rows="3" style="width: 95%"></textarea>
                    </td>
                </tr>
                <tr>
                    <th class="page4add_th">附件上传：</th>
                    <td class="page4add_td">
                        <input type="file" name="file" class="required valid"/>
                    </td>
                </tr>

            </table>
        </div>
        <div class="formBar">
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