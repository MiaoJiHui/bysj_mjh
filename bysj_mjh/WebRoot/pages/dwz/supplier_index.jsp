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
		<form method="post" action="supplier/list?1=1"
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
						<th>供应商编号：</th>
						<td><input type="text" size="25" name="supplier_id" id="supplier_id" /> <span
							class="inputInfo">完整的供应商编号</span></td>
					</tr>
					<tr>
						<th>供应商名称：</th>
						<td><input type="text" size="25" name="supplier_name" id="supplier_name"
							class="lettersonly" /> <span class="inputInfo">关键字或全称</span>
						</td>
					</tr>
					<tr>
						<th>供应商省市：</th>
                         <!-- class="combox" -->
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
						<td><input type="text" size="25" name="address"
							class="alphanumeric" /> <span class="inputInfo">关键字或全称</span>
						</td>
					</tr>
					<tr>
						<th>联系人：</th>
						<td><input type="text" name="linkman" size="25" /> <span class="inputInfo">全称</span>
						</td>
					</tr>
					<tr>
						<th>联系方式：</th>
						<td><input type="text" size="25" name="phone"/> <span class="inputInfo">手机或电话</span>
						</td>
					</tr>
					<tr>
						<th>E-mail地址：</th>
						<td><input type="text" size="25" name="email" /> <span
							class="inputInfo">完整的email地址</span></td>
					</tr>
					<tr>
						<th>传真：</th>
						<td><input type="text" size="25" name="fax" /> <span
							class="inputInfo">完整的fax号码</span></td>
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

