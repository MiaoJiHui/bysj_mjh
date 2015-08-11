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
        .page9_span1,.page9_span2{
            margin-left: -25px;;
        }
        .page9_img1,.page9_img2{
            margin-right:-3px;
        }
    </style>
</head>
<body>
<div class="pageContent page5_pageContent" style="">
    <div id="cnt" class="j-resizeGrid" layouth="50" style="height: 244px; overflow: auto;">
        <div class="panelBar page5_panelBar">
            <ul class="toolBar">
                <li class="">
                    <a class="add" href="page/page9_add.html"target="dialog" mask="true" title="租约管理→租约变更→新增" width="800" height="600">
                            <span>
                                新增
                            </span>
                    </a>
                </li>


                <li class="">
                    <a class="ok" href="goods_modify.html?uid={sid_user}" target="dialog" mask="true" width="484" height="485">

                            <span class="page9_span1">
                          <img class="page9_img1" src="img/page9_1.png"style="padding-bottom: 3px;">
                                查看
                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="ok2" href="goods_modify.html?uid={sid_user} "target="dialog" mask="true" width="484" height="485">
                            <span class="page9_span2">
                            <img class="page9_img2"src="img/page9_2.png" style="padding-bottom:3px;">
                                执行变更
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
                            <th class="" style="width: 60px; cursor: default;">
                                <div class="gridCol" title="序号">

                                    序号

                                </div>
                            </th>
                            <th class="" style="width: 175px; cursor: default;">
                                <div class="gridCol" title="数量">

                                    变更单号

                                </div>
                            </th>
                            <th class="" style="width: 230px; cursor: default;">
                                <div class="gridCol" title="名称">

                                    执行时间

                                </div>
                            </th>
                            <th class="" style="width: 230px; cursor: default;">
                                <div class="gridCol" title="名称">

                                    一次性费用小计

                                </div>
                            </th>
                            <th class="" style="width:230px; cursor: default;">
                                <div class="gridCol" title="品牌">

                                    余额调整小计

                                </div>
                            </th>
                            <th class="" style="width: 230px; cursor: default;">
                                <div class="gridCol" title="型号">

                                    变更合计

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