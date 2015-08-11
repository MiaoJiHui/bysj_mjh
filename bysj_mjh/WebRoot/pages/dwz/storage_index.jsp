<%@page contentType="text/html" pageEncoding="utf-8" %>
<html>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<head>
<base href="<%=basePath %>">
</head>
<body>
	<div class="pageContent">
		<form method="post" action="storage/list?1=1"
			class="pageForm" onsubmit="return navTabSearch(this);">
			<div class="pageFormContent" layoutH="48">
				<table class="formTable">
					<tr class="color">
						<h3
							style="height:20px;line-height: 20px;text-align: left;font-size: 14px;font-style: italic;color: #183152;">请输入检索条件：</h3>
							<div class="button" style="float: right;text-align: right;margin-top: -23px;">
							<div class="buttonContent">
								<button type="reset">清空重输</button>
							</div>
						</div>
					</tr>
					<div class="divider">divider</div>
					<tr>
						<th>仓库编号：</th>
						<td><input type="text" size="25" name="storage_id" id="storage_id" /> <span
							class="inputInfo">完整的仓库编号</span></td>
					</tr>
					<tr>
						<th>仓库名称：</th>
						<td><input type="text" size="25" name="storage_name" id="storage_name"
							class="lettersonly" /> <span class="inputInfo">关键字或全称</span>
						</td>
					</tr>
					<tr> 
					    <th>仓库地址：</th>
					    <td>
					        <input type="text" size="25" name="address" id="address" /><span class="inputInfo">关键字或全称</span>
					    </td>
					</tr>
					<tr>
						<th>仓库规格：</th>
						<td><input type="text" size="25" name="scale"
							class="alphanumeric" /> <span class="inputInfo">关键字或全称</span>
						</td>
					</tr>
					<tr>
						<th>仓库类别：</th>
                         <!-- class="combox" -->
						<td><select class="" name="type">
						        <option value="">--请选择--</option>
								<option value="自有仓库" >自有仓库</option>
								<option value="营业仓库">营业仓库</option>
						</select></td>
					</tr>
					
					<tr>
						<th>仓库负责人：</th>
						<td><input type="text" name="linkman" size="25" /> <span class="inputInfo">全称</span>
						</td>
					</tr>
					<tr>
						<th>联系方式：</th>
						<td><input type="text" size="25" name="linkman_phone"/> <span class="inputInfo">手机或电话</span>
						</td>
					</tr>
					<tr>
						<th>备注：</th>
						<td><input type="text" size="25" name="r" /> <span
							class="inputInfo"></span></td>
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
					<li><div class="button">
						<div class="buttonContent">
							<button type="button" class="close" id="supplier_id">关闭</button>
						</div>
					</div>
					</li>
				</ul>
			</div>
		</form>
	</div>
</body>
</html>

