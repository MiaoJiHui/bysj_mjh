<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<base href="<%=basePath%>">
<!-- onsubmit="return navTabSearch($('#userForm'));return validateCallback(this) -->
<style type="text/css">
#greyT th td {
	color: #a2bac0;
}

#greyT th textarea {
	color: #a2bac0;
}
</style>
</head>
<div class="pageContent">
	<form method="post" action="goods/saveUpdate?3=3"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable" style="" id="greyT">
				<tbody>
					
								<tr>
									<th style="width:120px;">货品编号：</th>
									<td style="width:150px;"><input type="text"
										name="goods_id" readonly="true" alt="请输入货品编号"
										value="${pd.goods_id }" /> <span class="inputInfo"></span>
									</td>
									<th style="width:120px;">货品名称：</th>
									<td style="width:150px;"><input name="goods_name"
										class="required" type="text" size="" value="${pd.goods_name }"
										alt="请输入货品名称" /><span class="inputInfo">必填项</span>
									</td>
								</tr>
                                 <input type="hidden" name="update_by" value="${sessionScope.username }">
								<tr>
									<th style="width:120px;">货品类别：</th>
									<td style="width:150px;">
									<select name="goods_type" id="goods_type">
<!-- 									      <c:if test="${bean eq pd.goods_type }">selected</c:if> -->
											<c:forEach items="${list}" var="bean">
											     <c:choose>
											        <c:when  test="${pd.goods_type eq bean}">
											          <option value="${bean}" selected>
											             ${bean}
											          </option>  
											        </c:when>  
											        <c:otherwise>
											            <option value="${bean}">
											             ${bean}
											          </option>  
											        </c:otherwise>
											    </c:choose>
											</c:forEach>
											  
									</select>
									</td>
									<th style="width:120px;">规格型号：</th>
									<td style="width:150px;"><input type="text"
										name="goods_scale" id="goods_scale" value="${pd.goods_scale }"
										size="" />
									</td>
								</tr>

								<tr>
									<th style="width:120px;">单位：</th>
									<td style="width:150px;"><input type="text"
										name="goods_unit" id="goods_unit" value="${pd.goods_unit }"
										size="" />
									</td>
									<th style="width:120px;">仓库：</th>
									<td style="width:150px;"><input name="storage"
										id="storage" type="text" size="" value="${pd.storage }" />
									</td>
								<%-- 	<th style="width:120px;">数量：</th>
									<td style="width:150px;"><input type="text" name="count"
										id="count" value="${pd.count }" size="" alt="0" />
									</td> --%>
								</tr>

								<tr>
									<th style="width:120px;">供应商：</th>
									<td style="width:150px;"><input type="text"
										class="required" size="" name="goods_supplier"
										id="goods_supplier" value="${pd.goods_supplier }"> <span
										class="inputInfo">必填项</span>
									</td>
									<th style="width:120px;">价格：</th>
									<td style="width:150px;"><input name="price"
										 type="text" size="" alt="请输入数字"
										value="${pd.price }" />
									</td>
								</tr>
						<%-- 		<tr>
									<th style="width:120px;">仓库：</th>
									<td style="width:150px;"><input name="storage"
										id="storage" type="text" size="" value="${pd.storage }" />
									</td>
									<th style="width:120px;">入库时间：</th>
									<td style="width:150px;"><input type="text" name="in_date"
										id="in_date" class="date" size="" value="${pd.in_date }" /><a
										class="inputDateButton" href="javascript:;">选择</a></td>
								</tr> --%>
								<tr>
									<th style="width:147px;">备注：</th>
									<td style="" colspan="3"><textarea name="remark"
											id="remark" cols="80" rows="3">${pd.remark }</textarea>
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
