<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
<div class="pageContent" >
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="48" style="">
            <p style="width:450px;">
                <label style="width:120px;">请选择excel：</label>
                <input class="valid" name="file" type="file">
                <span>
                    <a style="color:blue;" target="_blank" href="/asset/content/template/assetsPassword.xls">
                        模板下载
                    </a>
                </span>
            </p>
        </div>
        <div class="formBar">
            <ul>
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交并发送邮件提醒</button></div></div></li>
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">关闭窗口</button></div></div>
                </li>
            </ul>
        </div>
    </form>
</div>
</body>
</html>