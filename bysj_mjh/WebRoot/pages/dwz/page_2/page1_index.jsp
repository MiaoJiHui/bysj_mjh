<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<head>
    <title></title>
    <link rel="stylesheet" href="/bysj_mjh/dwz/themes/css/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="/bysj_mjh/dwz/js/jquery.ztree.core-3.5.js"></script>

    <style type="text/css">
        .tr th{
            height:21px;
            line-height: 21px;
        }
        input.focus,textarea.focus,input.date.focus{
            background-color:#FFC;
        }
        /*#div{*/
            /*width:220px;*/
            /*height:250px;*/
            /*position:fixed;*/
            /*z-index:1;*/
            /*border: 1px solid rgb(97, 119, 117);*/
            /*background: none repeat scroll 0% 0% rgb(240, 246, 228);*/
            /*display:none;*/
            /*left:659px;*/
        /*}*/
         /*#div.zTree li{*/

            /*padding-left:30px;*/
            /*margin: 0px;*/
            /*list-style: none outside none;*/
            /*line-height: 14px;*/
            /*text-align: left;*/
            /*white-space: nowrap;*/
            /*outline: 0px none;*/
            /*width:220px;*/
        /*}*/
        /*#div .zTree .button {*/
              /*background: url("/page_2/img/zTreeStandard.png");*/
        /*}*/
        /*.zTree li a{*/
            /*padding: 1px 3px 0px 0px;*/
            /*margin: 0px;*/
            /*cursor: pointer;*/
            /*height: 17px;*/
            /*color: #333;*/
            /*background-color: transparent;*/
            /*text-decoration: none;*/
            /*vertical-align: top;*/
            /*display: inline-block;*/
        /*}*/
        table.body td{
            cursor:text;
        }
        .minus{
        background-position:64px -55px;
        }
        /*#tree_2_ul{*/
            /*display:none;*/
        /*}*/
    </style>

    <script type="text/javascript" >
        $(document).ready(function(){
            $("#input").click(function(){
                $("#div").slideToggle(300);
            });
//            $("#test1").click(function(){
//                alert(1);
//            });
//            $("#span1").dblclick(function(){
//                alert(2);
//            });
////            $("body:not(:has(#input),#input)").click(function(){
////                $("#div").slideUp(300);
////            });
//            $("#tree_1_span").click(function(){
//               $("#input").val("针织机");
//            });
//            $("#tree_2_span").click(function(){
//                $("#input").val("针织机械");
//            });
//            $("#tree_2_1_span").click(function(){
//                $("#input").val("袜机");
//            });
//            $("#tree_2_2_span").click(function(){
//                $("#input").val("无缝系列");
//            });
//            $("#tree_2_3_span").click(function(){
//                $("#input").val("大圆机");
//            });
//            $("#tree_3_span").click(function(){
//                $("#input").val("挖掘机");
//            });
//            $("#tree_3_1_span").click(function(){
//                $("#input").val("重型挖机");
//            });
//            $("#tree_4_span").click(function(){
//                $("#input").val("汽车");
//            });
//
//
//            $("#tree_2_switch").click(function(){
//               $("#tree_2_ico").toggleClass("minus");
////                $(this).css("background-position","64px -55px");
//               $("#tree_2_ul").slideDown(300);
//            });

        });
    </script>
    <script type="text/javascript">
        var zTreeObj,
                setting = {
                    view: {
                        selectedMulti: false
                    }
                },
                zNodes =
                        [
                            {"name":"针织机"},
                            {"name": "针织机械", open: true,
                                children: [
//                                    { "name": "袜机", open: false,
//                                        children: [
//                                            {"name": "love"},
//                                            {"name": "tqq"}
//                                        ]},
                                    { "name": "袜机"},
                                    { "name": "无缝系列"},
                                    { "name": "大圆机"}]

                            },
                            {"name": "挖掘机", open: true,   //父节点
                                children: [
//                                    { "name": "袜机", open: false,
//                                        children: [
//                                            {"name": "love"},
//                                            {"name": "tqq"}
//                                        ]},
                                    { "name": "重型挖机"}]
                            },
                            {"name":"汽车"}

                        ];
        $(document).ready(function () {
            zTreeObj = $.fn.zTree.init($("#tree"), setting, zNodes);

        });

        $(document).ready(function () {
            $("#page1_input").click(function () {
                $("#page1_div").slideToggle(300);
            });
            $("#tree li a").click(function(){
                $("#page1_input").val($(this).text());
            });
        });
    </script>

