<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<style type="text/css">
/*#apDiv1 {*/
/*position:relative;*/

/*width:100%;*/
/*height:100%;*/

/*}*/
/*#apDiv2{*/
/*width:1350px;*/
/*position:relative;*/
/*}*/
</style>

<div class="pageContent" style="padding:3px">
	<div class="tabs" style="height:509px">
		<div class="tabsHeader">
			<div class="tabsHeaderContent">
				<ul>
					<li><a href="javascript:;"><span>货品信息</span>
					</a>
					</li>
					<li><a href="javascript:;"><span>供应商信息</span>
					</a>
					</li>
					<li><a href="javascript:;"><span>仓库信息</span>
					</a>
					</li>
					<li><a href="javascript:;"><span>操作人员信息</span>
					</a>
					</li>

				</ul>
			</div>
		</div>
		<div class="tabsContent" style="height:476px;padding:0px;">
			<div class="tab1">

				<div id="apDiv1">
					<div id="apDiv2">
						<form id="pagerForm1" method="post" action="goods_information.jsp">
							<input type="hidden" name="status" value="${param.status}">
							<input type="hidden" name="keywords" value="${param.keywords}" />
							<input type="hidden" name="pageNum" value="1" /> <input
								type="hidden" name="numPerPage" value="${model.numPerPage}" />
							<input type="hidden" name="orderField"
								value="${param.orderField}" />
						</form>

						<div class="pageHeader">
							<form onsubmit="return navTabSearch(this);"
								action="goods_information.jsp" method="post">
								<div class="searchBar">

									<table class="searchContent">
										<tr>
											<td style="padding-right: 15px;">货品编号：<input type="text"
												size="15" name="" /></td>
											<td style="padding-right: 15px;"><select class=""
												style="color:#183152;font-family: 'Microsoft YaHei',Arial,sans-serif;">
													<option value="" SELECTED>货品类别</option>
													<option value="办公用品">办公用品</option>
													<option value="财务用品">财务用品</option>
													<option value="考勤用品">考勤用品</option>
													<option value="保险设备">仪器设备</option>
													<option value="日程用品">日常用品</option>
											</select></td>
											<td style="padding-right: 15px;">货品名称：<input type="text"
												size="15" name="" /></td>
											<td style="padding-right: 15px;">供应商：<input type="text"
												size="20" name="" /></td>
											<td style="padding-right: 15px;">价格：<input type="text"
												size="5" name="" /> <span>~</span> <input type="text"
												size="5" name="" /></td>
											<td style="padding-right: 15px;">数量：<input type="text"
												size="5" name="" /></td>
											<td style="padding-right: 0px;"><span
												style="float:left;height:20px;line-height: 20px;">
													入库时间：</span><input type="text" style="float:left;" class="date"
												size="10" readonly="true" /> <a style="float:left;"
												class="inputDateButton" href="javascript:;"></a></td>
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
									<li><a class="add" href="goods_add.jsp" target="dialog"
										width="700" mask="true" height="313" rel="add_page1"><span>添加</span>
									</a>
									</li>
									<li><a class="delete"
										href="demo/common/ajaxDone.jsp?uid={sid_user}"
										target="ajaxTodo" title="确定要删除吗?"><span>删除</span>
									</a>
									</li>
									<li><a class="edit"
										href="goods_modify.jsp?uid={sid_user} " target="dialog"
										width="700" mask="true" height="313"><span>修改</span>
									</a>
									</li>
									<li class="line">line</li>
									<li><a class="icon" href="demo/common/dwz-team.xls"
										target="dwzExport" targetType="navTab" title="确定要导出这些记录吗?"><span>导出EXCEL</span>
									</a>
									</li>
								</ul>
							</div>


							<table class="table" width="1350px" layoutH="179">
								<thead>
									<tr>
										<th width="40px">序号</th>
										<th width="60px">货品编号</th>
										<th width="100px">货品名称</th>
										<th width="80px">货品类别</th>
										<th width="100px">规格型号</th>
										<th width="50px">单位</th>
										<th width="50px">数量</th>
										<th width="130px">供应商</th>
										<th width="80px">价格</th>
										<th width="160px">仓库</th>
										<th width="80px">入库时间</th>
										<th width="150px">备注</th>
									</tr>
								</thead>
								<tbody>
									<tr target="sid_user" rel="1">
										<td>1</td>
										<td>A120113196309052434</td>
										<td>办公桌</td>
										<td>办公家具</td>
										<td>x221</td>
										<td>套</td>
										<td>5</td>
										<td>上海木木家具有限公司</td>
										<td>200</td>
										<td>上海分公司A楼1301室</td>
										<td>2014-05-21</td>
										<td>备注：</td>
									</tr>
									<tr target="sid_user" rel="2">
										<td>2</td>
										<td>A120113196309052434</td>
										<td>办公桌</td>
										<td>办公家具</td>
										<td>x221</td>
										<td>套</td>
										<td>5</td>
										<td>上海木木家具有限公司</td>
										<td>200</td>
										<td>上海分公司A楼1301室</td>
										<td>2014-05-21</td>
										<td>备注：</td>
									</tr>
									<tr target="sid_user" rel="3">
										<td>3</td>
										<td>A120113196309052434</td>
										<td>办公桌</td>
										<td>办公家具</td>
										<td>x221</td>
										<td>套</td>
										<td>5</td>
										<td>上海木木家具有限公司</td>
										<td>200</td>
										<td>上海分公司A楼1301室</td>
										<td>2014-05-21</td>
										<td>备注：</td>
									</tr>
									<tr target="sid_user" rel="4">
										<td>4</td>
										<td>A120113196309052434</td>
										<td>办公桌</td>
										<td>办公家具</td>
										<td>x221</td>
										<td>套</td>
										<td>5</td>
										<td>上海木木家具有限公司</td>
										<td>200</td>
										<td>上海分公司A楼1301室</td>
										<td>2014-05-21</td>
										<td>备注：</td>
									</tr>
									<tr target="sid_user" rel="5">
										<td>5</td>
										<td>A120113196309052434</td>
										<td>办公桌</td>
										<td>办公家具</td>
										<td>x221</td>
										<td>套</td>
										<td>5</td>
										<td>上海木木家具有限公司</td>
										<td>200</td>
										<td>上海分公司A楼1301室</td>
										<td>2014-05-21</td>
										<td>备注：</td>
									</tr>

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
					</div>
				</div>

			</div>

			<div class="tab2">

				<form id="pagerForm2" method="post"
					action="supplier_information.jsp">
					<input type="hidden" name="status" value="${param.status}">
					<input type="hidden" name="keywords" value="${param.keywords}" />
					<input type="hidden" name="pageNum" value="1" /> <input
						type="hidden" name="numPerPage" value="${model.numPerPage}" /> <input
						type="hidden" name="orderField" value="${param.orderField}" />
				</form>


				<div class="pageHeader">
					<form onsubmit="return navTabSearch(this);"
						action="supplier_information.jsp" method="post">
						<div class="searchBar">

							<table class="searchContent">
								<tr>
									<td>供应商编号：<input type="text" name="supplier_id" /></td>
									<td>供应商名称：<input type="text" name="supplier_name" /></td>
									<td>供应商所在省市：</td>
									<td><select class="combox" name="province">
											<option value="上海" SELECTED>上海</option>
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
									<li><a class="button" href="supplier_index.jsp"
										width="475" height="385" target="dialog" mask="true"
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
							<li><a class="add" href="supplier_add.jsp" width="455"
								height="410" mask="true" target="dialog"><span>添加</span>
							</a>
							</li>
							<li><a class="delete"
								href="demo/common/ajaxDone.jsp?uid={sid_user}" target="ajaxTodo"
								title="确定要删除吗?"><span>删除</span>
							</a>
							</li>
							<li><a class="edit"
								href="supplier_modify.jsp?uid={sid_user}" width="455"
								height="410" mask="true" target="dialog"><span>修改</span>
							</a>
							</li>
							<li class="line">line</li>
							<li><a class="icon" href="demo/common/dwz-team.xls"
								target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span>
							</a>
							</li>
						</ul>
					</div>
					<table class="table" width="100%" layoutH="179">
						<thead>
							<tr>
								<th width="40">序号</th>
								<th width="50">供应商编号</th>
								<th width="130">供应商名称</th>
								<th width="60">供应商省市</th>
								<th width="180">供应商地址</th>
								<th width="70">联系人</th>
								<!--<th width="80" align="center">供应商</th>-->
								<th width="90">联系电话</th>
								<th width="120">e-mail</th>
								<th width="90">传真</th>
							</tr>
						</thead>
						<tbody>
							<tr target="sid_user" rel="1">
								<td>1</td>
								<td>B120113196309052434</td>
								<td>上海木木家具有限公司</td>
								<td>上海市</td>
								<td>上海市浦东新区临港新城橄榄路1333号</td>
								<td>王思</td>
								<td>13912923912</td>
								<td>42314124@sohu.com</td>
								<td>755353465</td>
							</tr>
							<tr target="sid_user" rel="2">
								<td>2</td>
								<td>B120113196309052435</td>
								<td>乌鲁木齐晨晨文具有限公司</td>
								<td>新疆省</td>
								<td>乌鲁木齐市康撒阿米达街道萨摩街120号</td>
								<td>阿波罗</td>
								<td>042312312</td>
								<td>2343443@qq.com</td>
								<td>755353465</td>

							</tr>
							<tr target="sid_user" rel="3">
								<td>3</td>
								<td>B120113196309052436</td>
								<td>深圳安达保险设备有限公司</td>
								<td>广东省</td>
								<td>深圳市国通大道3320号</td>
								<td>张海</td>
								<td>1452738394</td>
								<td>979274912@qq.com</td>
								<td>755353465</td>

							</tr>
							<tr target="sid_user" rel="4">
								<td>4</td>
								<td>B120113196309052437</td>
								<td>绵阳财务用品有限公司</td>
								<td>四川省</td>
								<td>绵阳市涪城区城南街道南山街1000号</td>
								<td>唐千</td>
								<td>18923323224</td>
								<td>352113389@qq.com</td>
								<td>755353465</td>

							</tr>
							<tr target="sid_user" rel="5">
								<td>5</td>
								<td>B120113196309052438</td>
								<td>沈阳木软生活用品有限公司</td>
								<td>辽宁省</td>
								<td>上海木软生活用品有限公司</td>
								<td>李立崴</td>
								<td>45254425423</td>
								<td>14413@sina.com</td>
								<td>755353465</td>

							</tr>

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
			</div>

			<div class="tab3">
				<form id="pagerForm3" method="post" action="bill_information.jsp">
					<input type="hidden" name="status" value="${param.status}">
					<input type="hidden" name="keywords" value="${param.keywords}" />
					<input type="hidden" name="pageNum" value="1" /> <input
						type="hidden" name="numPerPage" value="${model.numPerPage}" /> <input
						type="hidden" name="orderField" value="${param.orderField}" />
				</form>


				<div class="pageHeader">
					<form onsubmit="return navTabSearch(this);"
						action="bill_information.jsp" method="post">
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
									<td>仓库号：<input type="text" size="15" /></td>
									<td>仓库所属公司：<input type="text" size="20" /></td>

									<td>仓库地址：<input type="text" size="20" /></td>

									<td>仓库类别：</td>
									<td><select class="combox" name="storage_type">
											<option value="自有仓库">自有仓库</option>
											<option value="营业仓库">营业仓库</option>
									</select></td>
									<td>仓库负责人：<input type="text" size="10" /></td>


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
									<li><a class="button" href="storage_index.jsp"
										target="dialog" height="320" width="430" mask="true"
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
							<li><a class="add" href="storage_add.jsp" target="dialog"
								mask="true" height="354" width="458"><span>添加</span>
							</a>
							</li>
							<li><a class="delete"
								href="demo/common/ajaxDone.jsp?uid={sid_user}" target="ajaxTodo"
								title="确定要删除吗?"><span>删除</span>
							</a>
							</li>
							<li><a class="edit" href="storage_modify.jsp?uid={sid_user}"
								mask="true" target="dialog" height="354" width="427"><span>修改</span>
							</a>
							</li>
							<li class="line">line</li>
							<li><a class="icon" href="demo/common/dwz-team.xls"
								target="dwzExport" targetType="navTab" title="确定要导出这些记录吗?"><span>导出EXCEL</span>
							</a>
							</li>
						</ul>
					</div>
					<table class="table" width="100%" layoutH="179">
						<thead>
							<tr>
								<th width="40">序号</th>
								<th width="80">仓库号</th>
								<th width="150">仓库所属公司</th>
								<th width="150">仓库地址</th>
								<th width="80">仓库规格</th>
								<th width="80">仓库类别</th>
								<th width="70">仓库负责人</th>
								<!--<th width="80" align="center">供应商</th>-->
								<th width="150">备注</th>


							</tr>
						</thead>
						<tbody>
							<tr target="sid_user" rel="1">
								<td>1</td>
								<td>A120113196309052434</td>
								<td>上海远大公司</td>
								<td>上海市金山区金山大道</td>
								<td>200平方米</td>
								<td>自有仓库</td>
								<td>王大海</td>

								<td>beizhubeizhubeizhubeizhu</td>


							</tr>
							<tr target="sid_user" rel="2">
								<td>2</td>
								<td>A120113196309052434</td>
								<td>上海远大公司</td>
								<td>上海市金山区金山大道</td>
								<td>200平方米</td>
								<td>自有仓库</td>
								<td>王大海</td>
								<td>beizhubeizhubeizhubeizhu</td>


							</tr>
							<tr target="sid_user" rel="3">
								<td>3</td>
								<td>A120113196309052434</td>
								<td>上海远大公司</td>
								<td>上海市金山区金山大道</td>
								<td>200平方米</td>
								<td>自有仓库</td>
								<td>王大海</td>
								<td>beizhubeizhubeizhubeizhu</td>


							</tr>
							<tr target="sid_user" rel="4">
								<td>4</td>
								<td>A120113196309052434</td>
								<td>上海远大公司</td>
								<td>上海市金山区金山大道</td>
								<td>200平方米</td>
								<td>自有仓库</td>
								<td>王大海</td>
								<td>beizhubeizhubeizhubeizhu</td>

							</tr>
							<tr target="sid_user" rel="5">
								<td>5</td>
								<td>A120113196309052434</td>
								<td>上海远大公司</td>
								<td>上海市金山区金山大道</td>
								<td>200平方米</td>
								<td>自有仓库</td>
								<td>王大海</td>
								<td>beizhubeizhubeizhubeizhu</td>


							</tr>

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

			</div>

			<div class="tab4">
				<form id="pagerForm" method="post" action="bill_information.jsp">
					<input type="hidden" name="status" value="${param.status}">
					<input type="hidden" name="keywords" value="${param.keywords}" />
					<input type="hidden" name="pageNum" value="1" /> <input
						type="hidden" name="numPerPage" value="${model.numPerPage}" /> <input
						type="hidden" name="orderField" value="${param.orderField}" />
				</form>


				<div class="pageHeader">
					<form onsubmit="return navTabSearch(this);"
						action="bill_information.jsp" method="post">
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
									<td>职工号：<input type="text" name="staff_id" /></td>
									<td>姓名：<input type="text" size="15" name="staff_name" /></td>

									<td>职位：<input type="text" size="15" name="staff_vacation" />
									</td>

									<td>部门：<input type="text" name="staff_department" /></td>
									<td>性&nbsp;&nbsp;别：<input type="radio" name="staff_sex"
										value="男" checked />男 <input type="radio" name="staff_sex"
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
									<li><a class="button" href="staff_index.jsp"
										target="dialog" height="355" width="455" mask="true"
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
							<li><a class="add" href="staff_add.jsp" target="dialog"
								mask="true" height="385" width="485"><span>添加</span>
							</a>
							</li>
							<li><a class="delete"
								href="demo/common/ajaxDone.jsp?uid={sid_user}" target="ajaxTodo"
								title="确定要删除吗?"><span>删除</span>
							</a>
							</li>
							<li><a class="edit" href="staff_modify.jsp?uid={sid_user}"
								target="dialog" mask="true" height="385" width="485"><span>修改</span>
							</a>
							</li>
							<li class="line">line</li>
							<li><a class="icon" href="demo/common/dwz-team.xls"
								target="dwzExport" targetType="navTab" title="确定要导出这些记录吗?"><span>导出EXCEL</span>
							</a>
							</li>
						</ul>
					</div>
					<table class="table" width="100%" layoutH="179">
						<thead>
							<tr>
								<th width="40">序号</th>
								<th width="100">职工号</th>
								<th width="60">姓名</th>
								<th width="80">职位</th>
								<th width="40">性别</th>
								<th width="80">部门</th>
								<!--<th width="80" align="center">供应商</th>-->
								<th width="100">手机号</th>
								<th width="180">家庭住址</th>
								<th width="180">备注</th>

							</tr>
						</thead>
						<tbody>
							<tr target="sid_user" rel="1">
								<td>1</td>
								<td>A120113196309052434</td>
								<td>王思</td>
								<td>仓库管理员</td>
								<td>男</td>
								<td>后勤部</td>
								<td>1627383939</td>
								<td>上海浦东</td>
								<td>beizhubeizhubeizhubeizhu</td>


							</tr>
							<tr target="sid_user" rel="2">
								<td>2</td>
								<td>A120113196309052434</td>
								<td>王思</td>
								<td>仓库管理员</td>
								<td>男</td>
								<td>后勤部</td>
								<td>1627383939</td>
								<td>上海浦东</td>
								<td>beizhubeizhubeizhubeizhu</td>


							</tr>
							<tr target="sid_user" rel="3">
								<td>3</td>
								<td>A120113196309052434</td>
								<td>王思</td>
								<td>仓库管理员</td>
								<td>男</td>
								<td>后勤部</td>
								<td>1627383939</td>
								<td>上海浦东</td>
								<td>beizhubeizhubeizhubeizhu</td>


							</tr>
							<tr target="sid_user" rel="4">
								<td>4</td>
								<td>A120113196309052434</td>
								<td>王思</td>
								<td>仓库管理员</td>
								<td>男</td>
								<td>后勤部</td>
								<td>1627383939</td>
								<td>上海浦东</td>
								<td>beizhubeizhubeizhubeizhu</td>

							</tr>
							<tr target="sid_user" rel="5">
								<td>5</td>
								<td>A120113196309052434</td>
								<td>王思</td>
								<td>仓库管理员</td>
								<td>男</td>
								<td>后勤部</td>
								<td>1627383939</td>
								<td>上海浦东</td>
								<td>beizhubeizhubeizhubeizhu</td>


							</tr>

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

			</div>

		</div>
		<div class="tabsFooter">
			<div class="tabsFooterContent"></div>
		</div>
	</div>
