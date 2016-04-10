


/*
$('.menu li').click(function(e){
	
$('a',this).addclass('active');

})

*/
$(document).ready(function() {
	$('.menu li a').click(function() {
		var id = $(this).data('id');
		$('.menu li a').addClass('');
		$('.menu li a').eq(id+1).css('color','#abcdef');      	
    });
});
