<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<link rel="Shortcut Icon" href=static/img/lufei.ico>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>mjh's 毕业设计</title>

<link href="dwz/themes/default/style.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="dwz/themes/css/core.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="dwz/themes/css/print.css" rel="stylesheet" type="text/css"
	media="print" />
<link href="dwz/uploadify/css/uploadify.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="dwz/themes/css/application.css" rel="stylesheet"
	type="text/css" />
<!--[if IE]>
<link href="themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->

<!--[if lte IE 9]>
<script src="js/speedup.js" type="text/javascript"></script>
<![endif]-->

<script src="dwz/js/jquery-1.7.2.js" type="text/javascript"></script>
<script src="dwz/js/jquery.cookie.js" type="text/javascript"></script>
<script src="dwz/js/jquery.validate.js" type="text/javascript"></script>
<script src="dwz/js/jquery.bgiframe.js" type="text/javascript"></script>
<!-- <script src="/xheditor/xheditor-1.2.1.min.js" type="text/javascript"></script> -->
<!-- <script src="/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script> -->
<script src="dwz/uploadify/scripts/jquery.uploadify.js"
	type="text/javascript"></script>

<!-- svg图表  supports Firefox 3.0+, Safari 3.0+, Chrome 5.0+, Opera 9.5+ and Internet Explorer 6.0+ -->
<script type="text/javascript" src="dwz/chart/raphael.js"></script>
<script type="text/javascript" src="dwz/chart/g.raphael.js"></script>
<script type="text/javascript" src="dwz/chart/g.bar.js"></script>
<script type="text/javascript" src="dwz/chart/g.line.js"></script>
<script type="text/javascript" src="dwz/chart/g.pie.js"></script>
<script type="text/javascript" src="dwz/chart/g.dot.js"></script>

<script type="text/javascript" src="dwz/bin/dwz.min.js"></script>
<script type="text/javascript" src="dwz/js/toolbar.js"></script>

<!-- 可以用dwz.min.js替换前面全部dwz.*.js (注意：替换是下面dwz.regional.zh.js还需要引入)
<script src="bin/dwz.min.js" type="text/javascript"></script>
-->
<script src="dwz/js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		DWZ.init("pages/dwz/dwz.frag.xml", {
			loginUrl : "pages/login.jsp",
			loginTitle : "登录", // 弹出登录对话框
			//		loginUrl:"login.jsp",	// 跳到登录页面
			statusCode : {
				ok : 200,
				error : 300,
				timeout : 301
			}, //【可选】
			pageInfo : {
				pageNum : "pageNum",
				numPerPage : "numPerPage",
				orderField : "orderField",
				orderDirection : "orderDirection"
			}, //【可选】
			keys : {
				statusCode : "statusCode",
				message : "message"
			}, //【可选】
			ui : {
				hideMode : 'offsets'
			}, //【可选】hideMode:navTab组件切换的隐藏方式，支持的值有’display’，’offsets’负数偏移位置的值，默认值为’display’
			debug : false, // 调试模式 【true|false】
			callback : function() {
				initEnv();
				$("#themeList").theme({
					themeBase : "dwz/themes"
				}); // themeBase 相对于index页面的主题base路径
			}
		});
	});
</script>
</head>

