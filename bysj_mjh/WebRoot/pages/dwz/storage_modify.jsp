<%@ page contentType="java" pageEncoding="utf-8" %>
<html>
<head>
<style type="text/css">
.formTable th {
	width: 130px;
}

.formTable td {
	width: 260px;
}
</style>
</head>

<div class="pageContent">
	<form method="post" action="storage/saveUpdate"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div id="hello" class="pageFormContent" layoutH="48">
			<table class="formTable" name="storage_modify">
				<tr>
					<th>仓库号：</th>
					<td><input type="text" size="25" readonly="true" name="storage_id" value="${pd.storage_id }" /></td>
				</tr>
				<tr>
					<th>仓库名：</th>
					<td><input type="text" size="35" name="storage_name" value="${pd.storage_name }" /></td>
				</tr>
				<tr>
					<th>仓库地址：</th>
					<td><input type="text" size="40" name="address" value="${pd.address }" /></td>
				<tr>
					<th>仓库规格：</th>
					<td><input type="text" name="scale" value="${pd.scale }" size="20" /></td>
				</tr>
				</tr>
				<tr>
					<th>仓库类别：</th>
					<td><select class="" name="type">
					<c:if test="${pd.type == ''}"
							<option value="自有仓库">自有仓库</option>
							<option value="营业仓库">营业仓库</option>
					</select></td>
				</tr>
				<tr>
					<th>仓库负责人：</th>
					<td><input type="text" name="linkman" value="${pd.linkman }" size="15" /></td>
				</tr>
				<tr>
					<th>联系方式：</th>
					<td><input type="text" name="linkman_phone" value="${pd.linkman_phone }" size="15" /></td>
				</tr>
				<tr>

					<th>备注：</th>
					<td><textarea name="remark" cols="40" rows="2" >${pd.remark }</textarea>
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

