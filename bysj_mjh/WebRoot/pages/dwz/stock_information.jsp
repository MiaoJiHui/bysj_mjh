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
	<form onsubmit="return navTabSearch(this);" action="stock/list"
		method="post">
		<div class="searchBar">

			<table class="searchContent">
				<tr>

					<td>货品编号：<input type="text" size="10" name="goods_id" />
					</td>
					<td>货品名称：<input type="text" size="10" name="goods_name" /></td>

				</tr>
			</table>
			<div class="subBar">
				<ul>
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">检索</button>
							</div>
						</div></li>
					<!-- <li><a class="button" href="stock_index.html" target="dialog"
						height="355" width="438" mask="true" title="查询框"><span>高级检索</span>
					</a>
					</li> -->
				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="stock/add" mask="true" target="dialog"
				height="350" width="425"><span>添加</span> </a></li>
			<li><a class="delete" href="stock/delete?id={sid_user}"
				target="ajaxTodo" title="确定要删除吗?"><span>删除</span> </a></li>
			<li><a class="edit" href="stock/update?id={sid_user}"
				mask="true" target="dialog" height="350" width="425"><span>修改</span>
			</a></li>
			<li class="line">line</li>
			<li><a class="icon" href="stock/excelExport" target="ajaxTodo"
				title="确定要导出这些记录吗?"><span>导出EXCEL</span> </a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="40">序号</th>

				<th width="100">货品编号</th>
				<th width="80">货品名称</th>
				<th width="50">入库量</th>
				<th width="50">出库量</th>
				<th width="50">库存数</th>
				<!--<th width="80" align="center">供应商</th>-->
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
							<td>${bean.in_count }</td>
							<td>${bean.out_count }</td>
							<td>${bean.remain_count }</td>
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
