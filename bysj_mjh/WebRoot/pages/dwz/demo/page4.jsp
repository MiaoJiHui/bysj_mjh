<!DOCTYPE html>
<html>
<head>
<title></title>
<style type="text/css">
div.box1 {
	background-color: #EBF0F5;
	width: 100%;
	height: 40px;
	border-bottom: 1px solid #B8D0D6;
	padding: 5px;
}

.headbar {
	float: left;
	border-right: 1px solid #B8D0D6;
	padding-right: 4px;
	padding-left: 3px;
	font-weight: bold;
	color: #183152;
}

.headbar a:hover {
	float: left;
	color: #CE171E;
	text-decoration: none;
	border-bottom: 2px solid #CE171E;
}

.headbar a {
	padding-bottom: 5px;
	padding-left: 2px;
	padding-right: 2px;
	color: #183152;
}

.page4_td td {
	width: 400px;
}

.formTable th {
	width: 173px;
}

.lnav ul .selected a {
	color: #CE171E;
	text-decoration: none;
	border-bottom: 2px solid #CE171E;
}

.pageContent2 {
	display: block;
	overflow: auto;
	position: relative;
	height: 502px;
	overflow: auto;
	overflow: auto;
	margin: 5px;
}

.tabsContent2 {
	background-color: white;
	padding: 5px;
	height: 454px;
	overflow: auto;
}

#page4_panelBar,#page4_panelBar2,#page4_panelBar3 {
	border-top-width: 0px;
}

div.tab2 .tabsContent2 {
	display: block;
	overflow: auto;
	padding: 0px 0px 1px;
	border-style: solid;
	border-width: 0px;
}

.span1,.span2,.span3,.span4,.span5,.span6 {
	margin-left: -25px;
}

.img1,.img2,.img3,.img4,.img5,.img6 {
	margin-right: 0px;
}

#tb2 {
	display: none;
}

#x {
	margin-bottom: -2px;
}

#a2,#a3 {
	display: none;
}
</style>
<script type="text/javascript">
        function dian(){
               $("#tb1",navTab.getCurrentPanel()).hide();
               $("#tb2",navTab.getCurrentPanel()).slideDown("slow");
               $("#a1",navTab.getCurrentPanel()).hide();
               $("#a2",navTab.getCurrentPanel()).show();
               $("#a3",navTab.getCurrentPanel()).show();
        }
        function dian2(){
               $("#tb2",navTab.getCurrentPanel()).slideUp("normal",function(){
                   $("#tb1",navTab.getCurrentPanel()).show();
               })

               $("#a1",navTab.getCurrentPanel()).show();
               $("#a2",navTab.getCurrentPanel()).hide();
               $("#a3",navTab.getCurrentPanel()).hide();
        }
    </script>
