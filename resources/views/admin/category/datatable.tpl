<{extends file="admin/extends/datatable.block.tpl"}>
<!--
公共Block
由于extends中无法使用if/include，所以需要将公共Block均写入list.tpl、datatable.tpl
-->

<{block "title"}>分类<{/block}>

<{block "name"}>category<{/block}>

<{block "table-th-plus"}>
<th>名称</th>

<{/block}>

<!-- DataTable的Block -->

<{block "datatable-config-pageLength"}><{$_pagesize}><{/block}>

<{block "datatable-columns-plus"}>
var columns_plus = [

	{data: 'name'},

];
<{/block}>
<{block "datatable-columns-options-delete-confirm"}>var columns_options_delete_confirm = '您确定删除这个项目：'+full['name']+'吗？';<{/block}>

