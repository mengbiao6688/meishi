$('.menu li').click(function(){
var oA=document.getElementsByTagName('.menu a');
for(var i=0;i<oA.length;i++){
oA[i].onclick=function() {
for(var i=0;i<oA.length;i++){
oA[i].addclass=active;
}
}
}
})