


/*
$('.menu li').click(function(e){
	
$('a',this).addclass('active');

})

*/
$(document).ready(function() {
	var reg = /\d/;
	var id_str = $('body').children('div').attr('id');
	var id = id_str.match(reg);
	var links = $('.menu li a');
	links.removeAttr('class');
	
	links.eq(parseInt(id)-1).addClass('active');
});
