
<div class="form-group">
	<label class="col-md-3 control-label" for="name">名称</label>
	<div class="col-md-9">
		<input type="text" id="name" name="name" class="form-control" placeholder="请输入名称" value="<{$_data.name}>">
	</div>
</div>

<!--<div class="form-group">
	<label class="col-md-3 control-label" for="cat_id">美食分类</label>
	<div class="col-md-9">

		<select name="cat_id" id="cat_id" class="select-model form-control" data-placeholder="请选择分类"  data-model="admin/category"  data-text="{name}" data-placeholder="上级分类"></select>

	</div>
</div>-->

<div class="form-group">
	<label class="col-md-3 control-label" for="cover_aids">美食图片</label>
	<div class="col-md-9">
		<select id="cover_aids" name="cover_aids[]" class="form-control hidden" multiple="multiple">
			<{if !empty($_data)}><{foreach $_cover_aids as $item}>
			<option value="<{$item.cover_id}>" selected="selected"></option>
			<{/foreach}><{/if}>
		</select>
		<div class="alert alert-info"><i class="fa fa-warning"></i> 可以上传20张图片作为美食的封面</div>
	</div>
</div>

<div class="form-group">
	<label class="col-md-3 control-label" for="desc">描述</label>
	<div class="col-md-9">
		<textarea id="desc" rows="15" cols="100" name="desc" class="" placeholder="美食描述"><{$_data->desc}></textarea>
	</div>
	<div class="clearfix"></div>
</div>

<div class="form-group">
	<label class="col-md-3 control-label" for="yongliao">用料</label>
	<div class="col-md-9">
		<textarea id="content" rows="15" cols="100" name="yongliao" class="" placeholder="用料"><{$_data->yongliao}></textarea>
	</div>
	<div class="clearfix"></div>
</div>

<div class="form-group">
	<label class="col-md-3 control-label" for="zuofa">做法</label>
	<div class="col-md-9">
		<textarea id="content1" name="zuofa" class="" placeholder="请输入..."><{$_data->yongliao}></textarea>
	</div>
	<div class="clearfix"></div>
</div>





<div class="form-group form-actions">
	<div class="col-md-9 col-md-offset-3">
		<button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> 提交</button>
		<button type="reset" class="btn btn-sm btn-warning"><i class="fa fa-repeat"></i> 重设</button>
	</div>
</div>