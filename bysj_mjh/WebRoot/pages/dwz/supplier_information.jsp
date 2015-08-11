<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<head>
<base href="<%=basePath %>">
<style type="text/css">
   .center_td{
      text-align:center;
   }
</style>
</head>
<%-- <form id="pagerForm2" method="post" action="supplier_information.html">
	<input type="hidden" name="status" value="${param.status}"> <input
		type="hidden" name="keywords" value="${param.keywords}" /> <input
		type="hidden" name="pageNum" value="1" /> <input type="hidden"
		name="numPerPage" value="${model.numPerPage}" /> <input type="hidden"
		name="orderField" value="${param.orderField}" />
</form> --%>


<div class="pageHeader">
	<form  onsubmit="return navTabSearch(this);" name="pageForm" id="pageForm"
		action="supplier/list?2=2" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>供应商编号：<input type="text" name="supplier_id" id="supplier_id"/>
					</td>
					<td>供应商名称：<input type="text" name="supplier_name" id="supplier_name" />
					</td>
					<td>供应商所在省市：</td>
					<td><select class="" name="supplier_city" id="supplier_city">
					        <option value="" selected>--请选择--</option>
							<option value="上海">上海</option>
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
			</table>
			<div class="subBar">
				<ul>
					<li><div class="buttonActive">
							<div class="buttonContent">
								<button type="submit">检索</button>
							</div>
						</div>
					</li>
					<li><a class="button" href="supplier/search?3=3" width="475"
						height="385" target="dialog" mask="true" title="查询框"><span>高级检索</span>
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
			<li><a class="add" href="supplier/add" width="500"
				height="400" mask="true" target="dialog"><span>添加</span>
			</a>
			</li>
			<li><a class="delete"
				href="supplier/delete?supplier_id={sid_user}" target="ajaxTodo"
				title="确定要删除吗?"><span>删除</span>
			</a>
			</li>
			<li><a class="edit" href="supplier/update?supplier_id={sid_user}"
				width="500" height="400" mask="true" target="dialog"><span>修改</span>
			</a>
			</li>
			<li class="line">line</li>
			<li><a class="icon" href="supplier/excelExport"><span>导出EXCEL</span>
			</a>
			</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="30">序号</th>
				<th width="90">供应商编号</th>
				<th width="120">供应商名称</th>
				<th width="60">供应商省市</th>
				<th width="180">供应商地址</th>
				<th width="70">联系人</th>
				<!--<th width="80" align="center">供应商</th>-->
				<th width="90">联系电话</th>
				<th width="110">e-mail</th>
				<th width="90">传真</th>
				<th width="90">备注</th>
			</tr>
		</thead>
		<tbody class="center_td">
		   <c:choose>
		    <c:when test="${not empty list}">
		    <c:forEach items="${list }" var="bean" varStatus="vs">
			<tr target="sid_user" rel="${bean.supplier_id }">
				<td>${vs.index+1 }</td>
				<td>${bean.supplier_id }</td>
				<td>${bean.supplier_name }</td>
				<td>${bean.supplier_city }</td>
				<td>${bean.address }</td>
				<td>${bean.linkman }</td>
				<td>${bean.phone }</td>
				<td>${bean.email }</td>
				<td>${bean.fax }</td>
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
