<script type="text/javascript">
(function($){
	$.error_bags = <{if !empty($errors)}><{$errors->toArray()|@json_encode nofilter}><{else}>{}<{/if}>;
	;
})(jQuery);
</script>
<{if !empty($_validates)}>
<script>(function($){$.validates = <{if !empty($_validates)}><{$_validates|@json_encode nofilter}><{else}>{}<{/if}>})(jQuery)</script>
<script src="<{'static/js/jquery.validate.min.js'|url}>"></script>
<script src="<{'static/js/jquery.validate.addons.js'|url}>"></script>
<{/if}>
<{if !empty($errors) || !empty($_validates)}>
<script src="<{'static/js/laravel.validation.js'|url}>"></script>
<{/if}>
<{function name=validate $ajax=true $selector='#form'}>
jQuery('<{$selector}>')<{if !empty($_validates)}>.validate_addons($.validates)<{/if}><{if !empty($errors)}>.trigger_error_bags($.error_bags)<{/if}><{if $ajax}>.query()<{/if}>;
<{/function}>