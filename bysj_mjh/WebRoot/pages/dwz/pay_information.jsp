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
<%-- <form id="pagerForm" method="post" action="bill_information.html">
	<input type="hidden" name="status" value="${param.status}"> <input
		type="hidden" name="keywords" value="${param.keywords}" /> <input
		type="hidden" name="pageNum" value="1" /> <input type="hidden"
		name="numPerPage" value="${model.numPerPage}" /> <input type="hidden"
		name="orderField" value="${param.orderField}" />
</form> --%>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="pay/list"
		method="post">
		<div class="searchBar">

			<table class="searchContent">
				<tr>

					<td>支付状态：</td>
					<td><select class="" name="pay_state">
					        <option value="">--请选择--</option>
							<option value="未支付">未支付</option>
							<option value="预付金已付">预付金已付</option>
							<option value="支付完成">支付完成</option>
					</td>
				</tr>
			</table>
			<div class="subBar">
				<ul>
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">检索</button>
							</div>
						</div></li>
					<!-- 	<li><a class="button" href="pay_index.html" target="dialog"
						height="355" width="438" mask="true" title="查询框"><span>高级检索</span>
					</a> -->
					</li>
				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="pay/add" target="dialog" height="400" mask="true"
				width="525"><span>添加</span> </a></li>
			<li><a class="delete" href="pay/delete?id={sid_user}"
				target="ajaxTodo" title="确定要删除吗?"><span>删除</span> </a></li>
			<li><a class="edit" href="pay/update?id={sid_user}"
				target="dialog" height="400" width="525"  mask="true"><span>修改</span> </a></li>
			<li class="line">line</li>
			<li><a class="icon" href="pay/excelExport" target="ajaxTodo"
				title="确定要导出这些记录吗?"><span>导出EXCEL</span> </a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="40">序号</th>

				<th width="100">供应商编号</th>
				<th width="100">供应商名称</th>
				<th width="80">付款方式</th>
				<th width="100">付款账户</th>
				<th width="50">预付金</th>
				<th width="50">总金额</th>
				<th width="50">支付状态</th>
				<th width="80">最后更新人</th>
				<th width="120">备注</th>

			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${not empty list }">
					<c:forEach items="${list }" var="bean" varStatus="vs">

						<tr target="sid_user" rel="${bean.id }">
							<td>${vs.index+1 }</td>
							<td>${bean.supplier_id }</td>
							<td>${bean.supplier_name }</td>
							<td>${bean.pay_type }</td>
							<td>${bean.pay_id }</td>
							<td>${bean.prepay_money }</td>
							<td>${bean.sum_money }</td>
							<td>${bean.pay_state }</td>
							<td>${bean.update_by}</td>
							<td>${bean.remark }</td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>


		</tbody>
	</table>
	<div class="panelBar">
		<div class="pages">
			<span>显示</span> <select class="combox" name="numPerPage"
				onchange="navTabPageBreak({numPerPage:this.value})">
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="200">200</option>
			</select> <span>条，共${totalCount}条</span>
		</div>

		<div class="pagination" targetType="navTab" totalCount="200"
			numPerPage="20" pageNumShown="10" currentPage="1"></div>

	</div>
</div>
