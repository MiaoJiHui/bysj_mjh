<head>
<script type="text/javascript">
//        $(document).ready(function(){
//           $("table tbody tr").click(function(){
//              $(this).
//           });
//        });
    </script>
</head>
<body>
	<div class="pageContent">
		<form id="pagerForm" method="post" action="bill_information.html">
			<input type="hidden" name="status" value="${param.status}"> <input
				type="hidden" name="keywords" value="${param.keywords}" /> <input
				type="hidden" name="pageNum" value="1" /> <input type="hidden"
				name="numPerPage" value="${model.numPerPage}" /> <input
				type="hidden" name="orderField" value="${param.orderField}" />
		</form>


		<div class="pageHeader  "
			style="padding:5px; background-color: #EBF0F5;">
			<form onsubmit="return navTabSearch(this);"
				action="bill_information.html" method="post">
				<div class="searchBar">

					<table class="searchContent">
						<tr>
							<td>采购订单号：<input type="text" size="15" /></td>


							<td>货品名：<input type="text" size="10" /></td>


							<td>供应商编号：<input type="text" size="15" /></td>


							<td>采购员：<input type="text" size="8" /></td>

							<ul style="float:right;">
								<li style="float:right;"><a class="button"
									href="storage_index.html" target="dialog" height="320"
									width="410" mask="true" title="查询框"><span>高级检索</span>
								</a>
								</li>
								<li style="float:right;padding-right:8px;"><div
										class="buttonActive">
										<div class="buttonContent">
											<button type="submit">检索</button>
										</div>
									</div>
								</li>
							</ul>


						</tr>
					</table>
					<!--<div class="subBar">-->
					<!--<ul>-->
					<!--<li><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>-->
					<!--<li><a class="button" href="purchase_index.html" target="dialog" height="457" width="444" mask="true" title="查询框"><span>高级检索</span></a></li>-->
					<!--</ul>-->
					<!--</div>-->
				</div>
			</form>
		</div>
		<div class="pageContent" style="height:438px;">
			<div class="panelBar">
				<ul class="toolBar">
					<li><a class="add" href="purchase_add.html" mask="true"
						target="dialog" height="315" width="640"><span>添加</span>
					</a>
					</li>
					<li><a class="delete"
						href="demo/common/ajaxDone.html?uid={sid_user}" target="ajaxTodo"
						title="确定要删除吗?"><span>删除</span>
					</a>
					</li>
					<li><a class="edit" href="purchase_modify.html?uid={sid_user}"
						mask="true" target="dialog" height="310" width="650"><span>修改</span>
					</a>
					</li>
					<li class="line">line</li>
					<li><a class="icon" href="demo/common/dwz-team.xls"
						target="dwzExport" targetType="navTab"
						title="确定要导出这些记录吗?"><span>导出EXCEL</span>
					</a>
					</li>
				</ul>
			</div>
			<div class="grid" style="height:411px;">
				<input id="sid_user" type="hidden" value="1">
				<div class="gridHeader"></div>
				<div class="gridScroller"
					style="width: 1159px; height: 359px; overflow: auto;" layouth="138">
					<div class="gridTbody">
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
									<th width="100">备注</th>

								</tr>
							</thead>
							<tbody>
								<tr target="sid_user" rel="1">
									<td>1</td>
									<td>A120113196309052434</td>
									<td>c134543</td>
									<td>办公桌</td>
									<td>200</td>
									<td>5</td>
									<td>1000</td>
									<td>b21231</td>
									<td>上海木木办公商品公司</td>
									<td>王武</td>
									<td>beizhubeizhubeizhubeizhu</td>


								</tr>
								<tr target="sid_user" rel="2">
									<td>2</td>
									<td>A120113196309052434</td>
									<td>c134543</td>
									<td>办公桌</td>
									<td>200</td>
									<td>5</td>
									<td>1000</td>
									<td>b21231</td>
									<td>上海木木办公商品公司</td>
									<td>王武</td>
									<td>beizhubeizhubeizhubeizhu</td>


								</tr>
								<tr target="sid_user" rel="3">
									<td>3</td>
									<td>A120113196309052434</td>
									<td>c134543</td>
									<td>办公桌</td>
									<td>200</td>
									<td>5</td>
									<td>1000</td>
									<td>b21231</td>
									<td>上海木木办公商品公司</td>
									<td>王武</td>
									<td>beizhubeizhubeizhubeizhu</td>


								</tr>
								<tr target="sid_user" rel="4">
									<td>4</td>
									<td>A120113196309052434</td>
									<td>c134543</td>
									<td>办公桌</td>
									<td>200</td>
									<td>5</td>
									<td>1000</td>
									<td>b21231</td>
									<td>上海木木办公商品公司</td>
									<td>王武</td>
									<td>beizhubeizhubeizhubeizhu</td>

								</tr>
								<tr target="sid_user" rel="5">
									<td>5</td>
									<td>A120113196309052434</td>
									<td>c134543</td>
									<td>办公桌</td>
									<td>200</td>
									<td>5</td>
									<td>1000</td>
									<td>b21231</td>
									<td>上海木木办公商品公司</td>
									<td>王武</td>
									<td>beizhubeizhubeizhubeizhu</td>


								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
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

	</div>



</body>