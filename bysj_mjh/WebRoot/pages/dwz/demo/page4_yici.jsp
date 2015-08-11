<head>
<style type="text/css">
.formTable .page4yici_th {
	width: 120px;
}

.formTable .page4yici_td {
	width: 250px;
}
</style>
</head>
<body>
	<div class="pageContent">
		<form method="post" action="demo/common/ajaxDone.html"
			class="pageForm required-validate"
			onsubmit="return validateCallback(this, navTabAjaxDone);">
			<div class="pageFormContent" layoutH="48">
				<table class="formTable">
					<tr>
						<th>发票币种：</th>
						<td></td>
					</tr>
					<tr>
						<th class="page4yici_th">保险费：</th>
						<td class="page4yici_td"><input class="required" type="text"
							size="20" value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">留购价：</th>
						<td class="page4yici_td"><input class="required" type="text"
							size="20" value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">手续费：</th>
						<td class="page4yici_td"><input class="required" type="text"
							size="20" value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">罚息费：</th>
						<td class="page4yici_td"><input type="text" size="20"
							value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">其他费用：</th>
						<td class="page4yici_td"><input type="text" size="20"
							value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">小计：</th>
						<td class="page4yici_td"><input type="text" size="20"
							value="" /></td>
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