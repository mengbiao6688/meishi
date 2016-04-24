<{extends file="extends/main.block.tpl"}>
<{include file="common/head.tpl"}>

<{block "body-container"}>
<div id="page1">
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
                    <!------------------------------- 图片轮播横条开始---------------------------------->
                    <div class="slider">
                        <ul class="items">
                            <li>
                                <a href="foods"><img src="<{'static/img/meishi/slider-img1.jpg'|url}>" alt="" /></a>
                                <div class="banner">
                                    <strong class="title">
                                        <strong>Information</strong><em></em>
                                    </strong>
                                    <p class="p3">牛肉富含大量的蛋白质、脂肪、卡路里，还有少量卵磷脂、胆固醇、游离脂肪酸及脂溶性色素，可提供较多的热量，能滋养脾胃、强健筋骨。</p>
                                    <a class="button-1" href="recipes">Read More</a>
                                </div>
                            </li>
                            <li>
                                <img src="<{'static/img/meishi/slider-img2.jpg'|url}>" alt="" />
                                <div class="banner">
                                    <strong class="title">
                                        <strong>Information</strong><em></em>
                                    </strong>
                                    <p>蔬菜中含有大量水分，含少量的蛋白质、脂肪、糖类、维生素、无机盐、纤维素等营养，肉中含含大量的蛋白质、脂肪，荤素搭配，营养均衡。</p>
                                    <a class="button-1" href="recipes">Read More</a>
                                </div>
                            </li>
                            <li>
                                <img src="<{'static/img/meishi/slider-img3.jpg'|url}>" alt="" />
                                <div class="banner">
                                    <strong class="title">
                                        <strong>Information</strong><em></em>
                                    </strong>
                                    <p>每一天膳食都需要营养搭配均衡，蔬菜、水果、肉类食品缺一不可，膳食营养均衡满足身体需要，促进生长、发育、健康。</p>
                                    <a class="button-1" href="recipes">Read More</a>
                                </div>
                            </li>
                        </ul>
                        <a class="banner-2" href="#"></a>
                    </div><!------------------slider结束图片轮播横条结束----------------->
                    <ul class="pags">
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                    <!--------------------------------------- 第2横条------------------------------------------------->
                    <div class="bg">
                        <div class="padding">
                            <div class="wrapper">
                                <article style=" min-width:320px;" class="col-2">
                                    <h3><strong>Recommended</strong> <em>today</em></h3>
                                    <ul class="list-1">
                                        <li><a href="<{'meishi/1'|url}>">清炒素三丝······················营养均衡</a>
                                        <img src="<{'static/img/meishi/page2/p2-1.jpg'|url}>"></li>
                                        <li><a href="recipes">美味蛋包饭······················补充蛋白</a>
                                        <img src="<{'static/img/meishi/page2/p2-2.jpg'|url}>"></li>
                                        <li><a href="#">酸辣酿尖椒······················开胃膳食</a>
                                        <img src="<{'static/img/meishi/page2/p2-7.jpg'|url}>"></li>
                                        <li><a href="#">耗油西兰花······················增强抵抗</a>                                      <img src="<{'static/img/meishi/page2/p2-4.jpg'|url}>"></li> 

                                    </ul>
                                    <div class="relative">
                                        <a class="button-1" href="recipes">Read More</a>
                                    </div>
                                </article>
                                <article style=" min-width:320px;" class="col-2">
                                    <h3><strong>Latest</strong> <em>recipes</em></h3>
                                    <ul class="list-1">
                                        <li><a href="<{'meishi/3'|url}>">减肥鸡蛋沙拉···················营养均衡</a>
                                        <img src="<{'static/img/meishi/page2/p2-5.jpg'|url}>"></li> 
                                        <li><a href="#">猪耳麻辣香锅···················开胃健脾</a>
                                        <img src="<{'static/img/meishi/page2/p2-6.jpg'|url}>"></li> 
                                        <li><a href="#">酸辣酿尖椒······················开胃健脾</a>
                                        <img src="<{'static/img/meishi/page2/p2-7.jpg'|url}>"></li>
                                        <li><a href="<{'meishi/2'|url}>">蟹粉鲜虾丸······················增强抵抗</a>										 <img src="<{'static/img/meishi/page2/p2-8.jpg'|url}>"></li>
                                    </ul>
                                    <div class="relative">
                                        <a class="button-1" href="recipes">Read More</a>
                                    </div>
                                </article>
                                <article class="col-2">
                                    <h3><strong>Hottest</strong> <em>recipes</em></h3>
                                    <ul class="list-1">
                                        <li><a href="<{'meishi/4'|url}>">蒜苗回锅肉·····················开胃健脾</a>
                                        <img src="<{'static/img/meishi/page2/p2-3.jpg'|url}>"></li>
                                        <li><a href="#">洋葱炒芹菜·····················利于抗癌</a>
                                        <img src="<{'static/img/meishi/page2/p2-9.jpg'|url}>"></li>
                                        <li><a href="#">脆皮香豆腐·····················美味可口</a>
                                        <img src="<{'static/img/meishi/page2/p2-10.jpg'|url}>"></li>
                                        <li><a href="#">北京烤肉························预防贫血</a>
                                        <img src="<{'static/img/meishi/page2/p2-12.jpg'|url}>"></li>
                                    </ul>
                                    <div class="relative">
                                        <a class="button-1"  href="recipes">Read More</a>
                                    </div>
                                </article>
                            </div><!-----------------wrapper结束--------------------->
                        </div><!------------------padding结束---------------->
                    </div><!------------------bg结束---------------->
                    <div class="padding-2">
                        <div class="indent-top">
                            <div class="wrapper">
                                <article class="col-3">
                                    <h4><strong>news</strong> <em></em></h4>
                                    <p>随着季节的变化，人体内各器官的状态也有所变化，故要根据季节的不同，选择美味健身的食物，进行饮食的科学安排。</p>
                                    <ul style="height:100px;" class="list-1">
                                        <li><a href="foods">春天吃春笋、菠菜、豆芽菜、韭菜有健脾、养胃、强肾等功能</a></li>
                                        <li><a href="foods">夏天吃苦瓜、茄子、芹菜、生菜、黄瓜有清热、消肿、治咽喉的功效</a></li>
                                        <li><a href="foods">秋天吃西红柿、菜花、胡萝卜、莴苣有润肺止咳、消除疲劳、防癌功效</a></li>
                                        <li><a href="foods">冬天吃萝卜、红薯、小白菜等有清理血液、促进血液循环的作用</a></li>
                                      
                                    </ul>
                                </article>
                                <div class="extra-wrap">
                                    <a href="#"><img src="<{'static/img/meishi/banner-1.jpg'|url}>" alt="" /></a>
                                </div><!--------extra-wrap结束--------->
                            </div><!--------wrapper结束--------->
                        </div><!---------indent-top结束------->
                    </div><!-----------padding-2结束-------->
                </section><!---------content结束--------->
                <div class="block"></div>
            </div><!--------main结束----------->
        </div><!-----------inner结束--------->
    </div><!------------------------extra结束--------------------------->
<!--==============================footer=================================-->
    <footer>
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
		
        $('.col-2 .list-1 li').mousemove(function(e){
			var xx = e.originalEvent.x || e.originalEvent.layerX || 0;
			var yy = e.originalEvent.y || e.originalEvent.layerY || 0;
			$('img',this).css({left:xx, display:'block'});
           
        })
        $('.col-2 .list-1 li').mouseout(function(){
            $('img',this)	.css('display','none');
        })
		
    </script>
   </div>
<{/block}>