</head>
<body>
	<div class="box1">
		<div
			style="padding: 5px;color: Red; font-size: 16px; font-weight: bold;">LS2014060001</div>
		<div style="float:left;">
			<span style="padding-left:5px;padding-right:425px;color:gray;">上海飞航租赁有限公司</span>
		</div>
		<div class="">
			<ul>
				<li class="headbar selected"><a href="page1.html"
					target="navTab" rel="zy">租约首页</a>
				</li>
				<li class="headbar"><a href="page/page2.html" target="navTab"
					rel="zy">任务分配</a>
				</li>
				<li class="headbar"><a href="page/page3.html" target="navTab"
					rel="zy">执行摘要</a>
				</li>
				<li class="headbar"><a href="page4.html" target="navTab"
					rel="zy">关键条例</a>
				</li>
				<li class="headbar"><a href="page/page5.html" target="navTab"
					rel="zy">租约关联</a>
				</li>
				<li class="headbar"><a href="page/page6.html" target="navTab"
					rel="zy">租赁资产</a>
				</li>
				<li class="headbar"><a href="page/page7.html" target="navTab"
					rel="zy">相关文档</a>
				</li>
				<li class="headbar"><a href="page8.html" target="navTab"
					rel="zy">提款计划</a>
				</li>
				<li class="headbar"><a href="page/page9.html" target="navTab"
					rel="zy">租约变更</a>
				</li>
				<li class="headbar"><a href="page/page10.html" target="navTab"
					rel="zy">租约终止</a>
				</li>
			</ul>
		</div>
	</div>

	<div class="pageContent pageContent2">
		<div class="tabs" currentIndex="0" eventType="click">
			<div class="tabsHeader">
				<div class="tabsHeaderContent">
					<ul>
						<li class=""><a href="javascript:;"><span>还款方式</span>
						</a>
						</li>
						<li class=""><a href="javascript:;"><span>特殊还款方式</span>
						</a>
						</li>
						<li class=""><a href="javascript:;"><span>收款情况</span>
						</a>
						</li>
						<li class=""><a href="javascript:;"><span>中途上线</span>
						</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="tabsContent tabsContent2"
				style="background-color:white;padding:0px;">
				<div class="tab1" style="padding:5px;">
					<table class="formTable page4_td"
						style="margin-bottom:1px;width:100%;">
						<tr>
							<td colspan="4" id="x"
								style="background-color: #EEF2F6;text-align:left;padding-left:10px;color:#183152;font-weight: bold;">
								基本信息 <a href="#" id="a1" onclick="dian()"
								style="color:#00F;font-weight: bold;height:28px;color: blue;line-height:28px;float: right;font-style:normal">
									【修改数据】 </a> <a href="#" id="a3" onclick="dian2()"
								style="color:#00F;font-weight: bold;height:28px;color: blue;line-height:28px;float: right;font-style:normal">
									【取消】</a> <a href="#" id="a2"
								style="color:#00F;font-weight: bold;height:28px;color: blue;line-height:28px;float: right;font-style:normal">
									【提交】</a></td>
						</tr>
					</table>
					<table id="tb1" class="formTable ">
						<tr>
							<th>租约编码：</th>
							<td>LS2014060001</td>
							<th>租赁日期：</th>
							<td>2014-06-16</td>
						</tr>
						<tr>
							<th>发票币种：</th>
							<td></td>
							<th>信用额度：</th>
							<td></td>
						</tr>
						<tr>
							<th>还款方式：</th>
							<td></td>
							<th>平息率：</th>
							<td></td>
						</tr>
						<tr>
							<th>利率类型：</th>
							<td colspan="3"></td>
						</tr>
						<tr>
							<th>利率：</th>
							<td colspan="3"></td>
						</tr>
						<tr>
							<th>付款周期：</th>
							<td colspan="3"></td>
						</tr>
						<tr>
							<th>付款期数：</th>
							<td></td>
							<th>支付宽限期：</th>
							<td></td>
						</tr>
						<tr>
							<th>首付款付款日：</th>
							<td></td>
							<th>提款起息日：</th>
							<td></td>
						</tr>
						<tr>
							<th>付款周期后几天付款：</th>
							<td></td>
							<th>首付款到期日：</th>
							<td></td>
						</tr>
						<tr>
							<th>罚息率：</th>
							<td colspan="3"></td>
						</tr>

					</table>
					<div id="tb2">
						<table class="formTable">
							<tr>
								<th>租约编码：</th>
								<td>LS2014060001</td>
								<th>租赁日期：</th>
								<td>2014-06-16</td>
							</tr>
							<tr>
								<th>发票币种：</th>
								<td><select name="sel">
										<option value="人民币">人民币</option>
										<option value="欧元">欧元</option>
										<option value="港币">港币</option>
										<option value="日元">日元</option>
								</select> <span>1：</span><input type="text" class="required"
									value="1.0000000">
								</td>
								<th>信用额度：</th>
								<td><input type="text" /><span class="inputInfo"
									style="padding-left:5px;">元</span>
								</td>
							</tr>
							<tr>
								<th>还款方式：</th>
								<td><input type="radio" name="r1" value="r1" checked />等额本息
									<input type="radio" name="r1" value="r2" />等额本金 <input
									type="radio" name="r1" value="r3" />平息</td>
								<th>平息率：</th>
								<td>0.00%</td>
							</tr>
							<tr>
								<th>利率类型：</th>
								<td colspan="3"><input type="radio" name="r11" value="r11"
									checked />固定利率 <input type="radio" name="r11"
									value="r12" />浮动利率</td>
							</tr>
							<tr>
								<th>利率：</th>
								<td colspan="3"><input type="text" size="10"
									class="required" value="11.80%" /></td>
							</tr>
							<tr>
								<th>付款周期：</th>
								<td colspan="3"><input type="radio" name="r3" checked />月结
									<input type="radio" name="r3" />季结 <input type="radio"
									name="r3" />半年结 <input type="radio" name="r3" />年结
								</td>
							</tr>
							<tr>
								<th>付款期数：</th>
								<td><input type="text" class="required" size="15" />
								</td>
								<th>支付宽限期：</th>
								<td><input type="text" size="10" class="required" value="5" />
								</td>
							</tr>
							<tr>
								<th>首付款付款日：</th>
								<td><input type="text" class="date" style="float:left;"
									size="15" /><a class="inputDateButton" href="javascript:;"></a>
								</td>
								<th>提款起息日：</th>
								<td><input type="text" class="date" style="float:left;"
									size="15" /><a class="inputDateButton" href="javascript:;"></a>
								</td>
							</tr>
							<tr>
								<th>付款周期后几天付款：</th>
								<td>5</td>
								<th>首付款到期日：</th>
								<td><input type="text" class="required date"
									style="float:left;" size="15" /><a class="inputDateButton"
									href="javascript:;"></a>
								</td>
							</tr>
							<tr>
								<th>罚息率：</th>
								<td colspan="3"><input type="text" size="10"
									class="required" value="0.05%" />
								</td>
							</tr>

						</table>

					</div>
				</div>
				<div class="tab2">

					<div class="panelBar" id="page4_panelBar">
						<ul class="toolBar">
							<li><a class="add" href="page4_add.html" target="dialog"
								mask="true"
								title="租约管理→关键条款→高级还款方式→新增"
								width="400" height="300" rel="add_page1"><span>新增</span>
							</a>
							</li>
							<li><a class="edit" href="goods_modify.html?uid={sid_user} "
								target="dialog" mask="true" width="484" height="485"><span>修改</span>
							</a>
							</li>
							<li><a class="delete"
								href="demo/common/ajaxDone.html?uid={sid_user}"
								target="ajaxTodo" title="确定要删除吗?"><span>删除</span>
							</a>
							</li>

						</ul>
					</div>
					<table class="table" width="1167px" height="100%" layoutH="156">
						<thead>
							<tr>
								<th width="127px">期数</th>
								<th widht="345px">只付利息</th>
								<th widht="345px">固定本金</th>
								<th widht="350px">固定租金</th>

							</tr>
						<tbody>

						</tbody>
					</table>

				</div>
				<div class="tab3">
					<div class="panelBar" id="page4_panelBar2">
						<ul class="toolBar">
							<li><a class="haha1" href="page4_yici.html" mask="true"
								target="dialog"
								title="租约管理→关键条款→收付款情况→一次性费用"
								width="400" height="352" rel="add_page1"><span
									class="span1"><img class="img1" src="img/2.png"
										style="padding-left:0px;" /> 一次性费用</span>
							</a>
							</li>
							<li><a class="haha2" href="page4_anjie.html" width="550"
								mask="true" height="400"
								title="租约管理→关键条款→收付款情况→按揭贷款"
								target="dialog"><span class="span2"><img
										class="img2" src="img/3.png" /> 按揭贷款</span>
							</a>
							</li>
							<li><a class="haha3" href="page4_yici.html" target="dialog"
								mask="true"
								title="租约管理→关键条款→收付款情况→周期性费用"
								width="400" height="352"><span class="span3"><img
										class="img3" src="img/4.png" />周期性费用</span>
							</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="tab4">
					<div class="panelBar" id="page4_panelBar3">
						<ul class="toolBar">
							<li><a class="haha1" href="#"><span class="span4"><img
										class="img4" src="img/page4_1.png" style="padding-left:0px;" />
										填写上线数据</span>
							</a>
							</li>
							<li><a class="haha2" href="#"><img class="img5"
									src="img/page4_2.png" /> 执行上线</span>
							</a>
							</li>
							<li><a class="haha3" href="#"><img class="img6"
									src="img/page4_3.png" />收款</span>
							</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="tabsFooter">
				<div class="tabsFooterContent"></div>
			</div>
		</div>
	</div>
</body>
</html>