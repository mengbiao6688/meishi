<{extends file="extends/main.block.tpl"}>
<{include file="common/head.tpl"}>

<{block "body-container"}>
<div id="page7">
    <div id="bgSlider"></div>
    <div class="bg_spinner"></div>
    <!--==============================header=================================-->
    <div class="extra">
   	  <header>
        	<{include file="common/header.tpl"}>
      </header>
      <!--==============================content=================================-->
      <div class="inner">
      	<div class="main">
        	<section id="content">
            	<div class="indent">
                   <div class="wrapper">
                      <article class="col-1">
                     	 <div class="bg">
                             <div class="padding">
                                  <h3 class="p2"><strong>Good</strong> Cook</h3>
                                     <div class="wrapper p3">
                                             <figure class="img-indent"><img src="<{'attachment/resize?id='|url}><{$_meishi.pid}>" alt="" /></figure>
                                             <div class="extra-wrap">
                                                 <h6 class="color-3" style="height:35px;"><{$_meishi.name}></h6>
                                                 <div class="cailiao">
                                                    <h8>主料</h8>
                                                    <ul class="cllb">
                                                        <li><a><h9>胡萝卜</h9><span>1段</span></a></li>
                                                        <li><a><h9>豆芽菜</h9><span>3两</span></a></li>
                                                        <li><a><h9>青椒</h9><span>2颗</span></a></li>
                                                        <li><a><h9>&nbsp;&nbsp;&nbsp;</h9><span>&nbsp;&nbsp;&nbsp;</span></a></li>
                                                    </ul>
                                                 </div>
                                                 <div class="cailiao"> 
                                                    <h8>辅料</h8>
                                                    <ul class="cllb">
                                                        <li><a><h9>姜</h9><span>少许</span></a></li>
                                                        <li><a><h9>蒜</h9><span>少许</span></a></li>
                                                        <li><a><h9>盐</h9><span>少许</span></a></li>
                                                        <li><a><h9>胡椒</h9><span>少许</span></a></li>
                                                    </ul>
                                                 </div> 
                                             </div>
                                      </div>
                                  <h3 class="p2 color-3" style="border-bottom:#eeeeee 1px solid; margin-top:-8px; line-height:2.2em;" >做法</h3>

                                 <div class="img_left">
                                     <{foreach $_meishi.aids as $aid}>
                                     <p><figure class="img-indent"><img  src="<{'attachment?id='|url}><{$aid}>" alt=""/></figure></p>
                                     <{/foreach}>


                                 </div>
                                 <div class="text_right">
                                     <{$_meishi.zuofa nofilter}>
                                 </div>


                            </div>
                         </div>
                      </article>
                      <article class="col-2">
                        <h3 class="border-bot p2"><strong>Popular</strong> Recepes</h3>
                                        <h6 class="color-3">美食菜谱</h6>
                                        <p>"生活水平的不断提高，人们对美食的需求也在真加，让我们看看那些菜肴获得大家的欢迎"</p>
                                        <figure class="p2"><img src="images/page2/p2-5.jpg" alt="" /></figure>
                                        <ul class="list-1 img-indent-bot">
                                            　　<li><a href="#">减肥鸡蛋沙拉···················营养均衡</a></li>
                                                <li><a href="#">猪耳麻辣香锅···················开胃健脾</a></li> 
                                                <li><a href="#">酸辣酿尖椒······················开胃健脾</a></li> 
                                                <li><a href="#">蟹粉鲜虾丸······················增强抵抗力</a></li>
                                                <li><a href="#">酸辣酿尖椒······················开胃膳食</a></li>
                                                <li><a href="#">洋葱炒芹菜······················利于抗癌</a></li>
                                                <li><a href="#">脆皮香豆腐······················美味可口</a></li>
                                                <li><a href="#">北京烤肉························预防贫血</a></li>                                 
                                         </ul>
                      </article>
                   </div>
                </div>
            </section>
             <div class="block"></div>
        </div>
      </div>
    </div>
     </div><!--------------------------------------extra结束------------------------------------>
    <footer>  <!--style=" margin-top:100px;"-->
    	<{include file="common/footer.tpl"}>
    </footer>

 <script type="text/javascript"> Cufon.now(); </script>
    <script type="text/javascript">

		$(window).load(function() {
			$('.slider')._TMS({
				duration:1000,
				easing:'easeOutQuart',
				preset:'simpleFade',
				slideshow:10000,
				banners:'fade',
				pauseOnHover:true,
				waitBannerAnimation:false,
				pagination:'.pags'
			});
		});
    </script>
 </div>
 <{/block}>