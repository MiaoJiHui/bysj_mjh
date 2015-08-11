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
	<form method="post" action="goods/saveAdd?2=2"
		class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable" style="">
				<tbody>
					<tr>
						<th style="width:120px;">货品编号：</th>
						<td style="width:150px;"><input type="text" name="goods_id" 
							class="required" alt="请输入货品编号" /> 
							<span class="inputInfo">必填项</span>
						</td>
						<th style="width:120px;">货品名称：</th>
						<td style="width:150px;"><input name="goods_name"
							class="required" type="text" size="" value=""
							alt="请输入货品名称" /> <span class="inputInfo">必填项</span>
						</td>
					</tr>

					<tr>
						<th style="width:120px;">货品类别：</th>
						<td style="width:150px;">
						<select name="select" id="goods_select"
							style="position:absolute;left:180px;top:45px;width:110px;height:20px;
							color:#183152;font-family: 'Microsoft YaHei',Arial,sans-serif;"
							onchange="goods_type.value=select.value;goods_type.select()" >
								<c:forEach items="${strList }" var="bean">
								   <option value="${bean }">${bean }</option>
								</c:forEach>
						</select>
						<input type="text" name="goods_type" id="goods_type" style="position:absolute;left:180px;top:45px;width:85px;height:14px">
						</td>
						<th style="width:120px;">规格型号：</th>
						<td style="width:150px;"><input type="text" name="goods_scale" id="goods_scale" size="" />
						</td>
					</tr>

					<tr>
						<th style="width:120px;">单位：</th>
						<td style="width:150px;"><input type="text" name="goods_unit" id="goods_unit" size="" />
						</td>
						<th style="width:120px;">仓库：</th>
									<td style="width:150px;"><input name="storage"
										id="storage" type="text" size="" value="${pd.storage }" />
									</td>
					<!-- 	<th style="width:120px;">数量：</th>
						<td style="width:150px;"><input type="text" name="count" id="count" size="" alt="0" />
						</td> -->
					</tr>

					<tr>
						<th style="width:120px;">供应商：</th>
						<td style="width:150px;"><input type="text" class="required"
							size="" value="" name="goods_supplier" id="goods_supplier"> <span
							class="inputInfo">必填项</span>
						</td>
						<th style="width:120px;">价格：</th>
						<td style="width:150px;"><input name="price"
							class="digits" type="text" size="" alt="请输入数字" />
						</td>
					</tr>
					<!-- <tr>
						<th style="width:120px;">仓库：</th>
						<td style="width:150px;"><input name="storage" id="storage" type="text"
							size="" value="" />
						</td>
						<th style="width:120px;">入库时间：</th>
						<td style="width:150px;"><input type="text" name="in_date" id="in_date"
							class="date" size="" /><a class="inputDateButton"
							href="javascript:;">选择</a></td>
					</tr> -->
					<input type="hidden" name="update_by" value="${sessionScope.username }">
					<tr>
						<th style="width:147px;">备注：</th>
						<td style="" colspan="3"><textarea name="remark" id="remark" cols="80"
								rows="3"/>
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
