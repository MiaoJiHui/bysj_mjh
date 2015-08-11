
<div class="pageContent">
    <form method="post" action="demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="50">
            <table class="formTable">
                <tr >
                    <th >批次：</th>
                    <td >1<a href="page/page8_zuyue.html" target="dialog" mask="true"width="800" height="500" style="color:blue;padding-left:5px;">【查看租约情况】</a>
                    </td>
                    <th>批次名称：</th>
                    <td ><input size="15"type="text"></td>
                </tr>
                <tr>
                    <th>提款额：</th>
                    <td><input type="text" size="15" class="required" alt="0.00"/></td>
                    <th>提款比例：</th>
                    <td><input type="text"size="6"class="required" alt="0.00"/><span class="inputInfo">%</span></td>
                </tr>
                <tr>
                    <th>提款日期(起息日)：</th>
                    <td><input type="text" size="15" class="required date" /><a class="inputDateButton" href="javascript:;"></a></td>
                    <th>首期结息日：</th>
                    <td><input type="text"size="15"class="required date" /><a class="inputDateButton" href="javascript:;"></a></td>
                </tr>
                <tr>
                    <th>利率类型：</th>
                    <td></td>
                    <th>利率：</th>
                    <td><input type="text"size="6"class="required" alt="0.00"/><span class="inputInfo">%</span></td>
                </tr>
                <tr>
                    <th>平息率：</th>
                    <td>0.00</td>
                    <th>付款周期类型：</th>
                    <td>
                        <input type="radio"name="page8_radio1" value="" checked/>月结
                        <input type="radio"name="page8_radio1" value=""/>季结
                        <input type="radio"name="page8_radio1" value=""/>半年结
                        <input type="radio"name="page8_radio1" value=""/>年结
                    </td>
                </tr>
                <tr>
                    <th>还款方式：</th>
                    <td>
                        <input type="radio"name="page8_radio2" value="" checked/>等额本息
                        <input type="radio"name="page8_radio2" value=""/>等额本息
                        <input type="radio"name="page8_radio2" value=""/>平息
                    </td>
                    <th>先后方式：</th>
                    <td><input type="radio"name="page8_radio3" value="" checked/>先付
                        <input type="radio"name="page8_radio3" value=""/>后付</td>
                </tr>
                <tr>
                    <th>付款期数：</th>
                    <td><input type="text" size="15"class="required"/></td>
                    <th>上线付款期数：</th>
                    <td><input type="text"size="15"class="required" alt="1"/></td>
                </tr>
                <tr>
                    <th>提款取整数：</th>
                    <td><select name="tikuan" >
                        <option name="op" value="不取整" select>不取整</option>
                        <option name="op" value="租金取整">租金取整</option>
                        <option name="op" value="本金和利息取整">本金和利息取整</option>
                        </select>
                    </td>
                    <th>付款宽限天数：</th>
                    <td><input type="text"size="20"/></td>

                </tr>
                <tr>
                    <td colspan="4">
                        <h1 class="page8_span1" style="font-size:14px;font-style:italic;color:#183152;">上线首个付款周期</h1>
                    </td>
                </tr>
                <tr>
                    <th>起止会计期间：</th>
                    <td colspan="3"><input type="text" size="15"class="required"/><span class="page8_span2" style="padding:0px 2px;">至</span><input type="text" size="15"class="required"/></td>
                </tr>
                <tr>
                    <th>首个会计期间有效天数：</th>
                    <td  colspan="3"><input type="text" size="15"class="required"/></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <h1 class="page8_span1" style="font-size:14px;font-style:italic;color:#183152;float:left;">周期性费用 </h1><a href="#" class="page8_span3" style="color:blue;padding-left:15px;padding-bottom:5px;float:left;">显示原始值</a>
                    </td>
                </tr>
                <tr>
                    <th>保险费：</th>
                    <td><input type="text" size="15"class="required" alt="0.00"/></td>
                    <th>管理费：</th>
                    <td><input type="text"size="15"class="required" alt="0.00"/></td>
                </tr>
                <tr>
                    <th>手续费：</th>
                    <td><input type="text" size="15"class="required" alt="0.00"/></td>
                    <th>罚息费：</th>
                    <td><input type="text"size="15"  alt="0.00"/></td>
                </tr>
                <tr>
                    <th>其他费用：</th>

                    <td colspan="3"><input type="text"size="15"alt="0.00"/></td>
                </tr>
                <tr>
                    <th>备注：</th>

                    <td colspan="3"><textarea class="page8_textarea" style="margin:3px;" rows="2" cols="90" /></td>
                </tr>
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