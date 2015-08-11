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
	<form onsubmit="return navTabSearch(this);"
		action="staff/list" method="post">
		<div class="searchBar">

			<table class="searchContent">
				<tr>
					<td>员工编号：<input type="text" name="staff_id" /></td>
					<td>姓名：<input type="text" size="15" name="staff_name" />
					</td>

					<td>职位：<input type="text" size="15"
						name="vacation" /></td>

					<td>部门：<input type="text" name="section" size="10" /></td>
					<td>性&nbsp;&nbsp;别：<input type="radio" name="sex"
						value="男" checked />男 <input type="radio" name="sex"
						value="女" />女</td>

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
					<li><a class="button" href="staff/search" target="dialog"
						height="400" width="455" mask="true" title="查询框"><span>高级检索</span>
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
			<li><a class="add" href="staff/add" target="dialog"
				mask="true" height="400" width="485"><span>添加</span>
			</a>
			</li>
			<li><a class="delete"
				href="staff/delete?staff_id={sid_user}" target="ajaxTodo"
				title="确定要删除吗?"><span>删除</span>
			</a>
			</li>
			<li><a class="edit" href="staff/update?staff_id={sid_user}"
				target="dialog" mask="true" height="400" width="485"><span>修改</span>
			</a>
			</li>
			<li class="line">line</li>
			<li><a class="icon" href="staff/excelExport"><span>导出EXCEL</span>
			</a>
			</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="40">序号</th>
				<th width="100">员工编号</th>
				<th width="60">姓名</th>
				<th width="80">职位</th>
				<th width="40">性别</th>
				<th width="80">部门</th>
				<th width="100">手机号</th>
				<th width="100">Email</th>
				<th width="180">家庭住址</th>
				<th width="180">备注</th>
			</tr>
		</thead>
		<tbody>
		<c:choose>
		   <c:when test="${not empty list }">
		      <c:forEach items="${list }" var="bean" varStatus="vs">
				<tr target="sid_user" rel="${bean.staff_id }">
					<td>${vs.index+1}</td>
					<td>${bean.staff_id }</td>
					<td>${bean.staff_name }</td>
					<td>${bean.vacation }</td>
					<td>${bean.sex }</td>
					<td>${bean.section }</td>
					<td>${bean.phone }</td>
					<td>${bean.email }</td>
					<td>${bean.home_address }</td>
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
