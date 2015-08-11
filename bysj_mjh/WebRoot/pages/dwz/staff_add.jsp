<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<div class="pageContent">
	<form method="post" action="staff/saveAdd"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable" name="staff_add">

				<tr>
					<th>员工编号：</th>
					<td><input type="text" class="required" name="staff_id" size="25" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>姓名：</th>
					<td><input type="text" class="required" name="staff_name" size="10"
						 /> <span class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>职位：</th>
					<td><input type="text" size="15" name="vacation" /></td>
				<tr>
					<th>性别：</th>
					<td><input type="radio" name="sex" value="男" checked />男 <input
						type="radio" name="sex" value="女" />女</td>
				</tr>
				<tr>
					<th>部门：</th>
					<td><input type="text" size="15" name="section" /></td>
				</tr>
				<tr>
					<th>手机号：</th>
					<td><input type="text" class="required" name="phone" size="25" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>Email：</th>
					<td><input type="text" class="" name="email" size="25" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>家庭住址：</th>
					<td><input type="text" name="home_address" size="45" /></td>
				</tr>

				<tr>
					<th>备注</th>
					<td><textarea name="remark" cols="50" rows="2" />
					</td>
				</tr>
			</table>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">保存</button>
						</div>
					</div></li>
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