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
	<form method="post" action="pay/saveUpdate"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div id="hello" class="pageFormContent" layoutH="48">
			<table class="formTable" name="">
				<tr>
					<th>供货商编号：</th>
					<td><input type="text" size="25" name="supplier_id" value="${pd.supplier_id }" /></td>
				</tr>
				<tr>
					<th>供货商名称：</th>
					<td><input type="text" size="25" name="supplier_name" value="${pd.supplier_name }" /></td>
				<tr>
					<th>付款方式：</th>
					<td><input type="text" name="pay_type" value="${pd.pay_type }" size="15" /></td>
				</tr>
				<tr>
					<th>付款账户：</th>
					<td><input type="text" name="pay_id" value="${pd.pay_id }" size="25" /></td>
				</tr>
				<tr>
					<th>预付金：</th>
					<td><input type="text" size="10" name="prepay_money" value="${pd.prepay_money }"
					 />
				</tr>
				<tr>
					<th>总金额：</th>
					<td><input type="text" name="sum_money" value="${pd.sum_money }" size="10" /></td>
				</tr>
                 <input type="hidden" name="update_by" value="${sessionScope.username }">
				<tr>
					<th>支付状态：</th>
					<td><select class="" name="pay_state">
							<option value="未支付">未支付</option>
							<option value="预付金已付">预付金已付</option>
							<option value="支付完成">支付完成</option>
					</select></td>
					
				</tr>
				<tr>
					<th>备注：</th>
					<td><textarea name="remark" cols="40" rows="2">${pd.remark }</textarea>
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

