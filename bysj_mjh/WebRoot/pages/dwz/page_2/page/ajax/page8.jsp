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
            margin-bottom: 1px;
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
        .p8span1,.p8span2,.p8span3,.p8span4{
            margin-left:-25px;

        }
        .page8_img,.page8_img2,.page8_img3,.page8_img4{
            margin-right:0px;
        }
        .p8span1,.page8_img{
            padding-bottom:5px;
        }
    </style>
</head>
<body>
<div class="pageContent" style="">
    <div id="cnt" class="j-resizeGrid" layouth="50" style="height: 244px; overflow: auto;">
        <div class="panelBar">
            <ul class="toolBar">
                <li class="">
                    <a class="add" onclick="openDialog('租约管理→提款计划→新增', 'page/page8_add.html', 800, 500, '','-1')" href="javascript:void(0)">
                            <span>

                                新增

                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="edit" onclick="openDialogWithId('租约管理→提款计划→修改', '/test/lease/draw_down/edit', 800, 500, '','-1')" href="javascript:void(0)">
                            <span>

                                修改

                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="delete" onclick="ajaxDoWithId('确定要删除此提款吗？', '/test/lease/draw_down/delete', '',null)" href="javascript:void(0)">
                            <span>

                                删除提款

                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="detail" onclick="openDialogWithId('租约管理→提款计划→租金核算表', '/test/lease/draw_down/instalments_monthly', 800, 450, '','-1')" href="javascript:void(0)">
                            <span class="p8span1">
                             <img class="page8_img"src="img/5.png"/>
                                租金核算表
                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="plan" onclick="openDialogWithId('租约管理→提款计划→给定租金流提款计划', '/test/lease/draw_down/instalments_monthly?type=1', 800, 450, '','-1')" href="javascript:void(0)">
                            <span class="p8span2">
                             <img class="page8_img2"src="img/6.png"/>
                                给定租金流提款计划

                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="breakup" onclick="openDialogWithId('租约管理→提款计划→分拆&展期', '/test/lease/draw_down/breakup', 800, 550, '','-1')" href="javascript:void(0)">
                            <span class="p8span3">
                                 <img class="page8_img3"style="" style="padding-left:0px;"src="img/7.png"/>
                                租约分拆&展期

                            </span>
                    </a>
                </li>
                <li class="">
                    <a class="change" onclick="openDialogWithId('租约管理→提款计划→简单参数变更', '/test/lease/draw_down/change', 800, 350, '','-1')" href="javascript:void(0)">
                            <span class="p8span4">
                             <img class="page8_img4"style="" style="padding-left:0px;"src="img/8.png"/>
                                简单参数变更

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
                            <th class="" style="width: 42px; cursor: default;">
                                <div class="gridCol" title="层级">

                                    层级

                                </div>
                            </th>
                            <th class="" style="width: 42px; cursor: default;">
                                <div class="gridCol" title="可拆分">

                                    可拆分

                                </div>
                            </th>
                            <th class="" style="width: 42px; cursor: default;">
                                <div class="gridCol" title="状态">

                                    状态

                                </div>
                            </th>
                            <th class="" style="width: 53px; cursor: default;">
                                <div class="gridCol" title="批次">

                                    批次

                                </div>
                            </th>
                            <th class="" style="width: 87px; cursor: default;">
                                <div class="gridCol" title="比例">

                                    比例

                                </div>
                            </th>
                            <th style="width: 109px;">
                                <div class="gridCol" title="金额">

                                    金额

                                </div>
                            </th>
                            <th class="" style="width: 109px; cursor: default;">
                                <div class="gridCol" title="提款日期">

                                    提款日期

                                </div>
                            </th>
                            <th style="width: 109px;">
                                <div class="gridCol" title="首期结束日期">

                                    首期结束日期

                                </div>
                            </th>
                            <th style="width: 109px;">
                                <div class="gridCol" title="付款周期类型">

                                    付款周期类型

                                </div>
                            </th>
                            <th style="width: 109px;">
                                <div class="gridCol" title="付款周期">

                                    付款周期

                                </div>
                            </th>
                            <th class="" style="width: 220px; cursor: default;">
                                <div class="gridCol" title="备注">

                                    备注

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