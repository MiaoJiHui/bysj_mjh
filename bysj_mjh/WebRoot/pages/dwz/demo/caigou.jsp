

<style type="text/css">
div.box1 {
	width: 100%;
	height: 40px;
	border-bottom: 1px solid #B8D0D6;
	padding: 5px;
	background: url('/themes/default/images/pageHeader_bg.png') repeat-x
		scroll 0% 0% #EBF0F5;
}

.headBar {
	float: left;
	border-right: 1px solid #B8D0D6;
	padding-right: 4px;
	padding-left: 3px;
	font-weight: bold;
	color: #183152;
}

.headBar a:hover,.selected1 {
	float: left;
	color: #CE171E;
	text-decoration: none;
	border-bottom: 2px solid #CE171E;
}

.headBar a {
	padding-bottom: 5px;
	padding-left: 2px;
	padding-right: 2px;
	/*color:#183152;*/
	cursor: pointer;
}

.changdu40 td {
	width: 400px;
}

.formTable th {
	width: 173px;
}

.lnav ul {
	color: #CE171E;
	text-decoration: none;
	border-bottom: 2px solid #CE171E;
	cursor: pointer;
}

.background2 {
	color: #CE171E;
	/*text-decoration: none;*/
}
</style>
<!--<script type="text/javascript">-->

<!--$(function(){-->
<!--$("#id").loadUrl("pageAjax.html");-->
<!--$(".test ul li a").click(function(){-->
<!--cancel();-->
<!--$(this).attr("class","selected1")-->
<!--var page = $(this).attr("ajaxTab");-->
<!--var loadID = "pageAjax.html #"+page;-->
<!--$("#id").load(loadID);-->
<!--});-->
<!--});-->

<!--function cancel(){-->
<!--$(".test ul li a").each(function(){-->
<!--$(this).attr("class","")-->
<!--});-->
<!--}-->

<!--</script>-->

<script type="text/javascript">
    $(document).ready(function(){
        $("#div").loadUrl("caigou1.html");
        $("#a1").addClass("background2");
        $(".a").click(function(){
//            if($(this)==$("a2")){alert(1);$("#head").text("采购入库→入库")};
//            if($(this)==$("a3")){$("#head").text("采购入库→付款结算")};

            $(".test ul li a").each(function(){
                $(this).removeClass("background2");
            });
//                    alert($(this).text())
//                    $(this).css("color","#CE171E");
            $(this).addClass("background2");

        });
        $("#a2").click(function(){
           $("#head").text("采购入库→入库");
            return false ;
        });
        $("#a1").click(function(){
            $("#head").text("采购入库→采购订单");
            return false ;
        });
        $("#a3").click(function(){
            $("#head").text("采购入库→付款结算");
            return false ;
        });
    });
</script>
<div class="box1" style="margin-bottom: 0px;">
	<div id="head"
		style="padding: 5px;color: #183152;text-align: center; font-size: 16px; font-weight: bold;">采购入库→采购订单</div>
	<div class="test">
		<ul>
			<li class="headBar"><a id="a1" class="a" href="caigou1.jsp"
				target="ajax" rel="div">采购订单</a>
			</li>
			<li class="headBar"><a id="a2" class="a" href="caigou2.jsp"
				target="ajax" rel="div">入库</a>
			</li>
			<li class="headBar"><a id="a3" class="a" href="caigou3.jsp"
				target="ajax" rel="div">付款结算</a>
			</li>

		</ul>
	</div>
</div>

