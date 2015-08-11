<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
<style type="text/css">
</style>
</head>

<div class="pageContent">
	<form method="post" action="demo/common/ajaxDone.html"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable" style="">
				<tr>
					<th style="width:120px;">货品编号：</th>
					<td style="width:150px;"><input name="goods_id"
						class="required" type="text" size="" value=""
						alt="请输入货品编号" /> <span class="inputInfo">必填项</span>
					</td>
					<th style="width:120px;">货品名称：</th>
					<td style="width:150px;"><input name="goods_name"
						class="required" type="text" size="" value=""
						alt="请输入货品名称" /> <span class="inputInfo">必填项</span>
					</td>

				</tr>

				<tr>
					<th style="width:120px;">货品类别：</th>
					<td style="width:150px;"><select
						style="color:#183152;font-family: 'Microsoft YaHei',Arial,sans-serif;">
							<option value="办公用品">办公用品</option>
							<option value="财务用品">财务用品</option>
							<option value="考勤用品">考勤用品</option>
							<option value="保险设备">仪器设备</option>
							<option value="生活用品">生活用品</option>
					</select></td>
					<th style="width:120px;">规格型号：</th>
					<td style="width:150px;"><input type="text" size="" />
					</td>
				</tr>


				<tr>
					<th style="width:120px;">单位：</th>
					<td style="width:150px;"><input type="text" size="" />
					</td>
					<th style="width:120px;">数量：</th>
					<td style="width:150px;"><input type="text" size="" alt="0" />
					</td>
				</tr>


				<tr>
					<th style="width:120px;">供应商：</th>
					<td style="width:150px;"><input type="text" class="required"
						size="" value="" name="supplier_name"> <span
						class="inputInfo">必填项</span>
					</td>
					<th style="width:120px;">价格：</th>
					<td style="width:150px;"><input name="goods_price"
						class="digits" type="text" size="" alt="请输入数字" />
					</td>
				</tr>

				<tr>

					<th style="width:120px;">仓库：</th>
					<td style="width:150px;"><input name="goods_id" type="text"
						size="" value="" />
					</td>
					<th style="width:120px;">入库时间：</th>
					<td style="width:150px;"><input type="text" name="in_time"
						class="date" size="" /><a class="inputDateButton"
						href="javascript:;">选择</a></td>
				</tr>



				<tr>

					<th style="width:120px;">备注：</th>
					<td style="width:420px" colspan="3"><textarea name="beizhu"
							cols="50" rows="3" />
					</td>
				</tr>

			</table>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">保存</button>
						</div>
					</div>
				</li>
				<li>
					<div class="button">
						<div class="buttonContent">
							<button type="button" class="close">取消</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>
</div>

</html>

