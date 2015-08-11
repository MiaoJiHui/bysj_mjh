<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<base href="<%=basePath %>">
<style type="text/css">
.formTable th {
	width: 35%;
}

.formTable td {
	width: 65%;
}
</style>
</head>
<div class="pageContent">
	<form method="post" action="supplier/saveAdd"
		class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable" name="supplier_add">

				<tr>
					<th>供应商编号：</th>
					<td><input type="text" size="25" name="supplier_id" /></td>
				</tr>
				<tr>
					<th>供应商名称：</th>
					<td><input type="text" class="required" size="35"
						name="supplier_name" class="lettersonly" /> <span class="inputInfo">必填项</span>
					</td>
				</tr>
				<tr>
					<th>供应商省市：</th>

					<td><select class="" name="supplier_city">
					        <option value="">--请选择--</option>
							<option value="上海" >上海</option>
							<option value="北京">北京</option>
							<option value="天津">天津</option>
							<option value="重庆">重庆</option>
							<option value="浙江">浙江</option>
							<option value="江苏">江苏</option>
							<option value="广东">广东</option>
							<option value="湖南">湖南</option>
							<option value="四川">四川</option>
							<option value="内蒙古">内蒙古</option>
							<option value="新疆">新疆</option>
							<option value="青海">青海</option>
							<option value="安徽">安徽</option>
							<option value="湖北">湖北</option>
							<option value="河南">河南</option>
							<option value="云南">云南</option>
							<option value="海南">海南</option>
							<option value="福建">福建</option>
							<option value="贵州">贵州</option>
							<option value="广西">广西</option>
					</select></td>
				</tr>
				<tr>
					<th>供应商地址：</th>
					<td><input type="text" size="40" name="address"
						 /></td>
				</tr>
				<tr>
					<th>联系人：</th>
					<td><input type="text" class="required" size="15" name="linkman"/> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>联系方式：</th>
					<td><input type="text" class="required" name="phone" size="25" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>E-mail地址：</th>
					<td><input type="text" name="email" size="25" /></td>
				</tr>
				<tr>
					<th>传真：</th>
					<td><input type="text" name="fax" size="25" name="fax" /></td>
				</tr>
				<tr>

					<th>备注：</th>
					<td><textarea style="width:250px;" name="remark" />
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