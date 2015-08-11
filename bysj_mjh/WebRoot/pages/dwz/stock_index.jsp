
<div class="pageContent">
	<form method="post" action="supplier_information.html" class="pageForm"
		onsubmit="return navTabSearch(this);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable">
				<tr class="color">
					<h3>请输入检索条件：</h3>
				</tr>


				<div class="divider">divider</div>

				<tr>
					<th>货品编号：</th>
					<td><input type="text" class="required" size="25"
						class="lettersonly" /> <span class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>货品名称：</th>
					<td><input type="text" size="15" class="required"
						class="lettersonly" /> <span class="inputInfo">必填项</span></td>
				<tr>
					<th>入库量：</th>
					<td><input type="text" class="required" size="10" /> <span
						class="inputInfo">必填项</span></td>
				</tr>


				<tr>
					<th>出库量：</th>
					<td><input type="text" class="required" size="10" /> <span
						class="inputInfo">必填项</span></td>

					</td>
				</tr>
				<tr>
					<th>库存数：</th>
					<td><input type="text" class="required" size="10" /> <span
						class="inputInfo">必填项</span></td>
					</td>
				</tr>
				<tr>
					<th>出库时间：</th>
					<td><input type="text" size="25" />
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


