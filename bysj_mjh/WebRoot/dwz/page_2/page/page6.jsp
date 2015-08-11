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
                    <a class="add" href="page/page6_add.html"target="dialog" mask="true" title="租约管理→租赁资产→新增资产" width="350" height="250">
                            <span>

                                新增资产

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
                            <th class="" style="width: 55px; cursor: default;">
                                <div class="gridCol" title="序号">

                                    序号

                                </div>
                            </th>
                            <th class="" style="width: 67px; cursor: default;">
                                <div class="gridCol" title="数量">

                                    数量

                                </div>
                            </th>
                            <th class="" style="width: 155px; cursor: default;">
                                <div class="gridCol" title="名称">

                                    名称

                                </div>
                            </th>
                            <th class="" style="width:67px; cursor: default;">
                                <div class="gridCol" title="品牌">

                                    品牌

                                </div>
                            </th>
                            <th class="" style="width: 82px; cursor: default;">
                                <div class="gridCol" title="型号">

                                    型号

                                </div>
                            </th>
                            <th style="width:104px;">
                                <div class="gridCol" title="规格">

                                    规格

                                </div>
                            </th>
                            <th class="" style="width: 103px; cursor: default;">
                                <div class="gridCol" title="单价">

                                    单价

                                </div>
                            </th>
                            <th style="width: 106px;">
                                <div class="gridCol" title="参考价">

                                    参考价

                                </div>
                            </th>
                            <th style="width: 60px;">
                                <div class="gridCol" title="总价">

                                    总价

                                </div>
                            </th>
                            <th style="width: 60px;">
                                <div class="gridCol" title="单位">

                                    单位

                                </div>
                            </th>
                            <th class="" style="width: 155px; cursor: default;">
                                <div class="gridCol" title="分类">

                                    分类

                                </div>
                            </th>
                            <th class="" style="width: 60px; cursor: default;">
                                <div class="gridCol" title="制造商">

                                    制造商

                                </div>
                            </th>
                            <th class="" style="width: 112px; cursor: default;">
                                <div class="gridCol" title="备注">

                                    产地

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