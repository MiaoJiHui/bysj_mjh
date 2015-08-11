<html>
<div class="pageContent">
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="38" style="padding:0px;border-width: 0px;">

            <div class="pageHeader" style="background-color: #EBF0F5;border-width:1px 0px">
                <form rel="pagerForm" onsubmit="return navTabSearch(this);" action="w_removeSelected.html" method="post">
                    <div class="searchBar">
                        <div class="searchBar">
                            <ul class="searchContent">
                                <li style="width: 300px;">
                                    <label>
                                        关键字搜索：
                                    </label>
                                    <input class="textInput" type="text" style="width:200px;" value="" name="key"></input>
                                </li>
                            </ul>
                            <div class="subBar">
                              <span class="info_clear">
                               符合条件的记录，共有
                                 <strong>
                                     10
                                 </strong> 条。
                               </span>
                            <ul></ul>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="pageContent" style="border-width: 1px 0px;margin-top: 1px;border-bottom-width:0px;">

                 <table class="table" width="896px"height="460px" >
                    <thead>
                    <tr>
                        <th width="30px">选择<input type="checkbox" group="ids" class="checkboxCtrl"></th>
                        <th width="108px" orderField="accountNo" class="asc">主题</th>
                        <th width="83px">承租人</th>
                        <th width="70px" orderField="accountType">租赁日期</th>
                        <th width="43px" orderField="accountCert">付款周</th>
                        <th width="43px" align="center" orderField="accountLevel">付款期</th>
                        <th width="43px">利率类</th>
                        <th width="46px">利率</th>
                        <th width="45px">币种</th>
                        <th width="65px">汇率</th>
                        <th width="83px">贷款总额</th>
                        <th width="85px">提款总额</th>
                        <th width="82px">提款余额</th>
                        <th width="60px">提款次数</th>
                        <th width="30px">删除</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042rwerwer</td>
                        <td>123</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>冬瓜融资</td>
                        <td>2013-10-12</td>
                        <td>月度</td>
                        <td>12</td>
                        <td>固定利息</td>
                        <td>11.80%</td>
                        <td>CNY</td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>飞航租赁</td>
                        <td>2013-10-2</td>
                        <td>月度</td>
                        <td>12</td>
                        <td>固定利息</td>
                        <td>11.80%</td>
                        <td>CNY</td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>冬瓜融资</td>
                        <td>2013-7-12</td>
                        <td>月度</td>
                        <td>12</td>
                        <td>固定利息</td>
                        <td>11.80%</td>
                        <td>CNY</td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>
                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>冬瓜融资</td>
                        <td>2013-10-12</td>
                        <td>月度</td>
                        <td>12</td>
                        <td>固定利息</td>
                        <td>11.80%</td>
                        <td>CNY</td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>飞航租赁</td>
                        <td>2013-10-12</td>
                        <td>季度</td>
                        <td>12</td>
                        <td>固定利息</td>
                        <td>11.80%</td>
                        <td>CNY</td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>冬瓜融资</td>
                        <td>2013-9-12</td>
                        <td>年度</td>
                        <td>12</td>
                        <td>固定利息</td>
                        <td>11.80%</td>
                        <td>CNY</td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>冬瓜融资</td>
                        <td>2013-10-12</td>
                        <td>月度</td>
                        <td>12</td>
                        <td>固定利息</td>
                        <td>11.80%</td>
                        <td>CNY</td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>冬瓜融资</td>
                        <td>2013-10-12</td>
                        <td>月度</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>
                    <tr target="sid_user" rel="1">
                        <td><input name="ids" value="xxx" type="checkbox"></td>
                        <td>LS2013110042设备租赁11</td>
                        <td>飞航租赁</td>
                        <td>2013-10-12</td>
                        <td>月度</td>
                        <td>12</td>
                        <td>固定利息</td>
                        <td>11.80%</td>
                        <td>CNY</td>
                        <td>1.00</td>
                        <td></td>
                        <td></td>
                        <td>0.00</td>
                        <td>0</td>
                        <td>
                            <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                        </td>

                    </tr>


                    </tbody>
                 </table>


               </div>
            <div class="panelBar" style="margin-bottom: 1px;margin-top:41px;">
                <div class="pages">
                    <span>显示</span>
                    <select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
                        <option value="10">10</option>
                        <option value="20">20</option>
                        <option value="30">30</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                    <span>条，共26条</span>
                </div>
                <div class="pagination" targetType="navTab" totalCount="200" numPerPage="20" pageNumShown="10" currentPage="1"></div>
            </div>
        </div>


        <div class="formBar page5_formBar" style="margin-bottom:0px;border-bottom-width: 1px;">
            <ul>
                <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li> -->
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交数据</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">关闭窗口</button></div></div>
                </li>
            </ul>
        </div>
    </form>
</div>
</html>