</div>
<!--<script language="javascript" type="text/javascript">-->
<!--var Browser = function(){-->
<!--var d_ = document,n_ = navigator,t_ = this,s_= screen;-->

<!--var b = n_.appName;-->
<!--var ua = n_.userAgent.toLowerCase();-->

<!--t_.name = "Unknow";-->

<!--t_.safari = ua.indexOf("safari")>-1;  // always check for safari & opera-->
<!--t_.opera = ua.indexOf("opera")>-1;    // before ns or ie-->
<!--t_.firefox = !t_.safari && ua.indexOf('firefox')>-1; // check for gecko engine-->
<!--t_.ns = !t_.firefox && !t_.opera && !t_.safari && (b=="Netscape");-->
<!--t_.ie = !t_.opera && (b=="Microsoft Internet Explorer");-->

<!--t_.name = (t_.ie ? "IE" : (t_.firefox ? "Firefox" : (t_.ns ? "Netscape" : (t_.opera ? "Opera" : (t_.safari ? "Safari" : "Unknow")))));-->
<!--}-->

<!--var brw = new Browser();-->

<!--var apDiv1 = document.getElementById("apDiv1");-->
<!--var perWidth = apDiv1.clientWidth / 2;-->

<!--var mouse_wheel = function(e){-->
<!--var evt = window.event || e;-->
<!--if(evt.detail > 0 || evt.wheelDelta < 0)-->
<!--apDiv1.scrollLeft += perWidth;-->
<!--else-->
<!--apDiv1.scrollLeft -= perWidth;-->
<!--}-->

<!--var mouse_wheel_opera = function(e){-->
<!--//alert(window.event == e); //Opera 下，window.event 和 e 相等-->
<!--var obj = e.srcElement;-->
<!--if(obj == apDiv1){-->
<!--mouse_wheel(e);-->
<!--}-->
<!--}-->

<!--switch(brw.name){-->
<!--case "IE":-->
<!--case "Safari":-->
<!--apDiv1.onmousewheel = mouse_wheel;-->
<!--break;-->
<!--case "Firefox":-->
<!--apDiv1.addEventListener("DOMMouseScroll", mouse_wheel, false);-->
<!--break;-->
<!--case "Opera":-->
<!--document.onmousewheel = mouse_wheel_opera;-->
<!--break;-->
<!--}-->
<!--</script>-->
