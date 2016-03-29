<{extends file="extends/main.block.tpl"}>
<{include file="common/head.tpl"}>

<{block "body-container"}>
<div id="page5">
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
                                <div class="bg">
                                    <div class="padding">
                                    	<h3 class="p2">Good Cook</h3>
                                        <div class="wrapper p3">
                                        	<figure class="img-indent"><a href="<{'meishi'}>/<{$data.id}>"><img src="<{'static/img/meishi/page2/p2-1.jpg'|url}>" alt="" /></a></figure>
                                            <div class="extra-wrap">
                                            	<h6>素三丝</h6>
                                                <p class="p1">“夏天了，就想喝碗粥，就一碟子清爽的小菜。素三丝是我比较常做的，豆芽营养丰富，胡萝卜脆甜，搭配起来口感非常的好，两颗葱给提升了颜值不少，家常小菜也美味”</p>
                                                <a class="button-1" href="/meishi" <{'meishi'}>/<{$data.id}>>Read More</a>
                                            </div>
                                        </div>
                                        <div class="wrapper p3">
                                        	<figure class="img-indent"><a href="<{'meishi'}>/<{$data.id}>"><img src="<{'static/img/meishi/page2/p2-2.jpg'|url}>" alt="" /></a></figure>
                                            <div class="extra-wrap">
                                            	<h6>美味蛋包饭 </h6>
                                                <p class="p1">“家里每次做米饭都会剩一些，除了用来做稀饭炒饭之外，其实还有一种很美味地吃法，你们想知道吗？其实很简单，就是用浓浓的鸡蛋皮将米饭包裹起来，再配上番茄酱，就是俗称的蛋包饭了。”</p>
                                                <a class="button-1" href="<{'meishi'}>/<{$data.id}>">Read More</a>
                                            </div>
                                        </div>
                                        <div class="wrapper img-indent-bot">
                                        	<figure class="img-indent"><a href="<{'meishi'}>/<{$data.id}>"><img src="<{'static/img/meishi/page2/p2-3.jpg'|url}>" alt="" /></a></figure>
                                            <div class="extra-wrap">
                                            	<h6>蒜苗回锅肉</h6>
                                                <p class="p1">"回锅肉是四川人初一、十五打牙祭的当家菜，逢年过节的餐桌上肯定也少不了这道当家菜，四川人对蒜苗回锅肉的热爱无需多说，这一点从那大大小小川菜馆的菜谱就能说明！一碗家常回锅肉，更能让你体会到家的温暖和味道，思乡了吗？添碗米饭，吃回锅肉吧！~".</p>
                                                <a class="button-1" href="<{'meishi'}>/<{$data.id}>">Read More</a>
                                            </div>
                                        </div>
                                        <div class="wrapper">
                                        	<figure class="img-indent"><a href="<{'meishi'}>/<{$data.id}>"><img src="<{'static/img/meishi/page2/p2-4.jpg'|url}>" alt="" /></a></figure>
                                            <div class="extra-wrap">
                                            	<h6>耗油西兰花</h6>
                                                <p class="p1">西兰花具有防癌抗癌的功效是一种营养价值较高的蔬菜，除含有多种维生素外，还蕴藏丰富的钙、钾、铁等物质</p>
                                                <a class="button-1" href="<{'meishi'}>/<{$data.id}>">Read More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <article class="col-2">
                            	<h3 class="border-bot p2">Popular Recepes</h3>
                                <h6 class="color-3">美食菜谱</h6>
                                <p>“生活水平的不断提高，人们对美食的需求也在真加，让我们看看那些菜肴获得大家的欢迎“</p>
                                <figure class="p2"><img src="images/page2/p2-5.jpg" alt="" /></figure>
                                <ul class="list-1 img-indent-bot">
                                	<li><a href="#">减肥鸡蛋沙拉·················营养均衡</a></li>
                                        <li><a href="#">猪耳麻辣香锅·················开胃健脾</a></li> 
                                        <li><a href="#">酸辣酿尖椒····················开胃健脾</a></li> 
                                        <li><a href="#">蟹粉鲜虾丸··················增强抵抗力</a></li>
                                	 <li><a href="#">酸辣酿尖椒···················开胃膳食</a></li>
                                        <li><a href="#">洋葱炒芹菜···················利于抗癌</a></li>
                                        <li><a href="#">脆皮香豆腐···················美味可口</a></li>
                                        <li><a href="#">北京烤肉······················预防贫血</a></li>                                 
                                 </ul>
                            </article>
                        </div>
                    </div><!-------------------------------indent结束------------------------>
                </section><!------------------------------content结束------------------------>
                <div class="block"></div>
            </div><!-----------------------------main结束------------------------>
        </div><!----------------------------------inner结束----------------------------->
    </div><!-----------------------------------extra结束------------------------------>
	<!--==============================footer=================================-->
   <footer>
    	<{include file="common/footer.tpl"}>
    </footer>
    <script type="text/javascript"> Cufon.now(); </script>
 </div>
<{/block}>
