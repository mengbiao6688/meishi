// JavaScript Document
$(document).ready(function(){
			
$("#c2-tpys #c2-zlg").hover(function(){
	/*$(this).children("#c2-zl").css("display","none").siblings().css("display","block");
	},function(){
		$(this).children("#c2-zl").css("display","block").siblings().css("display","none");*/
		$(this).children("#c2-zl").slideUp(3000).siblings("#c2-g").slideDown(3000);

		}),function(){
			$(this).children("#c2-zl").slideDown(3000).siblings("#c2-g").slideUp(3000);
			};

});