</head>
<form id="pagerForm" method="post" action="#rel#">
    <input type="hidden" name="pageNum" value="1" />
    <input type="hidden" name="numPerPage" value="${model.numPerPage}" />
    <input type="hidden" name="orderField" value="${param.orderField}" />
    <input type="hidden" name="orderDirection" value="${param.orderDirection}" />
</form>

<div class="pageHeader">
    <form rel="pagerForm" onsubmit="return navTabSearch(this);" action="w_removeSelected.html" method="post">
        <div class="searchBar">
            <ul class="searchContent">
                    <span> 关键字：</span>
                    <input type="text" id="input2" style="color:grey;" size="50" value="请输入序列号、编号、名称、分类名称">
                    <span style="padding-left:20px;">资产分类：</span>
                    <input id="page1_input" type="text" value="" class="required">
                    <div id="page1_div" style="display:none;background-color:#f5f5f5;border:1px solid #B8D0D6;z-index:1000;margin-top: 5px; width: 260px;height:240px;overflow: auto;" >
                        <ul id="tree" class="ztree" style="width:250px;height:230px; overflow:auto;" >

                        </ul>
                    </div>
                        <!--<ul id="tree" class="zTree" style="margin-top: 5px; width: 220px; min-height: 200px; max-height: 500px; overflow: auto;">-->

                            <!--<li id="tree_1" class="level0" treenode="" hidefocus="true" style="width:220px;margin-bottom: -2px;" tabindex="0">-->
                                <!--<span id="tree_1_switch" class="button level0 switch roots_docu" style="background-position:-60px -2px;margin-left:10px;padding-right: 8px;" treenode_switch="" title=""></span>-->
                                   <!--<a id="tree_1_a" class="level0" title="针织机" style="" target="_blank" onclick="" treenode_a="">-->
                                     <!--<span id="tree_1_ico" class="button ico_docu" style="height:15px;padding-right: 12px;background-position:-110px -33px" treenode_ico="" title=""></span>-->
                                     <!--<span id="tree_1_span">-->
                                      <!--针织机-->
                                     <!--</span>-->
                                   <!--</a>-->
                            <!--</li>-->

                            <!--<li id="tree_2" class="level0"  treenode="" hidefocus="true" style="width:220px;height:75px;margin-top:-3px;" tabindex="0">-->

                                <!--<span id="tree_2_switch" class="button level0 switch center_open" style="cursor: pointer;background-position:82px -1px;height:22px;margin-left:10px;padding-right: 8px;"treenode_switch="" title=""> </span>-->

                                    <!--<a id="tree_2_a" class="level0" title="针织机械" style="" target="_blank" onclick="" treenode_a="">-->
                                        <!--<span id="tree_2_ico" class="button ico_open" style="height:15px;padding-right: 12px;background-position:-110px -1px" treenode_ico="" title=""></span>-->
                                         <!--<span id="tree_2_span">-->
                                          <!--针织机械-->
                                         <!--</span>-->
                                    <!--</a>-->
                                <!--&lt;!&ndash;<span style="background:url('/page_2/img/line.jpg') repeat-y scroll 0px 0px transparent;"></span>&ndash;&gt;-->
                                    <!--<ul id="tree_2_ul" class="level0 line" >-->
                                        <!--<li id="tree_2_1" class="level0" treenode="" hidefocus="true" style="background:url('/page_2/img/line.jpg') repeat-y scroll 10px 33px transparent;width:220px;margin-top: -5px;padding-left:18px;margin-bottom: -2px;" tabindex="0">-->
                                            <!--<span id="tree_2_1_switch" class="button level0 switch roots_docu" style="background-position:-60px -36px;;margin-left:10px;padding-right: 8px;" treenode_switch="" title=""></span>-->
                                            <!--<a id="tree_2_1_a" class="level0" title="袜机" style="" target="_blank" onclick="" treenode_a="">-->
                                                <!--<span id="tree_2_1_ico" class="button ico_docu" style="height:15px;padding-right: 12px;background-position:-110px -33px" treenode_ico="" title=""></span>-->
                                         <!--<span id="tree_2_1_span">-->
                                         <!--袜机-->
                                         <!--</span>-->
                                            <!--</a>-->
                                        <!--</li>-->
                                        <!--<li id="tree_2_2" class="level0" treenode="" hidefocus="true" style="background:url('/page_2/img/line.jpg') repeat-y scroll 10px 33px transparent;width:220px;width:220px;padding-left:18px;margin-top: -5px;margin-bottom: -2px;" tabindex="0">-->
                                            <!--<span id="tree_2_2_switch" class="button level0 switch roots_docu" style="background-position:-60px -36px;;margin-left:10px;padding-right: 8px;" treenode_switch="" title=""></span>-->
                                            <!--<a id="tree_2_2_a" class="level0" title="无缝系列" style="" target="_blank" onclick="" treenode_a="">-->
                                                <!--<span id="tree_2_2_ico" class="button ico_docu" style="height:15px;padding-right: 12px;background-position:-110px -33px" treenode_ico="" title=""></span>-->
                                         <!--<span id="tree_2_2_span">-->
                                          <!--无缝系列-->
                                         <!--</span>-->
                                            <!--</a>-->
                                        <!--</li>-->
                                        <!--<li id="tree_2_3" class="level0" treenode="" hidefocus="true" style="background:url('/page_2/img/line.jpg') repeat-y scroll 10px 33px transparent;width:220px;width:220px;padding-left:18px;margin-top: -5px;margin-bottom: -2px;" tabindex="0">-->
                                            <!--<span id="tree_2_3_switch" class="button level0 switch roots_docu" style="background-position:-60px -36px;margin-left:10px;padding-right: 8px;" treenode_switch="" title=""></span>-->
                                            <!--<a id="tree_2_3_a" class="level0" title="针织机" style="" target="_blank" onclick="" treenode_a="">-->
                                                <!--<span id="tree_2_3_ico" class="button ico_docu" style="height:15px;padding-right: 12px;background-position:-110px -33px" treenode_ico="" title=""></span>-->
                                         <!--<span id="tree_2_3_span">-->
                                          <!--大圆机-->
                                         <!--</span>-->
                                            <!--</a>-->
                                        <!--</li>-->
                                    <!--</ul>-->
                            <!--</li>-->
                            <!--<li id="tree_3" class="level0"  treenode="" hidefocus="true" style="width:220px;margin-top:-5px;height: 38px;" tabindex="0">-->
                                <!--<span id="tree_3_switch"  class="button level0 switch roots_docu" style="cursor:pointer;background-position:82px -1px;height:22px;margin-left:10px;padding-right: 8px;"treenode_switch="" title=""> </span>-->
                                <!--<a id="tree_3_a" class="level0" title="挖掘机" style="" target="_blank" onclick="" treenode_a="">-->
                                    <!--<span id="tree_3_ico" class="button ico_open" style="height:15px;padding-right: 12px;background-position:-110px -1px" treenode_ico="" title=""></span>-->
                                         <!--<span id="tree_3_span">-->
                                          <!--挖掘机-->
                                         <!--</span>-->
                                <!--</a>-->
                                <!--<ul id="tree_3_ul" class="level0 line" >-->
                                    <!--<li id="tree_3_1" class="level0" treenode="" hidefocus="true" style="background:url('/page_2/img/line.jpg') repeat-y scroll 10px 33px transparent;width:220px;margin-top: -5px;padding-left:18px;margin-bottom: -2px;" tabindex="0">-->
                                        <!--<span id="tree_3_1_switch" class="button level0 switch roots_open" style="background-position:-60px -36px;;margin-left:10px;padding-right: 8px;" treenode_switch="" title=""></span>-->
                                        <!--<a id="tree_3_1_a" class="level0" title="重型挖机" style="" target="_blank" onclick="" treenode_a="">-->
                                            <!--<span id="tree_3_1_ico" class="button ico_docu" style="height:15px;padding-right: 12px;background-position:-110px -33px" treenode_ico="" title=""></span>-->
                                         <!--<span id="tree_3_1_span">-->
                                         <!--重型挖机-->
                                         <!--</span>-->
                                        <!--</a>-->
                                    <!--</li>-->
                                <!--</ul>-->

                            <!--</li>-->
                            <!--<li id="tree_4" class="level0" treenode="" hidefocus="true" style="width:220px;margin-top: -3px;" tabindex="0">-->
                                <!--<span id="tree_4_switch" class="button level0 switch roots_docu" style="background-position:-60px -37px;margin-left:10px;padding-right: 8px;" treenode_switch="" title=""></span>-->
                                <!--<a id="tree_4_a" class="level0" title="针织机" style="" target="_blank" onclick="" treenode_a="">-->
                                    <!--<span id="tree_4_ico" class="button ico_docu" style="height:15px;padding-right: 12px;background-position:-110px -33px" treenode_ico="" title=""></span>-->
                                     <!--<span id="tree_4_span">-->
                                      <!--汽车-->
                                     <!--</span>-->
                                <!--</a>-->
                            <!--</li>-->
                            <!--&lt;!&ndash;<li id="categorytree_2" class="level0" treenode="" hidefocus="true" tabindex="0">&ndash;&gt;-->
                                <!--&lt;!&ndash;<span id="categorytree_2_switch" class="button level0 switch center_close" treenode_switch="" title=""></span>&ndash;&gt;-->
                                   <!--&lt;!&ndash;<a id="categorytree_2_a" class="level0" title="针织机械" style="" target="_blank" onclick="" treenode_a="">&ndash;&gt;-->
                                      <!--&lt;!&ndash;<span id="categorytree_2_ico" class="button ico_close" style="" treenode_ico="" title=""></span>&ndash;&gt;-->
                                      <!--&lt;!&ndash;<span id="categorytree_2_span">                             &ndash;&gt;-->
                                        <!--&lt;!&ndash;针织机械&ndash;&gt;-->
                                      <!--&lt;!&ndash;</span>&ndash;&gt;-->
                                   <!--&lt;!&ndash;</a>&ndash;&gt;-->
                            <!--&lt;!&ndash;</li>&ndash;&gt;-->

                            <!--&lt;!&ndash;<li id="tree_3" class="level0" treenode="" hidefocus="true" style="width:220px" tabindex="0">&ndash;&gt;-->
                                <!--&lt;!&ndash;<span id="tree_3_switch" class="button level0 switch roots_docu" treenode_switch="" title=""></span>&ndash;&gt;-->
                                <!--&lt;!&ndash;<a id="tree_3_a" class="level0" title="针织机" style="" target="_blank" onclick="" treenode_a="">&ndash;&gt;-->
                                    <!--&lt;!&ndash;<span id="tree_3_ico" class="button ico_docu" style="" treenode_ico="" title=""></span>&ndash;&gt;-->
                                     <!--&lt;!&ndash;<span id="tree_3_span">&ndash;&gt;-->
                                      <!--&lt;!&ndash;汽车&ndash;&gt;-->
                                     <!--&lt;!&ndash;</span>&ndash;&gt;-->
                                <!--&lt;!&ndash;</a>&ndash;&gt;-->
                            <!--&lt;!&ndash;</li>&ndash;&gt;-->
                        <!--</ul>-->

                    <select name="sel1">
                        <option value="">请选择状态</option>
                        <option value="">出售</option>
                        <option value="">入库</option>
                        <option value="">收回</option>
                        <option value="">已租</option>
                    </select>

            </ul>

            <div class="subBar">
                <span style="line-height: 30px;">
                 符合条件的记录，共有
                 <strong>22</strong>条。
                </span>
                <ul>
                    <li><div class="buttonActive"><div class="buttonContent"><button type="reset">检索</button></div></div></li>
                    <li><div class="buttonActive"><div class="buttonContent"><button type="reset">重置</button></div></div></li>
                </ul>

            </div>
        </div>
    </form>
