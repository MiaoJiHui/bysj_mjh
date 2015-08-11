<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<head>
<base href="<%=basePath%>">
<style type="text/css">
.pageContent.table th {
	height: 21px;
	line-height: 21px;
}

input.focus,textarea.focus,input.date.focus {
	background-color: #FFC;
}
</style>

<!-- <script src="dwz/js/jquery-1.7.2.js" type="text/javascript"></script> -->
<!-- <script type="text/javascript"> -->
<!--      //检索 -->
<!--      function search(){ -->
<!--         $("#userForm").submit(); -->
<!--       } -->
<!-- </script> -->
</head>
<!-- onsubmit="return navTabSearch(this);" -->
<form onsubmit="return navTabSearch(this);" action="goods/list?1=1"
	name="pageForm" id="pageForm" method="post">
	<div class="pageHeader">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td style="padding-right: 15px;">货品编号：<input type="text"
						name="goods_id" id="goods_id" value="" size="15" /></td>

					<td style="padding-right: 15px;"><select class=""
						name="goods_type" id="goods_type"
						style="color:#183152;font-family: 'Microsoft YaHei',Arial,sans-serif;">
							<option value="" SELECTED>--货品类别--</option>
							<c:forEach items="${strList}" var="bean">
								<option value="${bean }">${bean }</option>
							</c:forEach>
					</select>
					</td>
					<td style="padding-right: 15px;">货品名称：<input type="text"
						size="15" name="goods_name" id="goods_name" />
					</td>
					<td style="padding-right: 15px;">供应商：<input type="text"
						size="15" name="goods_supplier" id="goods_supplier" />
					</td>
					<td style="padding-right: 15px;">价格： <input type="text"
						size="1" name="price" id="price" /> <span>~</span> <input
						type="text" size="2" name="price1" id="price1" /></td>
					<!-- <td style="padding-right: 15px;">数量：<input type="text"
						size="5" name="count" id="count" /></td> -->
					<td style="padding-right: 15px;">入库时间：<input type="text"
						class="date" name="in_date" id="in_date" size="15" readonly="true" />
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
					<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="reset">清空重输</button>
						</div>
						</div></li>
				</ul>
			</div>
		</div>
</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="goods/add?1=1" target="dialog"
				width="790" mask="true" height="320" rel="add_page1"><span>添加</span>
			</a></li>
			<li><a class="delete" href="goods/delete?goods_id={sid_user}"
				target="ajaxTodo" title="确定要删除吗?" warn="请选择用户"><span>删除</span>
			</a></li>
			<li><a class="edit" href="goods/update?goods_id={sid_user}"
				target="dialog" width="790" mask="true" height="320" warn="请选择用户"><span>修改</span>
			</a></li>
			<li class="line">line</li>
			<li><a class="icon" href="goods/excelExport" ><span>导出EXCEL</span> </a></li>
		</ul>
	</div>
	<table class="table" width="1350px" layoutH="138">
		<thead>
			<tr>
				<th width="40px">序号</th>
				<th width="60px">货品编号</th>
				<th width="100px">货品名称</th>
				<th width="80px">货品类别</th>
				<th width="100px">规格型号</th>
				<th width="50px">单位</th>
				<!-- <th width="50px">数量</th> -->
				<th width="130px">供应商</th>
				<th width="80px">价格</th>
				<th width="120px">仓库</th>
			<!-- 	<th width="80px">入库时间</th> -->
				<th width="80px">最后修改人</th>
				<th width="80px">备注</th>
				<!-- 				<th width="150px">备注</th> -->
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${not empty list }">
					<c:forEach items="${list }" var="bean" varStatus="vs">
						<tr target="sid_user" rel="${bean.goods_id }">
							<td>${vs.index+1 }</td>
							<td>${bean.goods_id }</td>
							<td>${bean.goods_name }</td>
							<td>${bean.goods_type }</td>
							<td>${bean.goods_scale }</td>
							<td>${bean.goods_unit }</td>
							<%-- <td>${bean.count }</td> --%>
							<td ondblclick="toSupplier()">${bean.goods_supplier }</td>
							<td>${bean.price }</td>
							<td ondbclick="toStorage()">${bean.storage }</td>
							<%-- <td>${bean.in_date }</td> --%>
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
</form>
<script type="text/javascript">
     function toSupplier(){
          window.location.href="supplier/list"; 
     }
     function toStorage(){
     }

</script>
