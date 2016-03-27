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
                                <img src="<{'static/img/meishi/slider-img1.jpg'|url}>" alt="" />
                                <div class="banner">
                                    <strong class="title">
                                        <strong>Hot</strong><em>Recipe</em>
                                    </strong>
                                    <p class="p3">纯净、绿色、健康、安全食材，水果纤维利于补充水分，美肤、蔬菜纤维有利于促进身体的代谢功能</p>
                                    <a class="button-1" href="#">Read More</a>
                                </div>
                            </li>
                            <li>
                                <img src="<{'static/img/meishi/slider-img2.jpg'|url}>" alt="" />
                                <div class="banner">
                                    <strong class="title">
                                        <strong>Hot</strong><em>Recipe</em>
                                    </strong>
                                    <p>每一天膳食都需要营养搭配均衡，蔬菜、水果、肉类食品缺一不可，膳食营养均衡满足身体需要，促进生长、发育、健康</p>
                                    <a class="button-1" href="#">Read More</a>
                                </div>
                            </li>
                            <li>
                                <img src="<{'static/img/meishi/slider-img3.jpg'|url}>" alt="" />
                                <div class="banner">
                                    <strong class="title">
                                        <strong>Hot</strong><em>Recipe</em>
                                    </strong>
                                    <p>水果、蔬菜、肉类大家要购买安全、纯净、健康的食材；特别是蔬菜和肉类既要纯净、安全，还要注意烹饪方法，部分食材烹饪方式不对可能会产生毒素。</p>
                                    <a class="button-1" href="#">Read More</a>
                                </div>
                            </li>
                        </ul>
                        <a class="banner-2" href="#"></a>
                    </div><!------------------slider结束图片轮播横条结束----------------->
                    <ul class="pags">
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                    </ul>
                    <!--------------------------------------- 第2横条------------------------------------------------->
                    <div class="bg">
                        <div class="padding">
                            <div class="wrapper">
                                <article class="col-1">
                                    <h3><strong>Recommended</strong> <em>today</em></h3>
                                    <ul class="list-1">
                                        <li><a href="#">清炒素三丝······················营养均衡</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-1.jpg'|url}>">
                                        <li><a href="#">美味蛋包饭······················补充蛋白</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-2.jpg'|url}>">
                                        <li><a href="#">蒜苗回锅肉······················开胃健脾</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-3.jpg'|url}>">
                                        <li><a href="#">耗油西兰花······················增强抵抗力</a></li>                                       <img src="<{'static/img/meishi/page2/p2-4.jpg'|url}>">

                                    </ul>
                                    <div class="relative">
                                        <a class="button-1" href="search.tpl">Read More</a>
                                    </div>
                                </article>
                                <article class="col-1">
                                    <h3><strong>latest</strong> <em>recipes</em></h3>
                                    <ul class="list-1">
                                        <li><a href="#">减肥鸡蛋沙拉···················营养均衡</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-5.jpg'|url}>">
                                        <li><a href="#">猪耳麻辣香锅···················开胃健脾</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-6.jpg'|url}>">
                                        <li><a href="#">酸辣酿尖椒······················开胃健脾</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-7.jpg'|url}>">
                                        <li><a href="#">蟹粉鲜虾丸······················增强抵抗力</a></li>										 <img src="<{'static/img/meishi/page2/p2-8.jpg'|url}>">
                                    </ul>
                                    <div class="relative">
                                        <a class="button-1" href="search.tpl">Read More</a>
                                    </div>
                                </article>
                                <article class="col-2">
                                    <h3><strong>The hottest</strong> <em>recipes</em></h3>
                                    <ul class="list-1">
                                        <li><a href="#">酸辣酿尖椒··················开胃膳食</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-8.jpg'|url}>">
                                        <li><a href="#">洋葱炒芹菜·····················利于抗癌</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-9.jpg'|url}>">
                                        <li><a href="#">脆皮香豆腐·····················美味可口</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-10.jpg'|url}>">
                                        <li><a href="#">北京烤肉·····················预防贫血</a></li>
                                        <img src="<{'static/img/meishi/page2/p2-11.jpg'|url}>">
                                    </ul>
                                    <div class="relative">
                                        <a class="button-1"  href="search.tpl">Read More</a>
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
                                        <li><a href="#">春天吃春笋、菠菜、豆芽菜、韭菜有健脾、养胃、强肾等功能</a></li>
                                        <li><a href="#">夏天吃苦瓜、茄子、芹菜、生菜、黄瓜有清热、消肿、治咽喉的功效</a></li>
                                        <li><a href="#">秋天吃西红柿、菜花、胡萝卜、莴苣有润肺止咳、消除疲劳、防癌功效</a></li>
                                        <li><a href="#">冬天吃萝卜、红薯、小白菜等有清理血液、促进血液循环的作用</a></li>
                                        <li><a href="#">秋天吃西红柿、菜花、胡萝卜、莴苣有润肺止咳、消除疲劳、防癌功效</a></li>
                                        <li><a href="#">冬天吃萝卜、红薯、小白菜等有清理血液、促进血液循环的作用</a></li>
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
        $('.col-1 .list-1 li').hover(function(){
            $('.col-1 .list-1 img')	.css('display','block')
        })
        $('.col-1 .list-1 li').over(function(){
            $('.col-1 .list-1 img')	.css('display','none')
        })
        $('.col-3 ul li').animate({top:100},200)

    </script>
   </div>
<{/block}>