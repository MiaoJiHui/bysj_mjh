<body>
	<form id="pagerForm" method="post" action="bill_information.html">
		<input type="hidden" name="status" value="${param.status}"> <input
			type="hidden" name="keywords" value="${param.keywords}" /> <input
			type="hidden" name="pageNum" value="1" /> <input type="hidden"
			name="numPerPage" value="${model.numPerPage}" /> <input
			type="hidden" name="orderField" value="${param.orderField}" />
	</form>


	<div class="pageHeader">
		<form onsubmit="return navTabSearch(this);"
			action="bill_information.html" method="post">
			<div class="searchBar">
				<!--<ul class="searchContent">
                <li>
                    <label>货品名称</label>
                    <input type="text"/>
                </li>
                <li>
                <select class="combox" name="province">
                    <option value="">所有省市</option>
                    <option value="北京">北京</option>
                    <option value="上海">上海</option>
                    <option value="天津">天津</option>
                    <option value="重庆">重庆</option>
                    <option value="广东">广东</option>
                </select>
                </li>
            </ul>
            -->
				<table class="searchContent">
					<tr>

						<td>支付状态：</td>
						<td><select class="combox">
								<option value="进行中">进行中</option>
								<option value="预付金已付">预付金已付</option>
								<option value="支付完成">支付完成</option>

						</select></td>
						<ul style="float:right;">
							<li style="float:right;"><a class="button"
								href="storage_index.html" target="dialog" height="315"
								width="420" mask="true" title="查询框"><span>高级检索</span>
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
				<!--<li><a class="button" href="pay_index.html" target="dialog" height="355" width="438" mask="true" title="查询框"><span>高级检索</span></a></li>-->
				<!--</ul>-->
				<!--</div>-->
			</div>
		</form>
	</div>
	<div class="pageContent" style="height:425px">
		<div class="panelBar">
			<ul class="toolBar">
				<li><a class="add" href="pay_add.html" target="dialog"
					mask="true" height="385" width="425"><span>添加</span>
				</a>
				</li>
				<li><a class="delete"
					href="demo/common/ajaxDone.html?uid={sid_user}" target="ajaxTodo"
					title="确定要删除吗?"><span>删除</span>
				</a>
				</li>
				<li><a class="edit" href="pay_modify.html?uid={sid_user}"
					mask="true" target="dialog" height="385" width="425"><span>修改</span>
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
		<div class="grid" style="height:372px;">
			<input id="sid_user" type="hidden" value="1">
			<div class="gridHeader"></div>
			<div class="gridScroller"
				style="width: 1159px; height: 359px; overflow: auto;" layoutH="138">
				<div class="gridTbody">
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
								<!--<th width="80" align="center">供应商</th>-->
								<th width="50">支付状态</th>
								<th width="120">备注</th>

							</tr>
						</thead>
						<tbody>
							<tr target="sid_user" rel="1">
								<td>1</td>

								<td>c134543</td>
								<td>上海花花有限公司</td>
								<td>银行卡</td>
								<td>61222323344923844</td>
								<td>100</td>
								<td>300</td>
								<td>预付金已付</td>
								<td>beizhubeizhubeizhubeizhu</td>


							</tr>
							<tr target="sid_user" rel="2">
								<td>2</td>

								<td>c134543</td>
								<td>上海花花有限公司</td>
								<td>银行卡</td>
								<td>61222323344923844</td>
								<td>100</td>
								<td>300</td>
								<td>预付金已付</td>
								<td>beizhubeizhubeizhubeizhu</td>

							</tr>
							<tr target="sid_user" rel="3">
								<td>3</td>

								<td>c134543</td>
								<td>上海花花有限公司</td>
								<td>银行卡</td>
								<td>61222323344923844</td>
								<td>100</td>
								<td>300</td>
								<td>预付金已付</td>
								<td>beizhubeizhubeizhubeizhu</td>

							</tr>
							<tr target="sid_user" rel="4">
								<td>4</td>

								<td>c134543</td>
								<td>上海花花有限公司</td>
								<td>银行卡</td>
								<td>61222323344923844</td>
								<td>100</td>
								<td>300</td>
								<td>预付金已付</td>
								<td>beizhubeizhubeizhubeizhu</td>
							</tr>
							<tr target="sid_user" rel="5">
								<td>5</td>

								<td>c134543</td>
								<td>上海花花有限公司</td>
								<td>银行卡</td>
								<td>61222323344923844</td>
								<td>100</td>
								<td>300</td>
								<td>预付金已付</td>
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
</body>