// JavaScript Document
//第一、二种形式的JS代码:  Js代码
    function setTab(m,n){ 
     var tli=document.getElementById("menu"+m).getElementsByTagName("li"); /*获取选项卡的LI对象，是以0开头的数组对象，数组名为tli*/   
     var mli=document.getElementById("main"+m).getElementsByTagName("ul"); /*获取主显示区域对象,，是以0开头的数组对象，数组名为mli*/  
    for(i=0;i<tli.length;i++){    
     tli[i].className=(i==n?"hover":""); /*i==n?"hover":"是条件表达式，可将对应的选项卡应用hover类。   "更改选项卡的LI对象的样式，如果是选定的项则使用.hover样式*/   
    mli[i].style.display=(i==n?"block":"none"); /*i==n?"block":"none"是一个条件表达式，这样可将对应的ul的display属性改为block.    确定主区域显示哪一个对象*/  
  }   
  }