<head>
    <style type="text/css">
        th.top{
            text-align: center;
        }

    </style>

    <!--<script type="text/javascript">-->
        <!--function initFunc(){-->
            <!--$(".ctr", $.pdialog.getCurrent()).parents().css("textAlign","center");-->
            <!--$(".invoiceNo", $.pdialog.getCurrent()).css("float","right");-->
       <!--//     $(".invoiceNo", $.pdialog.getCurrent()).prev("span").css({position:"relative",top:"5px"});-->
<!--//            $("#wsale", $.pdialog.getCurrent()).find("tr:last").find(".operator").css("width","95%").JselectUser("请选择人员","${base}/search/getManager","name","","","0");-->
        <!--}-->
        <!--$(function(){-->
<!--//            $(".operator", $.pdialog.getCurrent()).JselectUser("请选择人员","${base}/search/getManager","name","","","0");-->

            <!--if ($("#wsale tr .unitBox", $.pdialog.getCurrent()).size() == 0) {-->
                <!--setTimeout(function () {-->
                    <!--$(".pageFormContent .button .buttonContent :button", $.pdialog.getCurrent()).click();-->
                <!--}, 200);-->
            <!--}-->
        <!--});-->
    <!--</script>-->

</head>
<div class="pageContent">
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="48">
            <!--<div>-->
                <!--<table class="list nowrap itemDetail" addButton="新建从表1条目" width="100%">-->
                    <!--<thead>-->
                    <!--<tr>-->
                        <!--<th type="text" name="items[#index#].itemString" size="12" fieldClass="required" fieldAttrs="{remote:'validate_remote.html', maxlength:10}">从字符串</th>-->
                        <!--<th type="text" name="items[#index#].itemInt" defaultVal="#index#" size="12" fieldClass="digits">从整数</th>-->
                        <!--<th type="text" name="items[#index#].itemFloat" defaultVal="0.8" size="12" fieldClass="number">从浮点</th>-->
                        <!--<th type="date" name="items[#index#].itemDate" defaultVal="2011-12-28" size="12">从日期</th>-->
                        <!--<th type="date" format="yyyy-MM-dd HH:mm:ss" name="items[#index#].itemDataTime" size="16">从日期时间</th>-->
                        <!--<th type="lookup" name="items[#index#].org.orgName" lookupGroup="items[#index#].org" lookupUrl="demo/database/dwzOrgLookup.html" suggestUrl="demo/database/db_lookupSuggest.html" suggestFields="orgName" postField="keywords" size="12" fieldClass="required">部门名称</th>-->
                        <!--<th type="enum" name="items[#index#].itemEnum" enumUrl="demo/database/db_select.html" size="12">从枚举</th>-->
                        <!--<th type="attach" name="items[#index#].attachment.fileName" lookupGroup="items[#index#].attachment" lookupUrl="demo/database/db_attachmentLookup.html" size="12">从附件</th>-->
                        <!--<th type="del" width="60">操作</th>-->
                    <!--</tr>-->
                    <!--</thead>-->
                    <!--<tbody></tbody>-->
                <!--</table>-->
            <!--</div>-->

            <table class="list nowrap itemDetail " width="100%" addbutton="新增发票" style="clear: both;">

                <thead>
                <tr>
                <th name="sale[#index#].itemInt" style="width:10%;" type="text" defaultVal="#index#" fieldclass="digits readonly" defaulttext="发票" size="2" readonly="readonly"  size="20" ></th>

                <th name="sale[#index#].assigneeId"  type="enum" enumUrl="page/database/db_select.html" size="30" style="width:15%;text-align: center;font-weight: normal;">
                    操作人员
                </th>
                <th name="sale[#index#].reviewerId" fieldclass="select2 operator" type="enum" enumUrl="page/database/db_select.html"  style="width:15%;text-align: center;font-weight: normal;">
                    审查人员
                </th>
                <th name="sale[#index#].duedateLease" fieldclass="date showImg ctr" defaulttext="" defaultval="" type="hidden" style="width:15%;text-align: center;font-weight: normal;">
                    租约约定时间
                </th>
               <th name="sale[#index#].duedateAssigned" fieldclass="date showImg" defaultval="" type="date" style="width:15%;text-align: center;font-weight: normal;">
                    计划完成时间
                </th>
                <th width="95%" rows="2" name="sale[#index#].comments" type="textarea"   style="width:25%;text-align: center;font-weight: normal;"  >
                    备注
                </th>
                <th type="del" style="width:5%;text-align: center;font-weight: normal;">
                    删除
                </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <td style="text-align: right">首付款通知</td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                    </td>
                    <td  style="text-align: center">
                        <input type="text" class="date" size="12" value="" />
                        <a class="inputDateButton" href="javascript:;"></a>
                    </td>
                    <td>
                        <textarea rows="2" style="width: 95%"/>
                    </td>
                    <td> <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a></td>

                </tr>
                <tr>
                    <td style="text-align: right">首付款收取 </td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                    </td>
                    <td  style="text-align: center">
                        <input type="text" class="date" size="12" value="" />
                        <a class="inputDateButton" href="javascript:;"></a>
                    </td>
                    <td>
                        <textarea rows="2" style="width: 95%"/>
                    </td>
                    <td> <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a></td>
                </tr>

                <tr>
                    <td style="text-align: right">首付款催收</td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                    </td>
                    <td  style="text-align: center">
                        <input type="text" class="date" size="12" value="" />
                        <a class="inputDateButton" href="javascript:;"></a>
                    </td>
                    <td>
                        <textarea rows="2" style="width: 95%"/>
                    </td>
                    <td> <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a></td>
                    </tr>
                <tr class="unitBox" id="newRow">
                    <td style="text-align:center">
                    <span style="position: relative;">发票</span>
                        <input class=" number invoiceNo od textInput readonly " type="text" size="2" value="4" name="sale[0].salesInvoiceSequence" readonly="readonly" style="top:5px;"/>

                </td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                        <select name="">
                            <option >请选择人员</option>
                            <option >陈刚</option>
                            <option >杨轶</option>
                            <option >周翔</option>
                            <option >测试计划人员</option>
                            <option >demo</option>
                            <option >Violet</option>
                        </select>
                    </td>
                    <td>
                    </td>
                    <td  style="text-align: center">
                        <input type="text" class="date" size="12" value="" />
                        <a class="inputDateButton" href="javascript:;"></a>
                    </td>
                    <td>
                        <textarea rows="2" style="width: 95%"/>
                    </td>
                    <td> <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a></td>
                </tr>



                </tbody>
            </table>
        </div>
        <div class="formBar">
            <ul>
                <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交数据</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">关闭窗口</button></div></div>
                </li>
            </ul>
        </div>
    </form>
</div>
</html>