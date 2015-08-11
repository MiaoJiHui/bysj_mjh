
<head>
<style type="text/css">
.formTable .page1_th {
	width: 120px;
}
</style>
</head>
<body>
	<div class="pageContent">
		<form method="post" action="demo/common/ajaxDone.html"
			class="pageForm required-validate"
			onsubmit="return validateCallback(this, navTabAjaxDone);">
			<div class="pageFormContent" layoutH="48">
				<table class="formTable ">
					<tr>
						<th class="page1_th">租约编码：</th>
						<td class="page1_td"><input type="text" class="required "
							value="LS2014060001" size="40" />
						</td>
					</tr>
					<tr>
						<th class="page1_th">租赁日期：</th>
						<td class="page1_td"><input type="text" class="required date"
							value="2014-06-16" size="25" /><a class="inputDateButton"
							href="javascript:;"></a>
						</td>
					</tr>
					<tr>
						<th class="page1_th">案件经理：</th>
						<td class="page1_td"><select class="required " value="">

								<option value="hah">陈刚</option>
								<option value="hah" checked>杨佚</option>
								<option value="hah">周翔</option>
								<option value="hah">试用账号6</option>
								<option value="hah">测试计划人员</option>
								<option value="hah">demo</option>
								<option value="hah">Violet</option>
						</select></td>
					</tr>
					<tr>
						<th class="page1_th">主题：</th>
						<td class="page1_td"><input type="text" class="required"
							value="设备租赁测试" size="45" />
						</td>
					</tr>
					<tr>
						<th class="page1_th">承租人：</th>
						<td class="page1_td"><select class="required">
								<option value="hah2" checked>上海飞航租赁有限公司</option>
								<option value="hah2">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</option>
						</select></td>
					</tr>
					<tr>
						<th class="page1_th" style="border-bottom-width:0px;">是否为LIP：</th>
						<td class="page1_td" style="border-bottom-width:0px;"><span
							style="color:#183152;">否</span>
						</td>
					</tr>
				</table>
			</div>
			<div class="formBar">
				<ul>
					<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">保存</button>
							</div>
						</div>
					</li>
					<li>
						<div class="button">
							<div class="buttonContent">
								<button type="button" class="close">取消</button>
							</div>
						</div></li>
				</ul>
			</div>
		</form>
	</div>
</body>
