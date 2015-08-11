<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>

<div class="pageContent">
	<form method="post" action="in/saveUpdate"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div id="hello" class="pageFormContent" layoutH="48">
			<table class="formTable" name="">
				<tr>
					<th>货品编号：</th>
					<td><input type="text" size="25" name="goods_id" value="${pd.goods_id }" /></td>
				</tr>
				<tr>
					<th>货品名称：</th>
					<td><input type="text" size="15" name="goods_name" value="${pd.goods_name }" /></td>
				<tr>
					<th>数量：</th>
					<td><input type="text" name="count" value="${pd.count }" size="10" /></td>
				</tr>
				<tr>
					<th>入货仓库号：</th>
					<td><input type="text" name="storage_id" value="${pd.storage_id }" size="25" /></td>
				</tr>
				<tr>
					<th>仓库地址：</th>
					<td><input type="text" size="25" name="storage_address" value="${pd.storage_address }"/>
				</tr>
				<tr>
					<th>入库日期：</th>
					<td><input type="text" size="15" class="date" name="in_date" value="${pd.in_date }"  />
						<span class="inputInfo">必填项</span>
					</td>
				</tr>
				<tr>
					<th>仓库负责人：</th>
					<td><input type="text" name="charge_man" value="${pd.charge_man }" size="10" /></td>
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

