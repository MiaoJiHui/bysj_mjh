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
        .formTable .title {
            text-align: left;
            color: #666;
            height: 28px;
            line-height: 28px;
            background: none repeat scroll 0% 0% #EFEFEF;
            padding: 0px 0px 0px 5px;
            font-weight: bold;
        }
        .formTable th{
            width:160px;
        }
        .formTable td{
            width:250px;
        }

        /*.formTable th{*/
            /*width:255px;*/
        /*}*/
        /*.formTable td{*/
            /*width:230px;*/
        /*}*/

        #tt2{
            width:99%;
            margin-top:1px;
            display: none;
        }


    </style>



</head>
<body>
<div class="box1">
    <div style="padding: 5px;color: Red; font-size: 16px; font-weight: bold;">大圆机&nbsp;&nbsp;<span style="color:darkslategray;">（P0005）</span></div>
    <div style="float:left;"><span style="padding-left:5px;padding-right:425px;color:gray;">成本：30,000.00</span></div>

</div>

<table class="formTable table1" style="width:99%;margin-top:5px;" >
    <tr>
       <td colspan="6" class="title">资产基本资料</td>
    </tr>
    <tr>
        <th >简称：</th>
        <td ></td>
        <th >全称：</th>
        <td >大圆机</td>
        <th >品牌：</th>
        <td ></td>
    </tr>
    <tr >
        <th >规格：</th>
        <td ></td>
        <th >参考价格：</th>
        <td ></td>
        <th >单位：</th>
        <td ></td>
    </tr>
    <tr>
        <th >型号：</th>
        <td ></td>
        <th >产地：</th>
        <td ></td>
        <th >制造商：</th>
        <td ></td>
    </tr>
    <tr>
        <th >分类：</th>
        <td >针织机</td>
        <th >是否密码保护：</th>
        <td >否</td>
        <th >是否GPS定位：</th>
        <td >否</td>
    </tr>
    <tr>
        <th >编号：</th>
        <td >ASSET-0023</td>
        <th >单价：</th>
        <td >30,000.00</td>
        <th >仓储状态：</th>
        <td >入库</td>
    </tr>
    <tr>
        <th >序列号：</th>
        <td >P0005</td>
        <th >制造商序列号：</th>
        <td colspan="3"></td>
    </tr>
    <tr>
        <th >生产日期：</th>
        <td ></td>
        <th >购入日期：</th>
        <td colspan="3"></td>
    </tr>
    <tr>
        <th>备注：</th>
        <td colspan="=5"></td>
    </tr>
    <tr>
        <td colspan="6" class="title">采购相关资料</td>
    </tr>
    <tr>
        <th>采购单号：</th>
        <td colspan="5"><a style="color:blue;" href="page_2/page3.html"target="dialog" width="1000" height="525" title="采购单[PO-0004]"mask="true">PO-0004</a></td>
    </tr>
    <tr>
        <td colspan="6" class="title">销售相关资料</td>
    </tr>
    <tr>
        <th>采购单号：</th>
        <td colspan="5"></td>
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