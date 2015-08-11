
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
						<th class="page1_th">租约编码</th>
						<td class="page1_td"><input type="text" class="required "
							value="LS2014060001" />
						</td>
						<th class="page1_th">租赁日期：</th>
						<td class="page1_td"><input type="text"
							class="required date " value="2014-06-16" />
						</td>
					</tr>

					<tr>
						<th class="page1_th">发票币种：</th>
						<td class="page1_td"><input type="text" class="required"
							value="人民币" />
						<th class="page1_th">信用额度：</th>
						<td class="page1_td"><input type="text" class="required "
							value="元" />
						</td>

					</tr>

					<tr>
						<th class="page1_th">还款方式：</th>
						<td class="page1_td"><input type="text" class="required"
							value="等额本息" />
						<th class="page1_th" style="border-bottom-width:0px;">平息率：</th>
						<td class="page1_td" style="border-bottom-width:0px;"><input
							type="text" value="0.00%">
						</td>

					</tr>

					<tr>
						<th class="page1_th">利率类型：</th>
						<td class="page1_td"><input type="text" class="required"
							value="固定利率"></td>
						<th class="page1_th">付款周期：</th>
						<td class="page1_td"><input type="text" class="required"
							value="月结"></td>
					</tr>

					<tr>
						<th class="page1_th">付款期数：</th>
						<td class="page1_td"><input type="text" class="required"
							value="24"></td>
						<th class="page1_th">支付款限额：</th>
						<td class="page1_td"><input type="text" class="required"
							value="5 天 ">
						</td>
					</tr>

					<tr>
						<th class="page1_th">首付款付款日：</th>
						<td class="page1_td"><input type="text" class="required"
							value="2014-04-25"></td>
						<th class="page1_th">提款起息日：</th>
						<td class="page1_td"><input type="text" class="required"
							value="2014-04-25"></td>
					</tr>

					<tr>
						<th class="page1_th">付款周期后几天付款：</th>
						<td class="page1_td"><input type="text" class="required"
							value="5"></td>
						<th class="page1_th">首付款到期日：</th>
						<td class="page1_td"><input type="text" class="required"
							value="2014-04-25"></td>
					</tr>

					<tr>
						<th class="page1_th">罚息率：</th>
						<td class="page1_td" colspan=""><input type="text"
							class="required" value="0.05%"></td>
						<th class="page1_th">利率：</th>
						<td class="page1_td" colspan=""><input type="text"
							class="required" value="11.8%"></td>

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
