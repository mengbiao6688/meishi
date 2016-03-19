// JavaScript Document

 var curIndex=0;//时间间隔 单位毫秒
 var timeInterval=1000;
 var arr=new Array();
setInterval(changeImg,timeInterval);//每隔timeInterval这么长的时间执行一次changeImg()方法
function changeImg()
{    arr=document.getElementTagName("img");
    if (curIndex==arr.length-1) 
    {
        curIndex=0;
    }
    else
    {
        curIndex+=1;
    }
    obj.src=arr[curIndex];//数组里存的图片链接换到上面取的obj对象
}
