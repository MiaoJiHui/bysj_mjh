<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String username = (String) request.getSession().getAttribute(
			"username");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>新增用户</title>
</head>
<body>

	<%-- <div class="pageContent">

		<form method="post" action="header/addUser"
			class="pageForm required-validate"
			onsubmit="return validateCallback(this, dialogAjaxDone)">
			<div class="pageFormContent" layoutH="48">

				<div class="unit">
				    
				    <input type="hidden" name="username" value="${username }">
					<label>用户名：</label> <input type="password" name="oldPassword"
						size="30" minlength="6" maxlength="20" class="required" />
				</div>
				<div class="unit">
					<label>新密码：</label> <input type="password" id="cp_newPassword"
						name="newPassword" size="30" minlength="6" maxlength="20"
						class="required alphanumeric" />
				</div>
				<div class="unit">
					<label>重复输入新密码：</label> <input type="password" name="rnewPassword"
						size="30" equalTo="#cp_newPassword" class="required alphanumeric" />
				</div>

			</div>
			<div class="formBar">
				<ul>
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">提交</button>
							</div>
						</div>
					</li>
					<li><div class="button">
							<div class="buttonContent">
								<button type="button" class="close">取消</button>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</form>

	</div> --%>
	<form onsubmit="return dialogSearch(this);"
		action="header/adminUser?1=1" name="pageForm" id="pageForm"
		method="post">
		<div class="pageHeader">
			<div class="searchBar">
				<table class="searchContent" style="margin-bottom:3px;">
					<tr>
						<td>用户名：<input type="text" name="username" id="username"
							value="" size="15" />
						</td>
						<td style="padding-left:20px;">
							<ul>
								<li><div class="buttonActive">
										<div class="buttonContent">
											<button type="submit">刷新</button>
										</div>
									</div>
								</li>
							</ul>

							</div>
						</td>
					</tr>
				</table>
	</form>
	<form action="" method="post">
		<div class="pageContent">
			<div class="panelBar">
				<ul class="toolBar">
				  <li><a class="add" href="header/add" target="dialog"
						height="220" mask="true" width="400"><span>添加</span> </a></li>
					<c:if test="${sessionScope.limitUser eq 'admin' }">
					
						<li><a class="delete" href="header/delete?id={sid_user}"
							target="ajaxTodo" title="确定要删除吗?"><span>删除</span> </a></li>
						<!-- <li><a class="edit" href="header/update?id={sid_user}"
							target="dialog" mask="true" height=220 width="400"><span>修改</span>
						</a></li> -->
                       
					</c:if>
					<li class="line">line</li>
				</ul>
			</div>
			<table class="table" width="100%" layoutH="90">
				<thead>
					<tr>
						<th width="40">序号</th>
						<th width="80">用户名</th>
						<th width="80">密码</th>
						<th width="80">权限</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${not empty list }">
							<c:forEach items="${list }" var="bean" varStatus="vs">
								<tr target="sid_user" rel="${bean.id }">
									<td>${vs.index+1}</td>
									<td>${bean.username }</td>
									<td><c:if test="${sessionScope.limitUser eq 'admin' }">${bean.password }</c:if>
										<c:if test="${sessionScope.limitUser eq 'guest' }">
							   ********
							   </c:if></td>
									<td>${bean.limitUser }</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>

				</tbody>
			</table>

		</div>
		<div class="formBar">
			<ul>
				<li><div class="button">
						<div class="buttonContent">
							<button type="button" class="close">取消</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>
</body>
</html>
