
<div class="form-group">
	<label class="col-md-3 control-label" for="parent">上级分类</label>
	<div class="col-md-9">

		<select name="parent_id" id="parent_id" class="select-model form-control"  data-model="admin/category"  data-text="{name}" data-placeholder="上级分类"></select>

	</div>
</div>


<div class="form-group">
	<label class="col-md-3 control-label" for="name">分类名称</label>
	<div class="col-md-9">
		<input type="text" id="name" name="name" class="form-control" placeholder="请输入名称" value="<{$_data.name}>">
	</div>
</div>


<div class="form-group form-actions">
	<div class="col-md-9 col-md-offset-3">
		<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> 提交</button>
		<button type="reset" class="btn btn-sm btn-warning"><i class="fa fa-repeat"></i> 重设</button>
	</div>
</div>