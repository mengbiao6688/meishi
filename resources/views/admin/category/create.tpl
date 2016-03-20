<{extends file="admin/extends/create.block.tpl"}>

<{block "head-plus"}>
<{include file="common/uploader.inc.tpl"}>
<{include file="common/editor.inc.tpl"}>
<{/block}>

<{block "inline-script-plus"}>
$('#cover_aids').uploader(640, 400, undefined, undefined, 20);
var $editor_content = UE.getEditor('content1',$.ueditor_default_setting.simple);
<{/block}>

<{block "title"}>分类<{/block}>

<{block "name"}>category<{/block}>

<{block "fields"}>
<{include file="admin/category/fields.inc.tpl"}>
<{/block}>
