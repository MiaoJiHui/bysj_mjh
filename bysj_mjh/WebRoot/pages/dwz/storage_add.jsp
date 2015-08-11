<%@page contentType="text/html" pageEncoding="utf-8" %>
<head>
<style type="text/css">
.formTable th {
	width: 130px;
}

.formTable td {
	width: 320px;
}
</style>
</head>
<div class="pageContent">
	<form method="post" action="storage/saveAdd"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable" name="storage_add">

				<tr>
					<th>仓库号：</th>
					<td><input type="text" class="required" name="storage_id" size="25" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>仓库名：</th>
					<td><input type="text" class="required" name="storage_name" size="35"
						class="lettersonly" /> <span class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>仓库地址：</th>
					<td><input type="text" class="required" name="address" size="40"
						class="lettersonly" /> <span class="inputInfo">必填项</span></td>
				<tr>
					<th>仓库规格：</th>
					<td><input type="text" name="scale" size="20" /></td>
				</tr>
				</tr>

				<tr>
					<th>仓库类别：</th>
					<td><select class="" name="type">
							<option value="自有仓库">自有仓库</option>
							<option value="营业仓库">营业仓库</option>
					</select></td>
				</tr>

				<tr>
					<th>仓库负责人：</th>
					<td><input type="text" class="required" name="linkman" size="15" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>联系方式：</th>
					<td><input type="text" class="required" name="linkman_phone" size="15" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>备注：</th>
					<td><textarea  name="remark" cols="45" rows="2" />
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