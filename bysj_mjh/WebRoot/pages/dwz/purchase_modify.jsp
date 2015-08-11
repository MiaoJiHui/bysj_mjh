<%@ page contentType="text/html" pageEncoding="utf-8" %>
<html>
<head>
<style type="text/css">
.formTable th {
	width: 150px;
}

.formTable td {
	width: 180px;
}
</style>
</head>

<div class="pageContent">
	<form method="post" action="purchase/saveUpdate"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this,dialogAjaxDone);">
		<div id="hello" class="pageFormContent" layoutH="48">
			<table class="formTable" name="purchase_modify">

				<tr>
					<th>采购订单号：</th>
					<td><input type="text" size="18" class="required" readonly="true" name="purchase_id" value="${pd.purchase_id }" /> <span
						class="inputInfo">必填项</span></td>
					<th>货品编号：</th>
					<td><input type="text" class="required" size="18" name="goods_id"
						value="${pd.goods_id }" /> <span class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>货品名：</th>
					<td><input type="text" size="15" class="required" name="goods_name"
						value="${pd.goods_name }" /> <span class="inputInfo">必填项</span></td>
					<th>数量：</th>
					<td><input type="text" class="required" name="count" value="${pd.count }" size="10" /> <span
						class="inputInfo">必填项</span></td>
				<tr>
					<th>单价：</th>
					<td><input type="text" class="required" value="${pd.price }" size="10" /> <span
						class="inputInfo">必填项</span></td>
					<th>采购总价：</th>
					<td><input type="text" class="required" name="price_sum" value="${pd.price_sum }" size="10" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
                <input type="hidden" name="update_by" value="${sessionScope.username }">
				<tr>
					<th>供应商编号：</th>
					<td><input type="text" size="18" class="required"
						name="supplier_id" value="${pd.supplier_id }" /> <span class="inputInfo">必填项</span></td>
					<th>供应商名称：</th>
					<td><input type="text" name="supplier_name" value="${pd.supplier_name }" size="25" />
					</td>
				</tr>


				<tr>
					<th>采购员：</th>
					<td><input type="text" size="10" name="purchaser" value="${pd.purchaser } " /></td>
					<th>采购日期：</th>
					<td><input type="text" size="20" name="date" class="datetime" value="${pd.date }" /></td>
				</tr>
				<tr>

					<th>备注：</th>
					<td colspan="3"><textarea name="remark" cols="46" rows="2" >${pd.remark }</textarea>
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

</html>

