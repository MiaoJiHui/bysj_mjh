<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<head>
<base href="<%=basePath %>">
</head>


<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);"
		action="storage/list" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>仓库号：<input type="text" size="15" name="storage_id"  /></td>
					<td>仓库名：<input type="text" size="20" name="storage_name" /></td>
					<td>仓库类别：
					<select class="" name="type">
					        <option value="">--请选择--</option>
							<option value="自有仓库">自有仓库</option>
							<option value="营业仓库">营业仓库</option>
					</select></td>
					<td>仓库负责人：<input type="text" size="10" name="linkman" /></td>


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
					<li><a class="button" href="storage/search"
						target="dialog" height="400" width="430" mask="true"
						title="查询框"><span>高级检索</span>
					</a>
					</li>
				</ul>
			</div>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="storage/add" target="dialog"
				mask="true" height="370" width="488"><span>添加</span>
			</a>
			</li>
			<li><a class="delete"
				href="storage/delete?storage_id={sid_user}" target="ajaxTodo"
				title="确定要删除吗?"><span>删除</span>
			</a>
			</li>
			<li><a class="edit" href="storage/update?storage_id={sid_user}"
				mask="true" target="dialog" height="370" width="488"><span>修改</span>
			</a>
			</li>
			<li class="line">line</li>
			<li><a class="icon" href="storage/excelExport" ><span>导出EXCEL</span>
			</a>
			</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="40">序号</th>
				<th width="80">仓库号</th>
				<th width="100">仓库名</th>
				<th width="150">仓库地址</th>
				<th width="80">仓库规格</th>
				<th width="80">仓库类别</th>
				<th width="70">仓库负责人</th>
				<th width="80">联系电话</th>
				<!--<th width="80" align="center">供应商</th>-->
				<th width="150">备注</th>


			</tr>
		</thead>
		<tbody>
		  <c:choose>
		    <c:when test="${not empty list }">
		      <c:forEach items="${list }" var="bean" varStatus="vs">
				<tr target="sid_user" rel="${bean.storage_id}">
					<td>${vs.index+1 }</td>
					<td>${bean.storage_id }</td>
					<td>${bean.storage_name }</td>
					<td>${bean.address }</td>
					<td>${bean.scale }</td>
					<td>${bean.type }</td>
					<td>${bean.linkman }</td>
					<td>${bean.linkman_phone }</td>
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
