<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String username = (String) request.getSession().getAttribute("username"); 
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>changePwd</title>
</head>
<body>
  
	<div class="pageContent">

		<form method="post" action="header/changePwd"
			class="pageForm required-validate"
			onsubmit="return validateCallback(this, dialogAjaxDone)">
			<div class="pageFormContent" layoutH="48">

				<div class="unit">
				    
				    <input type="hidden" name="username" value="${username }">
					<label>旧密码：</label> <input type="password" name="oldPassword"
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

	</div>

</body>
</html>
