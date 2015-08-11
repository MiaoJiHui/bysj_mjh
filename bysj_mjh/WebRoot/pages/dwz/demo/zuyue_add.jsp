<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html >
<head>
<meta charset="utf-8" />
<style type="text/css">
#tip {
	width: 142px;
	height: 27px;
	border: 1px solid yellow;
	display: none;
}
</style>
<script type="text/javascript">
             function hello(){
                 document.getElementById("tip").style.display ="block";
             };
    </script>
</head>

<body>
	<div class="pageContent">
		<form method="post" action="demo/common/ajaxDone.html"
			class="pageForm required-validate"
			onsubmit="return validateCallback(this, navTabAjaxDone);">
			<div class="pageFormContent" layoutH="48">
				<table class="formTable">
					<tr>
						<th>租约编码：</th>
						<td><input type="text" size="40" /></td>
					</tr>
					<tr>
						<th>租赁日期：</th>
						<td><input type="text" size="22" class="date required" /> <a
							class="inputDateButton" href="javascript:;"></a></td>
					</tr>
					<tr>
						<th>案件经理：</th>
						<td><select class="select_drop ">
								<option name="" value="" checked></option>
								<option name="" value="">xxxxxxxxxXXXxxx</option>
						</select></td>
					</tr>
					<tr>
						<th>主题：</th>
						<td><input type="text" class="required" size="45" /></td>
					</tr>
					<tr>
						<th>承租人：</th>
						<td><select class="select_drop" class="required" width="30px">
								<option checked></option>
								<option name="" value="">xxxxxxxxxxXXXxx</option>
						</td>
					</tr>
					<tr>
						<th>是否中途上线：</th>
						<td><input type="radio" name="way" value="否" checked>否
							<input type="radio" name="way" value="是">是</td>
					</tr>

				</table>
			</div>
			<div class="formBar">
				<ul>
					<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">提交数据</button>
							</div>
						</div>
					</li>
					<li>
						<div class="button">
							<div class="buttonContent">
								<button type="button" class="close">关闭窗口</button>
							</div>
						</div></li>
				</ul>
			</div>
		</form>
	</div>
</body>
</html>