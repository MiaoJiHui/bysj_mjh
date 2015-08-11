<head>
<style>
.page4add_th {
	width: 120px;
}

.page4add_td {
	width: 250px;
}
</style>
</head>
<div class="pageContent">
	<form method="post" action="demo/common/ajaxDone.html"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable">
				<tr>
					<th class="page4add_th">期数：</th>
					<td class="page4add_td"><input class="required" type="text"
						size="20" value="" /></td>
				</tr>
				<tr>
					<th class="page4add_th">期数：</th>
					<td class="page4add_td"><input type="radio" name="qishu"
						value="只付利息" checked>只付利息</input> <input
						type="radio" name="qishu" value="固定本金">固定本金</input>
						<input type="radio" name="qishu" value="固定租金">固定租金</input>
					</td>
				</tr>
				<tr>
					<th class="page4add_th">金额：</th>
					<td class="page4add_td"></td>
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
</html>