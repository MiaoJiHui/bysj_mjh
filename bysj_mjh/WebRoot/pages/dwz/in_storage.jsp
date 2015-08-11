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
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="in/list"
		method="post">
		<div class="searchBar">

			<table class="searchContent">
				<tr>
				
					<td>货品编号：<input type="text" size="10" name="goods_id" /></td>
					<td>货品名称：<input type="text" size="10" name="goods_name" />
					</td>
					<td>入货仓库号：<input type="text" size="15" name="storage_id" /></td>
					<td>入库日期：<input type="text" name="in_date" class="date" /></td>
					<td>仓库负责人：<input type="text" size="8" name="charge_man" /></td>

				</tr>
			</table>
			<div class="subBar">
				<ul>
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">检索</button>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="in/add" target="dialog" height="385" mask="true"
				width="425"><span>添加</span> </a>
			</li>
			<li><a class="delete" href="in/delete?id={sid_user}"
				target="ajaxTodo" title="确定要删除吗?"><span>删除</span> </a>
			</li>
			<li><a class="edit" href="in/update?id={sid_user}"
				target="dialog" mask="true" height="385" width="425"><span>修改</span> </a>
			</li>
			<li class="line">line</li>
			<li><a class="icon" href="in/excelExport" target="ajaxTodo"
				title="确定要导出这些记录吗?"><span>导出EXCEL</span> </a>
			</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="40">序号</th>
				<th width="80">货品编号</th>
				<th width="80">货品名称</th>
				<th width="80">数量</th>
				<th width="50">入货仓库号</th>
				<th width="150">仓库地址</th>
				<th width="100">入库日期</th>
				<th width="50">仓库负责人</th>
				<th width="120">备注</th>

			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${not empty list }">
					<c:forEach items="${list }" var="bean" varStatus="vs">
						<tr target="sid_user" rel="${bean.id }">
							<td>${vs.index+1 }</td>
							<td>${bean.goods_id }</td>
							<td>${bean.goods_name }</td>
							<td>${bean.count }</td>
							<td>${bean.storage_id }</td>
							<td>${bean.storage_address}</td>
							<td>${bean.in_date }</td>
							<td>${bean.charge_man }</td>
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
