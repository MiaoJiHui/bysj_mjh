<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<html>
<head>
<style type="text/css">
.color {
	
}
</style>
</head>
<body>
	<div class="pageContent">
		<form method="post" action="staff/list"
			class="pageForm" onsubmit="return navTabSearch(this);">
			<div class="pageFormContent" layoutH="48">
				<table class="formTable">
					<tr class="color">
						<h3
							style="text-align: left;font-size: 14px;font-style: italic;color: #183152;">请输入检索条件：</h3>
					    <div class="button" style="float: right;text-align: right;margin-top: -23px;">
							<div class="buttonContent">
								<button type="reset">清空重输</button>
							</div>
					</tr>
					<div class="divider">divider</div>
					<tr>
						<th>员工编号：</th>
						<td><input type="text" name="staff_id" size="25" /> <span class="inputInfo">完整的职工号</span>

						</td>
					</tr>

					<tr>
						<th>姓名：</th>
						<td><input type="text" name="staff_name" size="25" /> <span class="inputInfo">全称或关键字</span>

						</td>
					</tr>
					<tr>
						<th>职位：</th>
						<td><input type="text" size="25" name="vacation" /> <span
							class="inputInfo">全称</span></td>
					<tr>
						<th>性别：</th>
						<td><input type="radio" name="sex" value="男" checked />男
							<input type="radio" name="sex" value="女" />女</td>
					</tr>
					</tr>
					<tr>
						<th>部门：</th>
						<td><input type="text" size="25" name="section" /> <span
							class="inputInfo">全称</span></td>
					</tr>
					<tr>
						<th>手机号：</th>
						<td><input type="text" name="phone" size="25" /> <span class="inputInfo">完整的手机号</span>

						</td>
					</tr>
	            <tr>
					<th>Email：</th>
					<td><input type="text" name="email" size="25" /> <span
						class="inputInfo">必填项</span></td>
				</tr>
					<tr>
						<th>家庭住址：</th>
						<td><input type="text" name="home_address" size="30" /> <span class="inputInfo"></span>
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
				</ul>
			</div>
		</form>
	</div>
</body>
</html>

