
<div class="pageContent">
	<form method="post" action="supplier_information.html" class="pageForm"
		onsubmit="return navTabSearch(this);">
		<div class="pageFormContent" layoutH="48">
			<table class="formTable">
				<tr class="color">
					<h3>请输入检索条件：</h3>
				</tr>


				<div class="divider">divider</div>


				<tr>
					<th>货品编号：</th>
					<td><input type="text" size="25" class="lettersonly" /> <span
						class="inputInfo">完整的货品编号</span></td>
				</tr>
				<tr>
					<th>货品名：</th>
					<td><input type="text" size="25" class="lettersonly" /> <span
						class="inputInfo">全称或关键字</span></td>
				<tr>
					<th>数量：</th>
					<td><input type="text" size="25" /> <span class="inputInfo">数字</span>


					</td>
				</tr>


				<tr>
					<th>入货仓库号：</th>
					<td><input type="text" size="25" /> <span class="inputInfo">完整的仓库号</span>

					</td>
				</tr>
				<tr>
					<th>仓库地址：</th>
					<td><input type="text" size="25" class="lettersonly" /> <span
						class="inputInfo">关键字</span>
				</tr>
				<tr>
					<th>入库日期：</th>
					<td><input type="text" size="25" class="date" /> <span
						class="inputInfo">年月日</span>
					</td>
				</tr>
				<tr>
					<th>仓库负责人：</th>
					<td><input type="text" size="25" /> <span class="inputInfo">全称或关键字</span>

					</td>
				</tr>






			</table>
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


