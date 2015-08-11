<head>
<style type="text/css">
.omg .formTable .shit1 {
	width: 160px;
}

.omg .formTable .shit2 {
	text-align: center;
	width: 107px;
}

.omg .formTable .shit3 {
	width: 263px;
}
</style>
</head>
<body>
	<div class="pageContent omg">
		<form method="post" action="demo/common/ajaxDone.html"
			class="pageForm required-validate"
			onsubmit="return validateCallback(this, navTabAjaxDone);">
			<div class="pageFormContent" layoutH="48">
				<table class="formTable">
					<tr>
						<th class="shit1"></th>
						<th class="shit2">百分比：</th>
						<th class="shit3"></th>
					</tr>
					<tr>
						<th class="page4yici_th">销售价：</th>
						<td></td>
						<td class="page4yici_td"><input class="required" type="text"
							size="20" value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">调整价：</th>
						<td></td>
						<td class="page4yici_td"><input type="text" size="20"
							value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">净价：</th>
						<td></td>
						<td class="page4yici_td"><input type="text" size="20"
							value="" alt="0.00" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">减项：预付定金：</th>
						<td><input type="text" class="required" size="10" alt="0" /><span
							class="inputInfo">%</span>
						</td>
						<td class="page4yici_td"><input type="text" class="required"
							size="20" value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">加项：承租方保证金：</th>
						<td><input type="text" class="required" size="10" alt="0" /><span
							class="inputInfo">%</span>
						</td>
						<td class="page4yici_td"><input type="text" class="required"
							size="20" value="" /></td>
					</tr>
					<tr>
						<th class="page4yici_th">按揭贷款：</th>
						<td></td>
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