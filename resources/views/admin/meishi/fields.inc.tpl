
<div class="form-group">
	<label class="col-md-3 control-label" for="name">名称</label>
	<div class="col-md-9">
		<input type="text" id="name" name="name" class="form-control" placeholder="请输入名称" value="<{$_data.name}>">
	</div>
</div>

<div class="form-group">
	<label class="col-md-3 control-label" for="name">工艺</label>
	<div class="col-md-9">
		<input type="text" id="gongyi" name="gongyi" class="form-control" placeholder="请输入工艺" value="<{$_data.gongyi}>">
	</div>
</div>

<div class="form-group">
	<label class="col-md-3 control-label" for="kouwei">口味</label>
	<div class="col-md-9">
		<input type="text" id="kouwei" name="kouwei" class="form-control" placeholder="请输入口味" value="<{$_data.kouwei}>">
	</div>
</div>

<div class="form-group">
	<label class="col-md-3 control-label" for="special">推荐</label>
	<div class="col-md-9">
		此功能稍后再做
	</div>
</div>

<div class="form-group">
	<label class="col-md-3 control-label" for="type">类型</label>
	<div class="col-md-9">
		<select name="type" id="type" class="select-model form-control"  data-text="请选择类型" data-placeholder="上级分类">
			<option value="1">国外菜肴</option>
			<option value="2">国内菜肴</option>
			<option value="3">家常菜肴</option>
		</select>
	</div>
</div>

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
	<label class="col-md-3 control-label" for="yongliao">用料</label>
	<div class="col-md-9">
		<textarea id="content" name="yongliao" class="" placeholder="请输入..."><{$_data->zuofa}></textarea>
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