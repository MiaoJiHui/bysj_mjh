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
        .page2_pageContent{
            margin:1px auto;
        }
        img.page2_img1,img.page2_img2{
           margin-right:1px;
        }
        .page2_span1,.page2_span2{
            margin-left:-24px;
        }
        a.page2_a1,a.page2_a2,
        a.page2_a3,a.page2_a4,
        a.page2_a5,a.page2_a6{
            color:blue;
            top:5px;
            position:relative;
            font-style:normal;
        }
        .page2_pageContent{
        }

        .haJ{
            color:green;
            text-decoration: none;
            border-bottom:2px solid green;
        }
    </style>

    <script type="text/javascript">

        $(function(){
            $(".test ul li").each(function(){
                $(this).click(function(){
                    $(".haJ").show();
                });
            });
        });

    </script>
</head>
<body>

<div class="box1">
    <div style="padding: 5px;color: Red; font-size: 16px; font-weight: bold;">LS2014060001</div>
    <div style="float:left;"><span style="padding-left:5px;padding-right:425px;color:gray;">上海飞航租赁有限公司</span></div>

    <div class="test">
        <ul>
            <li class="headbar selected"><a href="page1.html"  target="navTab" rel="zy">租约首页</a></li>
            <li class="headbar"><a href="page/page2.html" target="navTab" rel="zy">任务分配</a></li>
            <li class="headbar"><a href="page/page3.html" target="navTab" rel="zy">执行摘要</a></li>
            <li class="headbar"><a href="page4.html" target="navTab" rel="zy">关键条例</a></li>
            <li class="headbar"><a href="page/page5.html" target="navTab" rel="zy">租约关联</a></li>
            <li class="headbar"><a href="page/page6.html"target="navTab" rel="zy">租赁资产</a></li>
            <li class="headbar"><a href="page/page7.html"target="navTab" rel="zy">相关文档</a></li>
            <li class="headbar"><a href="page8.html" target="navTab" rel="zy">提款计划</a></li>
            <li class="headbar"><a href="page/page9.html"target="navTab" rel="zy">租约变更</a></li>
            <li class="headbar"><a href="page/page10.html"target="navTab" rel="zy">租约终止</a></li>
        </ul>

     </div>
</div>
<div class="pageContent page2_pageContent" >
    <div id="cnt" class="j-resizeGrid" layouth="50 "style="height: 250px; overflow: auto;">
     <div class="panelBar">
         <ul class="toolBar">
             <li class="">
                 <a class="save" href="page/page2_baocun.html" title="租约管理→任务分配→保存为模版" target="dialog" mask="true" width="400" height="250" >
                     <span class="page2_span1"><img class="page2_img1" src="img/page2_1.png"/>保存为模板</span>
                 </a>
             </li>
             <li>
                 <a class="load" href="page/page2_zairu.html" title="租约管理→任务分配→载入模版" target="dialog" mask="true" width="400" height="150">
                     <span class="page2_span2"><img class="page2_img2" src="img/page2_2.png"/>载入模块</span>
                 </a>
             </li>
         </ul>
     </div>

    <div layout="89" style="padding:3px;height:220px;overflow:auto;">
        <table class="page2_table1 formTable" style="margin-top:-1px;">
            <tbody>
            <tr>
                <th class="top" style="width:17%">
                   任务名称
                </th>
                <th class="top" style="width:17%">
                    操作人员
                </th>
                <th class="top" style="width:16%">
                    审查人员
                </th>
                <th class="top" style="width:15%">
                    租约约定时间
                </th>
                <th class="top" style="width:15%">
                    计划完成时间
                </th>

                <th class="top" style="width:20%">
                    操作
                </th>
            </tr>
            <tr>
                <th class="title" colspan="8">
                    租约概况
                    <span style="float:right;position: relative;top:5px;">
                        <a href="page/page2_fen1.html" target="dialog"title="租约管理→任务分配→租约概况" mask="true"width="800" height="250" class="page2_a1"  >
                        【分配任务】
                        </a>
                    </span>
                </th>
            </tr>
            <tr>
                <th class="title" colspan="8">
                    销售发票开具 & 首付款收取
                    <span style="float:right;position: relative;top:5px;">
                        <a href="page/page2_fen2.html" target="dialog"title="租约管理→任务分配→销售发票开具 & 首付款收取" mask="true"width="800" height="500" class="page2_a2"  >
                            【分配任务】
                        </a>
                    </span>
                </th>
            </tr>
            <tr>
                <th class="title" colspan="8">
                    按揭贷款提款
                    <span style="float:right;position:relative;top:5px;">
                        <a href="page/page2_fen3.html" target="dialog" mask="true" width="800" height="500"  title="租约管理→任务分配→按揭贷款提款" class="page2_a3" >
                            【分配任务】
                        </a>
                    </span>
                </th>
            </tr>
            <tr>
                <th class="title" colspan="8">
                    周期性发票开具 & 租金收取
                    <span style="float:right;position:relative;top:5px;">
                        <a href="page/page2_fen4.html"target="dialog" title="租约管理→任务分配→周期性发票开具 & 租金收取"mask="true"width="800" height="400" class="page2_a4" >
                            【分配任务】
                        </a>
                    </span>
                </th>
            </tr>
            <tr>
                <th class="title" colspan="8">
                    租约条款变更
                    <span style="float:right;position:relative;top:5px;">
                        <a href="page/page2_fen5.html" target="dialog" mask="true" title="租约管理→任务分配→租约条款变更" width="800" height="250" class=" page2_a5" >
                            【分配任务】
                        </a>
                    </span>
                </th>
            </tr>
            <tr>
                <th class="title" colspan="8">
                    租约终止
                    <span style="float:right;position:relative;top:5px;">
                        <a href="page/page2_fen6.html" target="dialog" title="租约管理→任务分配→租约终止" mask="true"width="800" height="250"class="page2_a6" >
                            【分配任务】
                        </a>
                    </span>
                </th>
            </tr>
            </tbody>
        </table>

    </div>
    </div>
</div>

</body>
</html>