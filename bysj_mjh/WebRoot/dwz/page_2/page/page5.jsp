<!DOCTYPE html>
<html>
<head>
    <title></title>
    <style type="text/css">
        div.box1{
            background-color: #EBF0F5;
            width: 100%;
            height:40px;
            border-bottom: 1px solid #B8D0D6 ;
            padding:5px;
        }

        .headbar{
            float: left;
            border-right:1px solid #B8D0D6;
            padding-right:4px;
            padding-left:3px;
            font-weight: bold;
            color: #183152;
        }
        .headbar a:hover{
            float:left;
            color:#CE171E;
            text-decoration: none;
            border-bottom:2px solid #CE171E;
        }

        .headbar a{
            padding-bottom:5px;
            padding-left:2px;
            padding-right: 2px;
            color:#183152;
        }

        .tablehead{
            background-color:#EEF2F6;
            text-align: left;
            padding-left:15px;
            font-weight: bold;
            color:#183152;

        }
        .formTable th{
            width: 173px;
        }
        .lnav ul .selected a{
            color: #CE171E;
            text-decoration: none;
            border-bottom: 2px solid #CE171E;
        }
         div.page5_pageContent{
             padding-top:1px;

         }
    </style>
</head>
<body>
<div class="box1">
    <div style="padding: 5px;color: Red; font-size: 16px; font-weight: bold;">LS2014060001</div>
    <div style="float:left;"><span style="padding-left:5px;padding-right:425px;color:gray;">上海飞航租赁有限公司</span></div>
    <div class="">
        <ul>
            <li class="headbar selected"><a href="page1.html" target="navTab" rel="zy">租约首页</a></li>
            <li class="headbar"><a href="page/page2.html" target="navTab" rel="zy">任务分配</a></li>
            <li class="headbar"><a href="page/page3.html" target="navTab" rel="zy">执行摘要</a></li>
            <li class="headbar"><a href="page4.html" target="navTab">关键条例</a></li>
            <li class="headbar"><a href="page/page5.html" target="navTab" rel="zy">租约关联</a></li>
            <li class="headbar"><a href="page/page6.html"target="navTab" rel="zy">租赁资产</a></li>
            <li class="headbar"><a href="page/page7.html"target="navTab" rel="zy">相关文档</a></li>
            <li class="headbar"><a href="page8.html" target="navTab">提款计划</a></li>
            <li class="headbar"><a href="page/page9.html"target="navTab" rel="zy">租约变更</a></li>
            <li class="headbar"><a href="page/page10.html"target="navTab" rel="zy">租约终止</a></li>
        </ul>
    </div>
</div>



<div class="pageContent page5_pageContent" style="">
    <div id="cnt" class="j-resizeGrid" layouth="50" style="height: 244px; overflow: auto;">
        <div class="panelBar page5_panelBar">
            <ul class="toolBar">
                <li class="">
                    <a class="add" href="page/page5_add.html"target="dialog" mask="true" title="添加关联" width="900" height="500">
                            <span>

                                添加关联

                            </span>
                    </a>
                </li>

                <li class="">
                    <a class="delete" onclick="ajaxDoWithId('确定要删除此提款吗？', '/test/lease/draw_down/delete', '',null)" href="javascript:void(0)">
                            <span>

                                删除

                            </span>
                    </a>
                </li>

            </ul>
        </div>
        <div class="grid">
            <div class="gridHeader">
                <div class="gridThead">
                    <table style="width:1139px;">
                        <thead>
                        <tr>
                            <th class="" style="width: 40px; cursor: default;">
                                <div class="gridCol" title="层级">

                                    选择

                                </div>
                            </th>
                            <th class="" style="width: 146px; cursor: default;">
                                <div class="gridCol" title="可拆分">

                                    主题

                                </div>
                            </th>
                            <th class="" style="width: 113px; cursor: default;">
                                <div class="gridCol" title="状态">

                                    承租人

                                </div>
                            </th>
                            <th class="" style="width: 90px; cursor: default;">
                                <div class="gridCol" title="批次">

                                    租赁日期

                                </div>
                            </th>
                            <th class="" style="width: 60px; cursor: default;">
                                <div class="gridCol" title="比例">

                                    付款周期

                                </div>
                            </th>
                            <th style="width: 60px;">
                                <div class="gridCol" title="金额">

                                    付款期数

                                </div>
                            </th>
                            <th class="" style="width: 60px; cursor: default;">
                                <div class="gridCol" title="提款日期">

                                    利率类型

                                </div>
                            </th>
                            <th style="width: 55px;">
                                <div class="gridCol" title="首期结束日期">

                                    利率

                                </div>
                            </th>
                            <th style="width: 55px;">
                                <div class="gridCol" title="付款周期类型">

                                    币种

                                </div>
                            </th>
                            <th style="width: 55px;">
                                <div class="gridCol" title="付款周期">

                                    汇率

                                </div>
                            </th>
                            <th class="" style="width: 112px; cursor: default;">
                                <div class="gridCol" title="备注">

                                    贷款总额

                                </div>
                            </th>
                            <th class="" style="width: 112px; cursor: default;">
                                <div class="gridCol" title="备注">

                                    提款总额

                                </div>
                            </th>
                            <th class="" style="width: 112px; cursor: default;">
                                <div class="gridCol" title="备注">

                                    提款余额

                                </div>
                            </th>
                            <th class="" style="width: 105px; cursor: default;">
                                <div class="gridCol" title="备注">

                                    提款次数

                                </div>
                            </th>
                        </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <div class="gridScroller" style="width: 1159px; height: 183px; overflow: auto;" layouth="111">
                <div class="gridTbody">
                    <table style="width:1139px;">
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>