<body scroll="no">
	<div id="layout">
		<div id="header">
			<div class="headerNav">
				<a class="logo" no-repeat" href="#">标志</a>
				<ul class="nav">
					<li id="user"><span style="color:#C7DBEA">${sessionScope.username}
							, 您好</span>
					</li>
					<li id="switchEnvBox"><a href="javascript:">（<span>上海</span>）切换城市</a>
						<ul>
							<li><a href="sidebar_1.jsp">北京</a>
							</li>
							<li><a href="sidebar_2.jsp">上海</a>
							</li>
							<li><a href="sidebar_2.jsp">深圳</a>
							</li>
							<li><a href="sidebar_2.jsp">广州</a>
							</li>
							<li><a href="sidebar_2.jsp">南京</a>
							</li>
							<li><a href="sidebar_2.jsp">杭州</a>
							</li>
						</ul></li>

					<li><a href="header/password" target="dialog" mask="true"
						width="400" height="220">设置</a></li>
					<li><a href="header/adminUser" mask="true" target="dialog"
						id="adminUser" rel="adminUser">用户管理</a></li>
					<li><a href="http://blog.csdn.net/orcaielf?viewmode=contents"
						target="_blank">博客</a></li>
					<!-- 		<li><a href="http://weibo.com/dwzui" target="_blank">微博</a></li> -->
					<li><a href="/bysj_mjh/pages/login.jsp">退出</a>
					</li>
				</ul>
				<ul class="themeList" id="themeList">
					<li theme="default"><div class="selected">蓝色</div>
					</li>
					<li theme="green"><div>绿色</div>
					</li>
					<!--<li theme="red"><div>红色</div></li>-->
					<li theme="purple"><div>紫色</div>
					</li>
					<li theme="silver"><div>银色</div>
					</li>
					<li theme="azure"><div>天蓝</div>
					</li>
				</ul>
			</div>

			<!-- navMenu -->

		</div>

		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse">
						<div></div>
					</div>
				</div>
			</div>
			<div id="sidebar">
				<div class="toggleCollapse">
					<h2>主菜单</h2>
					<div>收缩</div>
				</div>

				<div class="accordion" fillSpace="sidebar">
					<div class="accordionHeader">
						<h2>
							<span>Folder</span>进销存管理
						</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder expand">

							<li><a>基本信息</a>
								<ul>
									<li><a href="goods/list?1=1" target="navTab"
										rel="goods_information" id="goods_information" fresh="true">货品信息</a>
									</li>

								</ul>
								<ul>
									<li><a href="supplier/list?2=2" target="navTab"
										fresh="true" rel="supplier_information"
										id="supplier_information">供应商信息</a>
									</li>

								</ul>
								<ul>
									<li><a href="storage/list?3=3" target="navTab"
										fresh="true" rel="storage_information"
										id="storage_information">仓库信息</a>
									</li>

								</ul>
								<ul>
									<li><a href="staff/list" target="navTab" fresh="true"
										rel="staff_information" id="staff_information">人员信息</a>
									</li>

								</ul>
								
								</li>

							<li><a>采购入库</a>
								<ul>
									<li><a href="purchase/list" target="navTab"
										id="purchase_order" rel="purchase_order">采购订单</a>
									</li>
								</ul>
								<ul>
									<li><a href="in/list" target="navTab" rel="in_information"
										id="in_information">入库</a></li>
								</ul>

								<ul>
									<li><a href="pay/list" target="navTab"
										rel="pay_information" id="pay_information">付款结算</a>
									</li>
								</ul>
								</li>
							<li><a>销售出库</a>
								<ul>
									<li><a href="out/list" target="navTab"
										rel="out_information" id="out_information">出库</a>
									</li>
								</ul></li>

							<li><a>库存管理</a>
								<ul>
									<li><a href="stock/list" target="navTab"
										rel="stock_information" id="stock_information">库存表</a>
									</li>
								</ul></li>

						<!-- 	<li><a href="pages/dwz/zuyue_index.jsp" target="navTab">租约管理</a>
							</li>
							<li><a href="pages/dwz/page_2/page1_index.jsp"
								target="navTab">资产清单</a></li> -->
						<!-- 	<li><a href="tabsPage.jsp" target="navTab">主框架面板</a>
								<ul>
									<li><a href="pages/dwz/main.jsp" target="navTab"
										rel="main">我的主页</a></li>
									<li><a href="http://www.baidu.com" target="navTab"
										rel="page1">页面一(外部页面)</a>
									</li>
									<li><a href="pages/dwz/demo_page2.jsp" target="navTab"
										rel="external" external="true">iframe navTab页面</a>
									</li>
									<li><a href="pages/dwz/demo_page1.jsp" target="navTab"
										rel="page1" fresh="false">替换页面一</a>
									</li>
									<li><a href="pages/dwz/demo_page2.jsp" target="navTab"
										rel="page2">页面二</a></li>
									<li><a href="pages/dwz/demo_page4.jsp" target="navTab"
										rel="page3" title="页面三（自定义标签名）">页面三</a>
									</li>
									<li><a href="pages/dwz/demo_page4.jsp" target="navTab"
										rel="page4" fresh="false">测试页面（fresh="false"）</a>
									</li>
									<li><a href="pages/dwz/w_editor.jsp" target="navTab">表单提交会话超时</a>
									</li>
									<li><a href="pages/dwz/demo/common/ajaxTimeout.jsp"
										target="navTab">navTab会话超时</a></li>
									<li><a href="pages/dwz/demo/common/ajaxTimeout.jsp"
										target="dialog">dialog会话超时</a></li>
									<li><a href="pages/dwz/index_menu.jsp" target="_blank">横向导航条</a>
									</li>
								</ul></li>
 -->
							<!-- <li><a>常用组件</a>
								<ul>
									<li><a href="pages/dwz/w_panel.jsp" target="navTab"
										rel="w_panel">面板</a></li>
									<li><a href="pages/dwz/w_tabs.jsp" target="navTab"
										rel="w_tabs">选项卡面板</a></li>
									<li><a href="pages/dwz/w_dialog.jsp" target="navTab"
										rel="w_dialog">弹出窗口</a></li>
									<li><a href="pages/dwz/w_alert.jsp" target="navTab"
										rel="w_alert">提示窗口</a></li>
									<li><a href="pages/dwz/w_list.jsp" target="navTab"
										rel="w_list">CSS表格容器</a></li>
									<li><a href="pages/dwz/demo_page1.jsp" target="navTab"
										rel="w_table">表格容器</a>
									</li>
									<li><a href="pages/dwz/w_removeSelected.jsp"
										target="navTab" rel="w_table">表格数据库排序+批量删除</a>
									</li>
									<li><a href="pages/dwz/w_tree.jsp" target="navTab"
										rel="w_tree">树形菜单</a></li>
									<li><a href="pages/dwz/w_accordion.jsp" target="navTab"
										rel="w_accordion">滑动菜单</a>
									</li>
									<li><a href="pages/dwz/w_editor.jsp" target="navTab"
										rel="w_editor">编辑器</a></li>
									<li><a href="pages/dwz/w_datepicker.jsp" target="navTab"
										rel="w_datepicker">日期控件</a>
									</li>
									<li><a href="pages/dwz/demo/database/db_widget.jsp"
										target="navTab" rel="db">suggest+lookup+主从结构</a>
									</li>
									<li><a href="pages/dwz/demo/database/treeBringBack.jsp"
										target="navTab" rel="db">tree查找带回</a>
									</li>
									<li><a href="pages/dwz/demo/sortDrag/1.jsp"
										target="navTab" rel="sortDrag">单个sortDrag示例</a>
									</li>
									<li><a href="pages/dwz/demo/sortDrag/2.jsp"
										target="navTab" rel="sortDrag">多个sortDrag示例</a>
									</li>
									<li><a href="pages/dwz/demo/sortDrag/form.jsp"
										target="navTab" rel="sortDrag">可拖动表单示例</a>
									</li>
								</ul></li>

							<li><a>表单组件</a>
								<ul>
									<li><a href="pages/dwz/w_validation.jsp" target="navTab"
										rel="w_validation">表单验证</a>
									</li>
									<li><a href="pages/dwz/w_button.jsp" target="navTab"
										rel="w_button">按钮</a></li>
									<li><a href="pages/dwz/w_textInput.jsp" target="navTab"
										rel="w_textInput">文本框/文本域</a>
									</li>
									<li><a href="pages/dwz/w_combox.jsp" target="navTab"
										rel="w_combox">下拉菜单</a></li>
									<li><a href="pages/dwz/w_checkbox.jsp" target="navTab"
										rel="w_checkbox">多选框/单选框</a>
									</li>
									<li><a href="pages/dwz/demo_upload.jsp" target="navTab"
										rel="demo_upload">iframeCallback表单提交</a>
									</li>
									<li><a href="pages/dwz/w_uploadify.jsp" target="navTab"
										rel="w_uploadify">uploadify多文件上传</a>
									</li>
								</ul></li>
							<li><a>组合应用</a>
								<ul>
									<li><a href="pages/dwz/demo/pagination/layout1.jsp"
										target="navTab" rel="pagination1">局部刷新分页1</a>
									</li>
									<li><a href="pages/dwz/demo/pagination/layout2.jsp"
										target="navTab" rel="pagination2">局部刷新分页2</a>
									</li>
								</ul></li>
							<li><a>图表</a> 
								<ul>
									<li><a href="pages/dwz/chart/test/barchart.jsp"
										target="navTab" rel="chart">柱状图(垂直)</a>
									</li>
									<li><a href="pages/dwz/chart/test/hbarchart.jsp"
										target="navTab" rel="chart">柱状图(水平)</a>
									</li>
									<li><a href="pages/dwz/chart/test/linechart.jsp"
										target="navTab" rel="chart">折线图</a>
									</li>
									<li><a href="pages/dwz/chart/test/linechart2.jsp"
										target="navTab" rel="chart">曲线图</a>
									</li>
									<li><a href="pages/dwz/chart/test/linechart3.jsp"
										target="navTab" rel="chart">曲线图(自定义X坐标)</a>
									</li>
									<li><a href="pages/dwz/chart/test/piechart.jsp"
										target="navTab" rel="chart">饼图</a>
									</li>
								</ul></li>
								-->
							<li><a href="pages/dwz/dwz.frag.xml" target="navTab"
								external="true">dwz.frag.xml</a></li>
							<li><a href="pages/dwz/progress.txt" target="navTab"
								external="true">毕业设计进度</a></li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2>
							<span>Folder</span>典型页面
						</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder treeCheck">
							<li><a href="pages/dwz/demo_page1.jsp" target="navTab"
								rel="demo_page1">查询我的客户</a>
							</li>
							<li><a href="pages/dwz/demo_page1.jsp" target="navTab"
								rel="demo_page2">表单查询页面</a>
							</li>
							<li><a href="pages/dwz/demo_page4.jsp" target="navTab"
								rel="demo_page4">表单录入页面</a>
							</li>
							<li><a href="pages/dwz/demo_page5.jsp" target="navTab"
								rel="demo_page5">有文本输入的表单</a>
							</li>
							<li><a href="javascript:;">有提示的表单输入页面</a>
								<ul>
									<li><a href="javascript:;">页面一</a>
									</li>
									<li><a href="javascript:;">页面二</a>
									</li>
								</ul></li>
							<li><a href="javascript:;">选项卡和图形的页面</a>
								<ul>
									<li><a href="javascript:;">页面一</a>
									</li>
									<li><a href="javascript:;">页面二</a>
									</li>
								</ul></li>
							<li><a href="javascript:;">选项卡和图形切换的页面</a>
							</li>
							<li><a href="javascript:;">左右两个互动的页面</a>
							</li>
							<li><a href="javascript:;">列表输入的页面</a>
							</li>
							<li><a href="javascript:;">双层栏目列表的页面</a>
							</li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2>
							<span>Folder</span>流程演示
						</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree">
							<li><a href="pages/dwz/newPage1.jsp" target="dialog"
								rel="dlg_page">列表</a></li>
							<li><a href="pages/dwz/newPage1.jsp" target="dialog"
								rel="dlg_page2">列表</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent">
						<!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span
										class="home_icon">我的主页</span> </span> </a>
							</li>
						</ul>
					</div>
					<div class="tabsLeft">left</div>
					<!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div>
					<!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">我的主页</a>
					</li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<div class="accountInfo">
							<div class="alertInfo">
								<p>
									<a href="#" target="_blank" style="line-height:19px"><span>BX1110
											30</span> </a>
								</p>
								<p>
									<a href="#" target="_blank" style="line-height:19px">缪济辉</a>
								</p>
							</div>
							<div class="right"></div>
							<p>
								<span>欢迎来到mjh's毕业设计 网站</span>
							</p>
							<p>系统完成时间：2015/05/02</p>
						</div>
						<div id="touch" class="pageFormContent" layoutH="80"
							style="margin-right:0px;font-weight:bold;font-size:20px;color:white;background:url('./static/img/666.jpg') 0 0 ;  background-repeat:no-repeat;background-attachment: fixed;">
						
							<%-- 毕业设计进度：<br> -------2015/2/27:
							从登陆页到主页已初步实现，剩余验证码的前后台验证，些许界面优化；但是到了主页之后，点击菜单，获取的href要改成
							controller里的方法的形式，而不是jsp。初步是能跳过去的，但是有bug，页面样式、编码等都加载不成功，这是今后要
							解决的难题！<br> -------2015/3/3:
							啥问题没解决，主要时间都花在工作上了。每天一小时在毕设的时间太少了。下次要解决的问题就是映射！让/**/的
							controller映射成功。研究一下。<br> -------2015/3/5:
							两天折腾下来，貌似无解。只能将dwz分离，把js,css等目录放在WebRoot目录下！拆成一个个单独的文件夹目录。拆分吧，
							要么明天问下项目经理再做决定。<br> -------2015/3/9:
							（验证码又出问题了），明天先解决验证码。问了PM，但是不是很理解。又折腾了一番，最后还是有问题。路径都是对的都访问不成功，不知道啥情况，
							希望明天早上能解决它！3月30就要中期答辩了还有20天左右，每天花3小时，60个小时应该够了！、
							感觉时间好快，中期答辩过了之后就是4月份了，5月份，6月就毕业了@！<br> -------2015/3/11:
							折腾了那么久，终于搞出来了。说下解决方法。首先映射不成功是因为springmvc拦截了所有请求，包括静态资源、xml的请求等。
							所以先在spring-mvc.xml配置映射。其次要在各页面把静态文件的路径都配成绝对路径。
							这个项目麻烦在jsp页面需要dwz.drag.xml的文件来初始化。所以请求到这个xml文件的时候总是出错。
							然后各种调试，终于成功@！感谢上帝。同时感谢PM！ <br> -------2015/3/12:
							需求已解決。就把系统当成是给电商的简单后台管理，进销存管理。主要是用来统计盈利情况，统计各商品情况等。
							大致分为基本信息管理，和进、销、存管理四个模块！映射的问题已完美解决， 用的方法是basePath！
							<base href="<%=basePath%>">
							。明天回家的任务就是数据库建表！最好完成一次增删改查！ <br> -------2015/3/18:
							登陆验证搞定！有精力可以深入优化 。进步优化为，验证码错误时，用户名和密码不清空！ <br>

							-------2015/3/19:
							登陆验证完美搞定！验证码错误时，将controller层中正确的用户名和密码用request.setAttribute("username",username)传到jsp层，
							然后再用value="${username}"放入input表单中 。终于把登陆验证搞定，现在开始建表！后台实现增删改查！
							还有登陆成功后，主页刷新之后会跳到登陆页，这个session机制有时间要把它完成，否则太low了。不过先解决CRUD，这个放到它后面！
							好，现在就剩下三步了。1：CRUD;2：session; 3：页面优化。
							这周回去把CRUD完成！解决一个页面，其他页面就很快了。加油吧！ <br> -------2015/3/22:
							知道失败两个字怎么写吗？两天周末，啥也没干！留给下周五天，自虐？好吧.....倒计时5天。没时间就放弃缓存等问题，把功能实现就好了。<br>
							-------2015/3/23:
							巨大的问题。ibatis模糊查询。怎么从Jsp传input属性到后台再到ibatis层来进行查询。倒计时4天！<br>
							-------2015/3/24:
							基本的模糊查询已解决。明天要解决的是select标签和日期的查询。争取半天解决，解决不了不实现了。先去搞add,update,和delete!
							ps:现在是25号下午13点30分，select的模糊查询是可以查了，但是不是活代码，那些查询的字段必须写死，所以今后的扩展性是0，但是鉴于没时间了就先这样吧
							日期查询，还是没搞成功，先放弃，中期答辩后还有时间就继续研究一下<br> -------2015/3/25:
							感觉搞不定了，困难重重啊。每天都会遇到新问题。新增出现问题，保存后的样式没有了，其实就是架构的问题。而且自己对dwz也不熟，不知道怎么处理。
							不知道明天能不能够解决，解决完add，还有update和delete。突然想到，明天可以用js ajax试一下。
							-------2015/3/26:
							我要放弃治疗了。难道明天熬夜的节奏？幸好后天是中期答辩，不过我想中期答辩就把毕设做完啊！感觉明天熬夜也做不完，除非通宵？疯了！
							-------2015/3/29:
							我只想说中期答辩很水。anyway，还剩下修改功能。下星期开始，只在下班后做毕业设计，给自己的限定时间是两周，包括周末。平时上班的时候，好好工作。
							好好学习！学技术！<br> -------2015/3/30:
							現在我已脑洞大开，哈哈，修改功能完成啦！！其余的时间就用来优化吧！太爽啦。平日上班，好好工作学习！<br>
							-------2015/4/01:
							好吧，修改功能还没完全完成，只要涉及到select标签的都有问题。获取option值总是获取不到，要么是ibatis报错，不报错了就页面获取不到值。
							感觉，这个问题要卡几天了。anyway，目标：4.25号之前完成毕设！ <br> -------2015/4/02:
							好像进度比我想象中的快。之所有那个list获取不成功是因为，c标签没引入！！shit！调试了几个小时！明天争取把它解决！获取option！感觉快了！<br>
							-------2015/4/06:
							我想说，除了excel导出又出了问题之外。其他应该都很顺利。CRUD基本完美实现了，没啥问题和bug了。听说5月初就要毕业答辩了，我得加快脚步了。
							必须4月中旬之前就搞定毕设。然后花半个月时间写毕业论文。<br>
							接下来的就只剩下，一个个新建各种表了然后一一实现CRUD，需求基本不改动了。最后再优化程序美化界面！Over！<br>
							-------2015/4/13:
							我对不起这个周末。看来定下的目标又要泡汤一次了。没事，重振旗鼓。加油。接下来就是重复劳动，和优化程序了。争取把代码和流程都更加熟悉。<br>

							-------2015/4/25: 毕业设计差不多完成了。来说说未实现的功能吧；<br>
							<div style="color:black;font-size:14px;font-weight:bold;">
							1、加解密，登录时对用户名和密码加密，登陆验证的时候再解密。 //放弃<br>
							2、session会话时间，超时后跳入登陆页。
							//已解决,session.setAttribute("nowTime",new
							Date()),调用时间-刚进入会话时的时间=超出时间 05/01 <br> 3、批量删除。 //放弃<br>
							4、对于用户权限授权。 //解决 05/01<br> 5、分页功能。 //没思路<br>
							其实这些才是最应该实现的技术难点，我不知道还剩几周的时间里，能不能完成。<br>
							</div> --%>

						</div>

					</div>

				</div>
			</div>
		</div>

	</div>

	<div id="footer">
		Copyright &copy; 2015 <a href="http://www.sdju.edu.cn/"
			target="_blank">上海电机学院 电子信息学院 MJH</a>
	</div>

	<!-- 注意此处js代码用于google站点统计，非DWZ代码，请删除 -->
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-16716654-1' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? ' https://ssl'
					: ' http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
		$("#touch").click(function(){
		     $(this).css("background","url('./static/img/dreambig.jpg')");
		     $(this).css("background-attachment","fixed");
		})
		$("#touch").mouseout(function(){
		     $(this).css("background","url('./static/img/666.jpg')");
		     $(this).css("background-attachment","fixed");
		})
	</script>

</body>
</html>
