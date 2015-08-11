<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<head>
<base href="<%=basePath%>">
</head>
<div class="pageContent">
	<form method="post" action="stock/saveAdd"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable" name="">
				<tr>
					<th>货品编号：</th>
					<td><input type="text" class="required" size="25"
						name="goods_id" /> <span class="inputInfo">必填项</span></td>
				</tr>
				<tr>
					<th>货品名称：</th>
					<td><input type="text" size="15" class="required"
						name="goods_name"/> <span class="inputInfo">必填项</span></td>
				<tr>
					<th>入库量：</th>
					<td><input type="text" class="required" name="in_count" size="10" /> <span
						必填项</span></td>
				</tr>
				<tr>
					<th>出库量：</th>
					<td><input type="text" name="out_count" class="required" size="10" /> <span
						>必填项</span></td>
					</td>
				</tr>
				<tr>
					<th>库存数：</th>
					<td><input type="text" name="remain_count" class="required" size="10" /> <span
						>必填项</span></td>
					</td>
				</tr>
				<tr>

					<th>备注：</th>
					<td><textarea name=remark cols="40" rows="2" />
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