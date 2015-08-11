
<div class="pageContent">
	<form method="post" action="supplier_information.html" class="pageForm"
		onsubmit="return navTabSearch(this);">
		<div class="pageFormContent" layoutH="58">
			<table class="formTable">
				<tr class="color">
					<h3>请输入检索条件：</h3>
				</tr>


				<div class="divider">divider</div>


				<tr>
					<th>供货商编号：</th>
					<td><input type="text" size="25" class="lettersonly" /></td>
				</tr>
				<tr>
					<th>供货商名称：</th>
					<td><input type="text" size="25" class="lettersonly" /></td>
				<tr>
					<th>付款方式：</th>
					<td><select class="combox">
							<option value="进行中">进行中</option>
							<option value="预付金已付">预付金已付</option>
							<option value="支付完成">支付完成</option>
					</select></td>
				</tr>


				<tr>
					<th>付款账户：</th>
					<td><input type="text" size="25" /></td>
				</tr>
				<tr>
					<th>预付金：</th>
					<td><input type="text" size="10" class="lettersonly" />
				</tr>
				<tr>
					<th>总金额：</th>
					<td><input type="text" size="10" /></td>
				</tr>

				<tr>
					<th>支付状态：</th>
					<td><input type="text" size="15" /></td>
				</tr>






			</table>
		</div>


		<div class="formBar">
			<ul>
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">开始检索</button>
						</div>
					</div>
				</li>
				<li><div class="button">
						<div class="buttonContent">
							<button type="reset">清空重输</button>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</form>
</div>


