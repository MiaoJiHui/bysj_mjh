

<style type="text/css">
div.box1 {
	background-color: #EBF0F5;
	width: 100%;
	height: 40px;
	border-bottom: 1px solid #B8D0D6;
	padding: 5px;
}

div.box2 {
	background: url(img/p.jpg);
	width: 100%;
	height: 180px;
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
               $("#div").loadUrl("page/ajax/page1.html");
                $("#a1").addClass("background2");
                $(".a").click(function(){
                    $(".test ul li a").each(function(){
                        $(this).removeClass("background2");
                    });
//                    alert($(this).text())
//                    $(this).css("color","#CE171E");
                    $(this).addClass("background2");

                });
            });
        </script>
<div class="box1" style="margin-bottom: 1px;">
	<div
		style="padding: 5px;color: Red; font-size: 16px; font-weight: bold;">LS2014060001</div>
	<div style="float:left;">
		<span style="padding-left:5px;padding-right:425px;color:gray;">上海飞航租赁有限公司</span>
	</div>
	<div class="test">
		<ul>
			<li class="headBar"><a id="a1" class="a"
				href="page/ajax/page1.html" target="ajax" rel="div">租约首页</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page2.html"
				target="ajax" rel="div">任务分配</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page3.html"
				target="ajax" rel="div">执行摘要</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page4.html"
				target="ajax" rel="div">关键条例</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page5.html"
				target="ajax" rel="div">租约关联</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page6.html"
				target="ajax" rel="div">租赁资产</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page7.html"
				target="ajax" rel="div">相关文档</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page8.html"
				target="ajax" rel="div">提款计划</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page9.html"
				target="ajax" rel="div">租约变更</a>
			</li>
			<li class="headBar"><a class="a" href="page/ajax/page10.html"
				target="ajax" rel="div">租约终止</a>
			</li>
		</ul>
	</div>
</div>

<div id="div">
	<div class="box2"></div>
	<div class="box3">
		<table class="formTable" style="width:99%;">
			<tr>
				<td colspan="4" style="background-color: #EEF2F6;"><span
					style="text-align:left;padding-left:10px;color:#183152;font-weight: bold;">基本信息</span>
					<span style="padding-left:1006px;"> <a
						style="color:#00F;font-weight: bold;" href="page1_modify.html"
						target="dialog" title="租约管理→基本信息→修改"
						width="500" mask="true" height="300">【修改数据】</a> <!--<a  style="color:#00F;font-weight: bold;" href="openDialog('租约管理→基本信息→修改', '/page1_modify.html', 500, 300, '','-1')" target="dialog" width="500" height="312">【修改数据】</a>

                <a class="icon" href="page1_modify.html" target="dialog" rel="z1" title="数据导入" width="500" height="150">【xiugai 】</a>
                --> </span></td>

			</tr>
			<tr class="changdu40">
				<th>租赁日期：</th>
				<td>2014-06-16</td>
				<th>租约编码：</th>
				<td>LS2014060001</td>
			</tr>
			<tr class="changdu40">
				<th>提案编码：</th>
				<td>PP2014060002</td>
				<th>案件经理：</th>
				<td>杨昳</td>
			</tr>
			<tr class="changdu40">
				<th>主题：</th>
				<td>设备租赁测试</td>
				<th>承租人：</th>
				<td>上海飞航租赁有限公司</td>
			</tr>
			<tr class="changdu40">
				<th>租约总额：</th>
				<td></td>
				<th>首付款：</th>
				<td>/</td>
			</tr>
			<tr class="changdu40">
				<th>费用余额：</th>
				<td></td>
				<th>保证金：</th>
				<td></td>
			</tr>
			<tr class="changdu40">
				<th>贷款总额：</th>
				<td>/</td>
				<th>待提款金额：</th>
				<td></td>
			</tr>
			<tr class="changdu40">
				<th>付款次数：</th>
				<td></td>
				<th>付款期限：</th>
				<td></td>
			</tr>
		</table>
	</div>
</div>
