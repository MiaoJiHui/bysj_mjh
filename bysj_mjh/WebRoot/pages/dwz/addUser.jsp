<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<head>
<base href="<%=basePath%>">
<!-- onsubmit="return navTabSearch($('#userForm'));return validateCallback(this) -->

</head>
<div class="pageContent">
	<form method="post" action="header/saveAdd?2=2"
		class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable" style="">
				<tbody>
					<tr>
						<th style="width:120px;">用户名：</th>
						<td style="width:150px;">
						<input type="text" name="username" class="required" alt="请输入用户名 "/> 
							<span class="inputInfo">必填项</span>
						</td>
					</tr>
					<tr>
						<th style="width:120px;">密码：</th>
						<td style="width:150px;"><input name="password" id="cp_newPassword"
							class="required alphanumeric"  type="password" size="" value=""
							alt="请输入密码" /> <span class="inputInfo">必填项</span>
						</td>
					</tr>
					<tr>
						<th style="width:120px;">重复密码：</th>
						<td style="width:150px;"><input name="password2" id="pwd2"
							equalTo="#cp_newPassword" class="required alphanumeric" type="password" size="" value=""
							alt="请输入密码" /> <span class="inputInfo">必填项</span>
						</td>
					</tr>

					<tr>
						<th style="width:120px;">用户权限：</th>
						<td style="width:150px;">
						<select name="limitUser" id="limitUser" >
						<c:if test="${sessionScope.limitUser eq 'admin' }">
						
								   <option value="">--请选择--</option>
								   <option value="admin">admin</option>
								   <option value="guest">guest</option>
					    </c:if>
					    <c:if test="${sessionScope.limitUser eq 'guest' }">
					        <option value="guest">guest</option>
					    </c:if>
						</select>
						</td>
					</tr>

				
				</tbody>
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
							<button type="button" class="close" id="goods_close">关闭</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>
</div>

</html>
