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
                                    	<h3><strong>Good</strong> Cook</h3>
                                        <{if $_results}>
                                            <{foreach $_results as $data}>
                                            <div class="wrapper p3">
                                                <figure class="img-indent"><a href="<{'meishi'}>/<{$data.id}>"><img src="<{'attachment/resize?id='}><{$data.pid}>" alt="" /></a></figure>
                                                <div class="extra-wrap">
                                                    <h6 class="color-3"><{$data.name}></h6>
                                                    <p class="p1">“<{$data.desc}>”</p>
                                                    <a class="button-1" href="<{'meishi'}>/<{$data.id}>">Read More</a>
                                                </div>
                                            </div>
                                            <{/foreach}>
                                        <{else}>
                                            没有找到“<span style="color:red"><{$_keys}></span>”相关的美食
                                        <{/if}>
                                    </div>
                                </div>
                            </article>
                            <article class="col-2">
                            	<h3><strong>Popular</strong> Recepes</h3>
                                <h6 class="color-3">美食菜谱</h6>
                                <p>“生活水平的不断提高，人们对美食的需求也在真加，让我们看看那些菜肴获得大家的欢迎“</p>
                                <figure class="p2"><img src="images/page2/p2-5.jpg" alt="" /></figure>
                                <ul class="list-1 img-indent-bot">
                                		<li><a href="#">减肥鸡蛋沙拉·················营养均衡</a></li>
                                        <li><a href="#">猪耳麻辣香锅·················开胃健脾</a></li> 
                                        <li><a href="#">酸辣酿尖椒···················开胃健脾</a></li> 
                                        <li><a href="#">蟹粉鲜虾丸···················增强抵抗力</a></li>
                                	    <li><a href="#">酸辣酿尖椒···················开胃膳食</a></li>
                                        <li><a href="#">洋葱炒芹菜···················利于抗癌</a></li>
                                        <li><a href="#">脆皮香豆腐···················美味可口</a></li>
                                        <li><a href="#">北京烤肉····················预防贫血</a></li>                                 
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