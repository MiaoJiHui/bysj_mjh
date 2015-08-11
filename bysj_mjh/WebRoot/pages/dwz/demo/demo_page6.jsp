<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<div class="pageContent">
	<form method="post" action="demo_page1.html" class="pageForm"
		onsubmit="return navTabSearch(this);">
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<label>请输入检索条件：</label> <input type="text" size="50"
					minlength="3" maxlength="10" />
			</div>
			<div class="divider">divider</div>
			<div class="unit">
				<label>客户划分：</label> <label class="radioButton"><input
					name="name" type="radio" />全部</label> <label class="radioButton"><input
					name="name" type="radio" />企业</label> <label class="radioButton"><input
					name="name" type="radio" />商户</label> <label class="radioButton"><input
					name="name" type="radio" />农户</label> <label class="radioButton"><input
					name="name" type="radio" />个人</label>
			</div>
			<div class="unit">
				<label>客户名称：</label> <input type="text" size="25"
					name="name" /> <span class="inputInfo">关键字或全称</span>
			</div>

			<div class="divider">divider</div>
			<div class="unit">
				<label>排序条件：</label> <select>
					<option>按客户号倒排</option>
					<option>按建档日期倒排</option>
					<option>按信用等级顺排</option>
					<option>按客户号顺排</option>
					<option>按建档日期顺排</option>
					<option>按所属行业顺排</option>
				</select>
			</div>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">开始检索</button>
						</div>
					</div>
				</li>
				<li><div class="button">
						<div class="buttonContent">
							<button type="reset">清空重输</button>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</form>
</div>