</div>
<div class="pageContent">
    <div class="panelBar">
        <ul class="toolBar">
            <li><a class="add" href="/bysj_mjh/pages/dwz/page_2/page1_add.html" target="dialog" mask="true" width="700" height="350" title="新增资产" rel="xinz"><span>新增</span></a></li>
            <li><a class="edit" href="/bysj_mjh/pages/dwz/page_2/page1_modify.html?uid={sid_user}" target="dialog"mask="true" width="700" height="350" title="修改资产"warn="请选择一个用户"><span>修改</span></a></li>
            <li><a title="确实要删除这些记录吗?" target="selectedTodo" rel="ids" postType="string" href="demo/common/ajaxDone.html" class="delete"><span>删除</span></a></li>
            <li class="line">line</li>
            <li><a class="switch" href="/bysj_mjh/pages/dwz/page_2/page1_switch.html" target="dialog" mask="true" width="500" height="200" title="状态变更"  >
                <span style="background:url('/bysj_mjh/dwz/page_2/img/switch1.png') no-repeat 0 3px;">状态变更</span>
                </a>
            </li>
            <li>
                <a class="password" href="/bysj_mjh/pages/dwz/page_2/page1_password.html" target="dialog" mask="true" width="600"  height="400" title="密码维护">
                    <span style="background:url('/bysj_mjh/dwz/page_2/img/password.png') no-repeat 0 3px">密码维护</span>
                </a>
            </li>
            <li>
                <a class="import" href="/bysj_mjh/pages/dwz/page_2/page1_import.html" target="dialog" mask="true" width="500" height="200" title="密码导入">
                    <span style="background:url('/bysj_mjh/dwz/page_2/img/import.png') no-repeat 0 3px">密码导入</span>
                </a>
            </li>
            <li class="line">line</li>


            <li><a class="icon" href="/bysj_mjh/dwz/demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?">
                <span>导出EXCEL</span></a></li>
            <li>
                <a class="import" href="/bysj_mjh/pages/dwz/page_2/page1_import2.html" target="dialog" mask="true" width="500" height="200" title="资产导入">
                    <span style="background:url('/bysj_mjh/dwz/page_2/img/import.png') no-repeat 0 3px">资产导入</span>
                </a>
            </li>
        </ul>
    </div>
    <table class="table" width="1802px" layoutH="138">
        <thead>
        <tr class="tr1" >
            <th style="width: 2px; cursor: default;"> </th>
            <th  width="40px" ><input type="checkbox" group="ids" class="checkboxCtrl"></th>
            <th  width="50px" >状态</th>
            <th  width="110px">序列号</th>
            <th  width="125px">资产编号</th>
            <th  width="90px" >资产名称</th>
            <th  width="60px" align="center" >类型</th>
            <th  width="115px">销售单号</th>
            <th  width="80px">单价</th>
            <th  width="120px">装运单号</th>
            <th  width="80px">初次租约</th>
            <th  width="80px">当前租约</th>
            <th  width="120px">当前承租人</th>
            <th  width="95px">结束日期</th>
            <th  width="115px">采购单</th>
            <th  width="80px">成本</th>
            <th  width="125px">收货单</th>
            <th  width="60px">数量单位</th>
            <th  width="125px">供应商</th>
            <th width="130px">生产厂家</th>

        </tr>
        </thead>
        <tbody class="body">
        <tr target="sid_user" >
            <td></td>
            <td style="text-align: center"><input name="ids" value="" id="input3" class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td><a href="page_2/page2_index.html" target="navTab">P005</a></td>
            <td>ASSET-0020</td>
            <td style="cursor: text;" >大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>30,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0005</td>
            <td>30,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr id="test" ondblclick="navTab.openTab('P0003','/page_2/page2_index.html')">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td id="test1"><span id="P0003" rel="P0003" title="P0003" class="span1"  style="cursor:text;line-height: 22px;height:22px;">P003</span></td>
            <td>ASSET-0023</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>30,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>30,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td style="cursor:text;"><a href="page_2/zTree.html" target="navTab" >zTreeDemos</a> </td>
            <td>ASSET-0024</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>30,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>30,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>P001</td>
            <td>ASSET-0025</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>30,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>30,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D10</td>
            <td>ASSET-0026</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>40,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>40,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D9</td>
            <td>ASSET-0027</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>40,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>40,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D8</td>
            <td>ASSET-0015</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>40,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>40,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D7</td>
            <td>ASSET-0016</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>40,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>40,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D6</td>
            <td>ASSET-0017</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>40,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>40,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>y05</td>
            <td>ASSET-0018</td>
            <td>重型挖机-12</td>
            <td>重型挖机</td>
            <td></td>
            <td>30,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>30,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">出售</td>
            <td>y04</td>
            <td>ASSET-0019</td>
            <td>重型挖机-12</td>
            <td>重型挖机</td>
            <td>SO-0002</td>
            <td>10,000.00</td>
            <td>SPO-0002</td>
            <td>PA001</td>
            <td>PA001</td>
            <td>上海飞航租赁有限公司</td>
            <td>2014-08-26</td>
            <td style="text-align: center">PO-0004</td>
            <td>10,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">出售</td>
            <td>Y03</td>
            <td>ASSET-0020</td>
            <td>重型挖机-12</td>
            <td>重型挖机</td>
            <td>SO-0002</td>
            <td>20,000.00</td>
            <td>SPO-0002</td>
            <td>PA001</td>
            <td>PA001</td>
            <td>上海飞航租赁有限公司</td>
            <td>2014-08-26</td>
            <td style="text-align: center">PO-0004</td>
            <td>20,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D05</td>
            <td>ASSET-0021</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>20,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>20,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>  <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D04</td>
            <td>ASSET-0022</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>40,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>40,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D03</td>
            <td>ASSET-0008</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>40,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>40,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D02</td>
            <td>ASSET-0009</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>40,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>40,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">出售</td>
            <td>y02</td>
            <td>ASSET-0010</td>
            <td>重型挖机-12</td>
            <td>重型挖机</td>
            <td>SO-0002</td>
            <td>10,000.00</td>
            <td>SPO-0002</td>
            <td>PA001</td>
            <td>PA001</td>
            <td>上海飞航租赁有限公司</td>
            <td>2014-08-26</td>
            <td style="text-align: center">PO-0004</td>
            <td>10,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>
        <tr target="sid_user" rel="1">
            <td></td>
            <td style="text-align: center"><input name="ids" value=""  class="checkboxCtrl" type="checkbox" ></td>
            <td style="text-align: center">入库</td>
            <td>D01</td>
            <td>ASSET-0023</td>
            <td>大圆机</td>
            <td>针织机</td>
            <td></td>
            <td>30,000.00</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td style="text-align: center">PO-0004</td>
            <td>30,000.00</td>
            <td style="text-align: center">GRN-0006</td>
            <td></td>
            <td style="text-align: center">华为</td>
            <td></td>
        </tr>

        </tbody>
    </table>
    <div class="panelBar" style="padding-bottom: 1px;">
        <div class="pages">
            <span>显示</span>
            <select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
                <option value="10">10</option>
                <option value="20" selected>20</option>
                <option value="30">30</option>
                <option value="40">40</option>
            </select>
            <span>条，共 23 条</span>
        </div>

        <div class="pagination" targetType="navTab" totalCount="200" numPerPage="20" pageNumShown="10" currentPage="1"></div>

    </div>
</div>
