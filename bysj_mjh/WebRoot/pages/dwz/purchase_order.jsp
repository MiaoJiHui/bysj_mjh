<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<head>
<base href="<%=basePath %>">
</head>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="purchase/list"
		method="post">
		<div class="searchBar">


			<table class="searchContent">
				<tr>
					<td>采购订单号：<input type="text" size="15" name="purchase_id" />
					</td>
					<td>货品名：<input type="text" size="10" name="goods_name" />
					</td>
					<td>供应商编号：<input type="text" size="15" name="supplier_id" />
					</td>
					<td>采购员：<input type="text" size="8" name="purchaser" />
					</td>
					<td>采购日期：<input type="text" class="date" name="date" size="8" />
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
					<li><a class="button" href="purchase/search" target="dialog"
						height="350" width="700" mask="true" title="查询框"><span>高级检索</span>
					</a></li>
				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="purchase/add" target="dialog"
			mask="true" 	height="300" width="700"><span>添加</span> </a></li>
			<li><a class="delete"
				href="purchase/delete?purchase_id={sid_user}" target="ajaxTodo"
				title="确定要删除吗?"><span>删除</span> </a></li>
			<li><a class="edit"
				href="purchase/update?purchase_id={sid_user}" mask="true"  target="dialog"
				height="320" width="720"><span>修改</span> </a></li>
			<li class="line">line</li>
			<li><a class="icon" href="purchase/excelExport"
				target="ajaxTodo" title="确定要导出这些记录吗?"><span>导出EXCEL</span> </a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="40">序号</th>
				<th width="80">采购订单</th>
				<th width="60">货品编号</th>
				<th width="80">货品名</th>
				<th width="40">单价</th>
				<th width="40">数量</th>
				<th width="50">采购总价</th>
				<th width="80">供应商编号</th>
				<th width="120">供应商名称</th>
				<!--<th width="80" align="center">供应商</th>-->
				<th width="60">采购员</th>
				<th width="60">采购日期</th>
				<th width="60">最后修改人</th>
				<th width="100">备注</th>

			</tr>
		</thead>
		<tbody>
			  <c:choose>
		    <c:when test="${not empty list }">
		      <c:forEach items="${list }" var="bean" varStatus="vs">
				<tr target="sid_user" rel="${bean.purchase_id}">
							<td>${vs.index+1 }</td>
							<td>${bean.purchase_id }</td>
							<td>${bean.goods_id }</td>
							<td>${bean.goods_name }</td>
							<td>${bean.price }</td>
							<td>${bean.count }</td>
							<td>${bean.price_sum }</td>
							<td>${bean.supplier_id }</td>
							<td>${bean.supplier_name }</td>
							<td>${bean.purchaser }</td>
							<td>${bean.date }</td>
							<td>${bean.update_by }</td>
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