<div id="div">
	<!--<form id="pagerForm" method="post" action="bill_information.html">-->
	<!--<input type="hidden" name="status" value="${param.status}">-->
	<!--<input type="hidden" name="keywords" value="${param.keywords}" />-->
	<!--<input type="hidden" name="pageNum" value="1" />-->
	<!--<input type="hidden" name="numPerPage" value="${model.numPerPage}" />-->
	<!--<input type="hidden" name="orderField" value="${param.orderField}" />-->
	<!--</form>-->


	<!--<div class="pageHeader2" style="padding:5px; background-color: #EBF0F5;">-->
	<!--<form onsubmit="return navTabSearch(this);" action="bill_information.html" method="post">-->
	<!--<div class="searchBar">-->
	<!--&lt;!&ndash;<ul class="searchContent">-->
	<!--<li>-->
	<!--<label>货品名称</label>-->
	<!--<input type="text"/>-->
	<!--</li>-->
	<!--<li>-->
	<!--<select class="combox" name="province">-->
	<!--<option value="">所有省市</option>-->
	<!--<option value="北京">北京</option>-->
	<!--<option value="上海">上海</option>-->
	<!--<option value="天津">天津</option>-->
	<!--<option value="重庆">重庆</option>-->
	<!--<option value="广东">广东</option>-->
	<!--</select>-->
	<!--</li>-->
	<!--</ul>-->
	<!--&ndash;&gt;-->
	<!--<table class="searchContent">-->
	<!--<tr>-->
	<!--<td>-->
	<!--仓库号：<input type="text" size="15" />-->
	<!--</td>-->
	<!--<td>-->
	<!--仓库所属公司：<input type="text" size="20" />-->
	<!--</td>-->

	<!--<td>-->
	<!--仓库地址：<input type="text" size="20" />-->
	<!--</td>-->

	<!--<td>-->
	<!--仓库类别：-->
	<!--</td>-->
	<!--<td>-->
	<!--<select class="combox" name="storage_type" >-->
	<!--<option value="自有仓库">自有仓库</option>-->
	<!--<option  value="营业仓库">营业仓库</option>-->
	<!--</select>-->
	<!--</td>-->
	<!--<td>-->
	<!--仓库负责人：<input type="text" size="10"/>-->
	<!--</td>-->
	<!--<ul style="float:right;">-->
	<!--<li style="float:right;"><a class="button" href="storage_index.html" target="dialog" height="320" width="430" mask="true" title="查询框"><span>高级检索</span></a></li>-->
	<!--<li style="float:right;padding-right:8px;"><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>-->
	<!--</ul>-->

	<!--</tr>-->
	<!--</table>-->
	<!--&lt;!&ndash;<div class="subBar">&ndash;&gt;-->
	<!--&lt;!&ndash;<ul>&ndash;&gt;-->
	<!--&lt;!&ndash;<li><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>&ndash;&gt;-->
	<!--&lt;!&ndash;<li><a class="button" href="storage_index.html" target="dialog" height="320" width="430" mask="true" title="查询框"><span>高级检索</span></a></li>&ndash;&gt;-->
	<!--&lt;!&ndash;</ul>&ndash;&gt;-->
	<!--&lt;!&ndash;</div>&ndash;&gt;-->
	<!--</div>-->
	<!--</form>-->
	<!--</div>-->
	<!--<div class="pageContent">-->
	<!--<div class="panelBar">-->
	<!--<ul class="toolBar">-->
	<!--<li><a class="add" href="storage_add.html" target="dialog" mask="true" height="354" width="458"><span>添加</span></a></li>-->
	<!--<li><a class="delete" href="demo/common/ajaxDone.html?uid={sid_user}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>-->
	<!--<li><a class="edit" href="storage_modify.html?uid={sid_user}" mask="true" target="dialog" height="354" width="427"><span>修改</span></a></li>-->
	<!--<li class="line">line</li>-->
	<!--<li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="确定要导出这些记录吗?"><span>导出EXCEL</span></a></li>-->
	<!--</ul>-->
	<!--</div>-->
	<!--<div class="grid">-->
	<!--<input id="sid_user" type="hidden" value="1">-->
	<!--<div class="gridHeader"></div>-->
	<!--<div class="gridScroller" style="width: 1159px; height: 349px; overflow: auto;" layouth="138">-->
	<!--<div class="gridTbody">-->
	<!--<table class="table" width="100%" layoutH="138">-->
	<!--<thead>-->
	<!--<tr>-->
	<!--<th width="40">序号</th>-->
	<!--<th width="80">仓库号</th>-->
	<!--<th width="150">仓库所属公司</th>-->
	<!--<th width="150">仓库地址</th>-->
	<!--<th width="80" >仓库规格</th>-->
	<!--<th width="80">仓库类别</th>-->
	<!--<th width="70" >仓库负责人</th>    &lt;!&ndash;<th width="80" align="center">供应商</th>&ndash;&gt;-->
	<!--<th width="150">备注</th>-->
	<!--</tr>-->
	<!--</thead>-->
	<!--<tbody>-->
	<!--<tr target="sid_user" rel="1">-->
	<!--<td>1</td>-->
	<!--<td>A120113196309052434</td>-->
	<!--<td>上海远大公司</td>-->
	<!--<td>上海市金山区金山大道</td>-->
	<!--<td>200平方米</td>-->
	<!--<td>自有仓库</td>-->
	<!--<td>王大海</td>-->

	<!--<td>beizhubeizhubeizhubeizhu</td>-->


	<!--</tr>-->
	<!--<tr target="sid_user" rel="2">-->
	<!--<td>2</td>-->
	<!--<td>A120113196309052434</td>-->
	<!--<td>上海远大公司</td>-->
	<!--<td>上海市金山区金山大道</td>-->
	<!--<td>200平方米</td>-->
	<!--<td>自有仓库</td>-->
	<!--<td>王大海</td>-->
	<!--<td>beizhubeizhubeizhubeizhu</td>-->


	<!--</tr>-->
	<!--<tr target="sid_user" rel="3">-->
	<!--<td>3</td>-->
	<!--<td>A120113196309052434</td>-->
	<!--<td>上海远大公司</td>-->
	<!--<td>上海市金山区金山大道</td>-->
	<!--<td>200平方米</td>-->
	<!--<td>自有仓库</td>-->
	<!--<td>王大海</td>-->
	<!--<td>beizhubeizhubeizhubeizhu</td>-->


	<!--</tr>-->
	<!--<tr target="sid_user" rel="4">-->
	<!--<td>4</td>-->
	<!--<td>A120113196309052434</td>-->
	<!--<td>上海远大公司</td>-->
	<!--<td>上海市金山区金山大道</td>-->
	<!--<td>200平方米</td>-->
	<!--<td>自有仓库</td>-->
	<!--<td>王大海</td>-->
	<!--<td>beizhubeizhubeizhubeizhu</td>-->

	<!--</tr>-->
	<!--<tr target="sid_user" rel="5">-->
	<!--<td>5</td>-->
	<!--<td>A120113196309052434</td>-->
	<!--<td>上海远大公司</td>-->
	<!--<td>上海市金山区金山大道</td>-->
	<!--<td>200平方米</td>-->
	<!--<td>自有仓库</td>-->
	<!--<td>王大海</td>-->
	<!--<td>beizhubeizhubeizhubeizhu</td>-->


	<!--</tr>-->
	<!--</tbody>-->
	<!--</table>-->
	<!--</div>-->
	<!--</div>-->
	<!--</div>-->
	<!--</div>-->
	<!--<div class="panelBar">-->
	<!--<div class="pages">-->
	<!--<span>显示</span>-->
	<!--<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">-->
	<!--<option value="20">20</option>-->
	<!--<option value="50">50</option>-->
	<!--<option value="100">100</option>-->
	<!--<option value="200">200</option>-->
	<!--</select>-->
	<!--<span>条，共${totalCount}条</span>-->
	<!--</div>-->

	<!--<div class="pagination" targetType="navTab" totalCount="200" numPerPage="20" pageNumShown="10" currentPage="1"></div>-->

	<!--</div>-->

</div>

