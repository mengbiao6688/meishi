
<{extends file="extends/main.block.tpl"}>
<{include file="common/head.tpl"}>
<{block "body-container"}>
<div id="page4">
	<div id="bgSlider"></div>
    <div class="bg_spinner"></div>
	<div class="extra">
        <!--==============================header=================================-->
        <header>
        	<{include file="common/header.tpl"}>
        </header>
        <!--==============================content================================-->
        <div class="inner">
            <div class="main">
                <section id="content">
                    <div class="indent">
                    	<div class="wrapper">
                        	<article class="col-1">
                                <div class="indent-left">
                                	<h3><strong>Advice</strong> from Our Cook</h3>    
                                    <p class="p1">经常做饭的朋友总会有一些厨房"绝招"，处理难搞食材得心应手。新来的菜鸟们，赶紧看看如何把一道菜的味道魔法变身的吧。 </p>
                                   <!-- <h6 style="font-size:14px; margin-top:10px; margin-bottom:10px;" class="color-3">一起来看看为我们做贡献的厨师吧！</h6>-->
                                   <div class="ahz1">
                                  	  <div class="wrapper p3">
                                    	<figure class="img-indent"><img src="<{'static/img/meishi/tips/tips-1.jpg'|url}>" alt="" /></figure>
                                        <div class="extra-wrap">
                                            <p6 class="color-3">美食爱好者：潜行蜗牛</p6>
                                            <p class="p1">从事料理近20年，曾跟随日本人，法国人，学习料理制造,在国外学习工作多年,不断的学习创新,不断的追求精致料理菜品的变革和结合，积累丰富的经验。</p>
                                        </div>
                                    </div>
                                  	 <div class="wrapper p3">
                                    	<figure class="img-indent"><img src="<{'static/img/meishi/tips/tips-2.jpg'|url}>" alt="" /></figure>
                                        <div class="extra-wrap">
                                            <p6 class="color-3">美食爱好者：等风来</p6>
                                            <p class="p1">从事料理工作10年，曾到法国、日本、韩国学习料理,在国外学习工作多年,不断的学习创新,不断的追求精致料理菜品的变革和结合，积累丰富的经验。</p>
                                        </div>
                                    </div>
                                   </div>
                                   <!-- <div class="ahz2">
                                  	  <div class="wrapper p3">
                                    	<figure class="img-indent"><img src="<{'static/img/meishi/tips/tips-2.jpg'|url}>" alt="" /></figure>
                                        <div class="extra-wrap">
                                            <p6 class="color-3">美食爱好者：潜行蜗牛</p6>
                                            <p class="p1">从事料理近20年，曾跟随日本人，法国人，学习料理制造,在国外学习工作多年,不断的学习创新,不断的追求精致料理菜品的变革和结合，积累丰富的经验。</p>
                                        </div>
                                    </div>
                                  	 <div class="wrapper p3">
                                    	<figure class="img-indent"><img src="<{'static/img/meishi/tips/tips-1.jpg'|url}>" alt="" /></figure>
                                        <div class="extra-wrap">
                                            <p6 class="color-3">美食爱好者：等风来</p6>
                                            <p class="p1">从事料理工作10年，曾到法国、日本、韩国学习料理,在国外学习工作多年,不断的学习创新,不断的追求精致料理菜品的变革和结合，积累丰富的经验。</p>
                                        </div>
                                    </div>
                                   </div>-->
                                    <ul class="zy"> 
                                       <li><a class="prev" href="#"></a></li> 
                                       <li><a class="next" href="#"></a></li> 
                                     </ul>
                                </div>
 <!---------------------------------- 有图片的地方---------------------------------->
                                <div class="bg">
                                    <div class="padding">
                                        <h3 style="display:block;"><div style=" width:200px; display:block; float:left;"><strong>Represent</strong>  foods </div> 
                                        <ul class="sx"> 
                                        <li><a href="#"></a></li> 
                                        <li><a href="#"></a></li> 
                                        </ul>
                                        </h3>
                                        
                                      	 	 <div style="margin-top:20px;" class="wrapper indent-bot">
                                        		<div class="column-1">
                                            	 <div class="wrapper">
                                                	<figure class="img-indent"><a href="<{'meishi/3'|url}>"><img src="<{'static/img/meishi/page2/p2-5.jpg'|url}>" alt="" /></a></figure>
                                                    <div class="extra-wrap">
                                                    	<div class="margin-top">
                                                            <h6>减肥鸡蛋沙拉</h6>
                                                            <p class="p1">美食爱好者：潜行蜗牛；</br>
                                                            主要材料是咸蛋，香菜等，有减肥功能</p>
                                                            <a class="link" href="<{'meishi/3'|url}>">Read More</a>
                                                        </div>
                                                    </div>
                                                 </div>
                                               </div>
                                            	 <div class="column-2">
                                            		<div class="wrapper">
                                                	<figure class="img-indent"><a href="<{'meishi/2'|url}>"><img src="<{'static/img/meishi/page2/p2-8.jpg'|url}>" alt="" /></a></figure>
                                                    <div class="extra-wrap">
                                                    	<div class="margin-top">
                                                            <h6>蟹粉鲜虾丸</h6>
                                                            <p class="p1">美食爱好者：深呼吸；</br>
                                                            主要材料是虾，清理肠胃，排除油脂</p>
                                                            <a class="link" href="<{'meishi/2'|url}>">Read More</a>
                                                        </div>
                                                    </div>
                                                </div>
                                              </div>
                                        		<div class="column-1">
                                                    <div class="wrapper">
                                                        <figure class="img-indent"><a href="<{'meishi'}>/<{$data.id}>"><img src="<{'static/img/meishi/page2/p2-6.jpg'|url}>" alt="" /></a></figure>
                                                    <div class="extra-wrap">
                                                    	<div class="margin-top">
                                                            <h6>猪耳麻辣香锅</h6>
                                                            <p class="p1">美食爱好者：刘倩;</br>
                                                            主要材料猪耳、辣椒，色香味俱全</p>
                                                            <a class="link" href="<{'meishi'}>/<{$data.id}>">Read More</a>
                                                       	 </div>
                                                   	 </div>
                                                	</div>
                                                </div>
                                          		<div class="column-2">
                                            		<div class="wrapper">
                                                	<figure class="img-indent"><a href="<{'meishi'}>/<{$data.id}>"><img src="<{'static/img/meishi/page2/p2-10.jpg'|url}>" alt="" /></a></figure>
                                                     <div class="extra-wrap">
                                                    	<div class="margin-top">
                                                            <h6>洋葱炒芹菜</h6>
                                                            <p class="p1">美食爱好者：等风来</br>
                                                            主要材料洋葱、芹菜，清热解毒</p>
                                                            <a class="link" href="<{'meishi'}>/<{$data.id}>">Read More</a>
                                                       	  </div>
                                                    	</div>
                                                	</div>
                                           		 </div>
                                        	 </div>
                                           
                                        
                                        
                                    </div>
                                </div>
                            </article>
                            <article class="col-2">
                            	<h3><strong>Tips</strong></h3>
                                <div class="img-indent-bot">
                                   <!-- <h6>Sed perspiciatis unde </h6>-->
                                    <p class="p1"><h10>1、</h10>蒸鸡蛋羹时要用温开水搅，蛋羹鲜嫩。</p>
                                    <p class="p1"><h10>2、</h10>使醋变香法 在醋内放少许白糖，再加点盐，就成香醋了。</p>
                                    <p class="p1"><h10>3、</h10>快速烧肉法每斤肉内放一片山楂，肉熟得快而味美。 </p>
                                    <p class="p1"><h10>4、</h10>做菜汤时，应将水烧开再放菜，最好加入适量的淀粉。</p>
                                    <p class="p1"><h10>5、</h10>甜椒要用急火快炒。炒时加少许精盐、醋，炒几下即可出锅。</p>
                                    <p class="p1"><h10>6、</h10>炒藕丝或藕片时，一边炒一边加些清水，能防止藕变黑。 </p>   
                                </div>
                                <a href="#"><img src="<{'static/img/meishi/banner-1.jpg'|url}>" alt="" /></a>
                            </article>
                        </div>
                    </div>
                </section>
                <div class="block"></div>
            </div>
        </div>
    </div>
	<!--==============================footer=================================-->
  <footer>
    	<{include file="common/footer.tpl"}>
    </footer>
    <script type="text/javascript"> Cufon.now(); </script>
     <script type="text/javascript">
  $('.img-indent').hover(function(e){
	$('.imgss',this).css({display:'block'});
	  
	  },function(){
	 $('.imgss',this).css({display:'none'}); 
		  });
  
  
 /* $('.next').click(function(){
	   	$('.ahz2').show()..end().silbings('.ahz1').hide();
	   
	  });
   $('.prev').click(function(){
	   	$('.ahz1').show().end().silbings('.ahz2').hide();
	   
	  });  	*/ 
  </script>

 </div>
<{/block}>