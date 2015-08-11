<%@ page contentType="text/html" pageEncoding="utf-8" %>
<div class="pageContent">
	<form method="post" action="purchase/list" class="pageForm"
		onsubmit="return navTabSearch(this);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable">
				<tr class="color">
					<h3>请输入检索条件：</h3>
				</tr>


				<div class="divider">divider</div>

				<tr>
				<tr>
					<th>采购订单号：</th>
					<td><input type="text" size="18" name="purchase_id" class="required" /> <span
						class="inputInfo">必填项</span></td>
					<th>货品编号：</th>
					<td><input type="text" class="required" size="18" 
						name="goods_id" /> <span class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>货品名：</th>
					<td><input type="text" size="15" class="required"
						name="goods_name" /> <span class="inputInfo">必填项</span></td>
					<th>单价：</th>
					<td><input type="text" class="required" name="price" size="10" /> <span
						class="inputInfo">必填项</span></td>
				<tr>
					<th>数量：</th>
					<td><input type="text" class="required" name="count" size="10" /> <span
						class="inputInfo">必填项</span></td>
					<th>采购总价：</th>
					<td><input type="text" class="required" name="price_sum" size="10" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>供应商编号：</th>
					<td><input type="text" size="18" class="required"
						name="supplier_id" /> <span class="inputInfo">必填项</span></td>
					<th>供应商名称：</th>
					<td><input type="text" size="25" name="supplier_name" />
					</td>
				</tr>
				<tr>
					<th>采购员：</th>
					<td><input type="text" size="10" name="purchaser" /></td>
					<th>采购日期：</th>
					<td><input type="text" size="20" class="date" name="date" /></td>
				</tr>

				<tr>
					<th>备注：</th>
					<td colspan="3"><textarea name="remark" cols="46" rows="2" />
					</td>
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


