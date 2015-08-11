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
        .page7_span1,.page7_span2{
             margin-left: -25px;;
        }
        .page7_img1,.page7_img2{
            margin-right:0px;
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
                    <a class="add" href="page/page7_add.html"target="dialog" mask="true" title="租约管理→相关文档→新增" width="400" height="250">
                            <span>
                                新增
                            </span>
                    </a>
                </li>

                <li class="">
                    <a class="edit" href="goods_modify.html?uid={sid_user} "target="dialog" mask="true" width="484" height="485">
                            <span>
                                修改
                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="ok" href="goods_modify.html?uid={sid_user}" target="dialog" mask="true" width="484" height="485">

                            <span class="page7_span1">
                               <img class="page7_img1" src="img/page7_1.png">
                                上传新版本
                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="ok2" href="goods_modify.html?uid={sid_user} "target="dialog" mask="true" width="484" height="485">
                            <span class="page7_span2">
                            <img class="page7_img2"src="img/page7_2.png">
                                下载
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
                            <th class="" style="width: 400px; cursor: default;">
                                <div class="gridCol" title="数量">

                                    文件名称

                                </div>
                            </th>
                            <th class="" style="width: 230px; cursor: default;">
                                <div class="gridCol" title="名称">

                                    文件大小

                                </div>
                            </th>
                            <th class="" style="width:230px; cursor: default;">
                                <div class="gridCol" title="品牌">

                                    文件类型

                                </div>
                            </th>
                            <th class="" style="width: 230px; cursor: default;">
                                <div class="gridCol" title="型号">

                                    上传日期

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