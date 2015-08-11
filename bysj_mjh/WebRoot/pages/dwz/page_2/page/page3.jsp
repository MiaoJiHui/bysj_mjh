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
        .formTable{
             padding:0px;
             border-width:0px;

        }

       .formTable th{
           width:173px;
       }
       .formTable td{
           width:975px;
       }
        #tt1{
            width:99%;
            margin-top:1px;
            display: block;
        }
        #tt2{
            width:99%;
            margin-top:1px;
            display: none;
        }

     #aa2,#aa3{
         display: none;
     }
    </style>
    <script type="text/javascript">
        function switchTable(){
            //document.getElementById("tt1").style.display ="none";
            $("#tt1",navTab.getCurrentPanel).hide();
            //document.getElementById("tt2").style.display ="block";
            $("#tt2",navTab.getCurrentPanel).slideDown();
            $("#aa",navTab.getCurrentPanel).hide();
            $("#aa2",navTab.getCurrentPanel).show();
            $("#aa3",navTab.getCurrentPanel).show();
            //document.getElementById("aa").style.display = "none";
            //document.getElementById("aa2").style.display ="block";
            //document.getElementById("aa3").style.display ="block";

        }
        function donothing(){
            $("#tt2",navTab.getCurrentPanel).slideUp("normal",function(){
                $("#tt1",navTab.getCurrentPanel).show();
            });

           // document.getElementById("tt1").style.display ="block";

            //document.getElementById("tt2").style.display ="none";
            $("#aa",navTab.getCurrentPanel).show();
            $("#aa2",navTab.getCurrentPanel).hide();
            $("#aa3",navTab.getCurrentPanel).hide()
           // document.getElementById("aa").style.display ="block";
           // document.getElementById("aa2").style.display ="none";
          //document.getElementById("aa3").style.display ="none";
        }
    </script>
    <!--
            jQuery(function($)
            {
                $.effects.slideHover({
                    eles: $("#tt2_table").children().filter(function(){ return $(this).data("fixed") === undefined; }),
                    diract:"top",
                    duration: 200,
                    type: 1
                });
            });
        </script>
        -->

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

        <table class="formTable table1" style="width:99%;margin-top:5px;" >
            <tr>
                <th class="hello"colspan="2" style="height:35px">
                    <span class="page3_span1" style="float:left;font-weight: bold;padding-left:10px;">执行摘要</span>
                    <span class="page3_span2" sytle="float:left:">
                        <a href="#" id="aa" onclick="switchTable()" style="font-weight: bold;color:blue;">
                        【修改数据】</a>
                        <a href="#" id="aa2" onclick="donothing()"style=" float:right;padding-left:3px;font-weight: bold;color:blue;">【取消】</a>

                        <a href="#" id="aa3" style="float:right;font-weight: bold;color:blue;">【提交】</a>
                    </span>
                </th>
            </tr>
         </table>

        <table name="table2" id="tt1" class="formTable table2"  width="99%"  >
            <tr>
                <th >总体评分：</th>
                <td ></td>
            </tr>
            <tr >
                <th>总体风险评估：</th>
                <td></td>
            </tr>
            <tr>
                <th>概要描述：</th>
                <td></td>
            </tr>
            <tr>
                <th>盈利能力&现金流情况：</th>
                <td></td>
            </tr>
            <tr>
                <th>风险管控：</th>
                <td></td>
            </tr>
        </table>

     <div id="tt2" class="editContent" style="width:99%">
        <table name="table3" class="formTable page3_table3" style="margin:1px 6px;" >
            <tr >
                <th class="p3td">总体评分：</th>
                <td class="p3td">
                    <input type="text" size="5" class="required" value="4.0"/>
                    <span class="inputInfo">分</span>
                </td>
                <th class="ada" style="width:12%">总体风险评估：</th>
                <td class="adf" style="width:38%">
                    <select class="required" >
                        <option name="op" value="一级" >一级</option>
                        <option name="op" value="二级" >二级</option>
                        <option name="op" value="三级" selected>三级</option>
                        <option name="op" value="四级" >四级</option>
                        <option name="op" value="五级" >五级</option>
                    </select>
                </td>
            </tr>
        </table>
         <div class="tabs" style="margin:2px 6px;height: 410px;">
             <div class="tabsHeader">
                 <div class="tabsHeaderContent">
                     <ul>
                         <li class="selected"><a href="javascript:;"><span>概要描述</span></a></li>
                         <li><a href="javascript:;"><span>盈利能力&现金流情况</span></a></li>
                         <li><a href="javascript:;"><span>风险管控</span></a></li>
                     </ul>
                 </div>
             </div>
             <div class="tabsContent" style="padding:1px;height:400px" layoutH="100">
                 <div>
                     <form method="post" action="demo/common/ajaxTimeout.html" class="pageForm required-validate" onsubmit="return iframeCallback(this)">
                         <div class="pageFormContent"style="padding:0px;" layoutH="158">
                             <div class="unit"  style="padding:0px;">
                                 <textarea class="editor" name="description"style="height:300px;" rows="40" cols="142" tools="mfull"></textarea>
                             </div>
                         </div>
                     </form>
                 </div>
                 <div>
                     <form method="post" action="demo/common/ajaxTimeout.html" class="pageForm required-validate" onsubmit="return iframeCallback(this)">
                         <div class="pageFormContent"style="padding:0px;" layoutH="158">
                             <div class="unit">
                                 <textarea class="editor" name="description" rows="6" cols="100" tools="simple"></textarea>
                             </div>
                         </div>
                     </form>
                 </div>
                 <div>
                     <form method="post" action="demo/common/ajaxTimeout.html" class="pageForm required-validate" onsubmit="return iframeCallback(this)">
                         <div class="pageFormContent"style="padding:0px;" layoutH="158">
                             <div class="unit">
                                 <textarea class="editor" name="description" rows="6" cols="100" tools="mini"></textarea>
                             </div>
                         </div>
                     </form>
                 </div>
             </div>
             <div class="tabsFooter">
                 <div class="tabsFooterContent">
                 </div>
             </div>
         </div>
     </div>
    </body>
    </html>