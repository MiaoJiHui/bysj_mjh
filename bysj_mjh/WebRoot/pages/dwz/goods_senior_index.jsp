
<div class="pageContent">
	<form method="post" action="goods_informatino.html" class="pageForm"
		onsubmit="return navTabSearch(this);">
		<div class="pageFormContent" layoutH="58">
			<div class="unit">
				<label>请输入检索条件：</label>

			</div>
			<div class="divider">divider</div>

			<div class="unit">
				<label>货品编号：</label> <input type="text" size="25"
					name="goods_id" /> <span class="inputInfo">完整的货品编号</span>
			</div>
			<div class="unit">
				<label>货品名称：</label> <input type="text" size="25"
					name="goods_name" class="lettersonly" /> <span class="inputInfo">关键字或全称</span>
			</div>
			<div class="unit">
				<label>货品类别：</label> <input type="text" size="25"
					name="goods_type" class="alphanumeric" /> <span class="inputInfo">完整的货品类别</span>
			</div>
			<div class="unit">
				<label>供应商：</label> <input type="text" size="25"
					name="goods_supplier" class="alphanumeric" /> <span
					class="inputInfo">关键字或全称</span>
			</div>
			<div class="unit">
				<label>价格：</label> <input type="text" size="25" /> <span
					class="inputInfo">价格</span>
			</div>
			<div class="unit">
				<label>仓库：</label> <input type="text" size="25" /> <span
					class="inputInfo">关键字或全名</span>
			</div>
			<div class="unit">
				<label>入库时间</label> <input type="text" size="25"
					name="date1" class="date" /> <span class="inputInfo">具体日期</span>

			</div>


			<div class="divider">divider</div>
			<div class="unit">
				<label>排序条件：</label> <select>
					<option>按价格从小到大排序</option>
					<option>按价格从大到小排序</option>
					<option>按入库时间顺排</option>
					<option>按入库时间倒排</option>

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
