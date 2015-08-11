
<div class="pageContent" >
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent"  layoutH="38" style="padding: 0px;">
            <div class="grid">
                <div class="gridHeader">
                    <div class="gridThead">
                         <table style="width:566px;">
                             <thead>
                               <tr>
                                   <th class="center" style="width: 28px;">
                                       <div class="gridCol" title="序号">序号</div>
                                   </th>
                                   <th class="left" style="width: 149px; cursor: default;">
                                       <div class="gridCol" title="密码">密码</div>
                                   </th>
                                   <th class="left" style="width: 149px; cursor: default;">
                                       <div class="gridCol" title="开始时间">开始时间</div>
                                   </th>
                                   <th class="left" style="width: 149px; cursor: default;">
                                       <div class="gridCol" title="结束时间">结束时间</div>
                                   </th>
                               </tr>
                             </thead>
                          </table>
                        </div>
                    </div>
                    <div class="gridScroller" style="width: 586px; height: 200px; overflow: auto;" layouth="140">

                        <div class="gridTbody">
                            <table style="width: 556px;">
                                <tbody>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
           <div >
            <table class="formTable" style="width:98%" >
                <tr>
                    <th>资产序列号：</th>
                    <td><input type="text" ></td>
                    <th>密码：</th>
                    <td><input type="text" class="required"> </td>
                </tr>
                <tr>
                    <th>开始时间：</th>
                    <td><input type="text" class="required date"></td>
                    <th>结束时间：</th>
                    <td><input type="text" class="required date"> </td>
                </tr>
            </table>
           </div>

        </div>
        <div class="formBar" >
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