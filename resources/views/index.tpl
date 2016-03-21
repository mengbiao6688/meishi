<{extends file="extends/main.block.tpl"}>

<{block "head-styles"}>
    <{block "head-styles-before"}>
    <link rel="stylesheet" href="<{'static/css/meishi/header.css'|url}>"/>
    <link rel="stylesheet"  href="<{'static/css/meishi/tab.css'|url}>"/>
    <link rel="stylesheet" href="<{'static/css/meishi/content.css'|url}>"/>
    <{/block}>
    <{include file="common/styles.inc.tpl"}>
    <{/block}>

<{block "head-scripts"}>
    <{block "head-scripts-before"}>
    <script src="<{'static/js/meishi/jquery-1.9.1.min.js'}>" type="text/javascript"></script>
    <script type="text/javascript" src="<{'static/js/meishi/content.js'|url}>"></script>
    <script src="<{'static/js/meishi/tab.js'|url}>"></script>
    <script src="<{'static/js/meishi/header.js'|url}>" type="text/javascript"></script>
    <{/block}>
    <{include file="common/scripts.inc.tpl"}>
    <{block "head-scripts-validate"}><{include file="common/validate.inc.tpl"}><{/block}>
    <{block "head-scripts-plus"}><{/block}>
    <{block "head-scripts-after"}><{/block}>
    <{/block}>


<{block "body-container"}>

    <div id="main">
        <{include file="header.tpl"}>
        <div class="main_banner">
            <div class="main_banner_wrap">
                <canvas id="myCanvas" width="150" height="150"></canvas>
                <div class="main_banner_box" id="m_box">
                    <a href="javascript:void(0)" class="banner_btn js_pre">
                        <span class="banner_btn_arrow"><i></i></span>
                    </a>
                    <a href="javascript:void(0)" class="banner_btn btn_next js_next">
                        <span class="banner_btn_arrow"><i></i></span>
                    </a>
                    <ul>
                        <li id="imgCard0">
                            <a href=""><span style="opacity:0;"></span></a>
                            <img src="<{'static/img/meishi/page1/1.jpg'|url}>" alt="">
                            <p style="bottom:-20px;">蔬菜沙拉</p>
                        </li>
                        <li id="imgCard1">
                            <a href=""><span style="opacity:0.4;"></span></a>
                            <img src="<{'static/img/meishi/page1/2.jpg'|url}>"  alt="">
                            <p>蔬菜拼盘</p>
                        </li>
                        <li id="imgCard2">
                            <a href=""><span style="opacity:0.4;" ></span></a>
                            <img src="<{'static/img/meishi/page1/3.jpg'|url}>"  alt="">
                            <p>清蒸龙虾</p>
                        </li>
                        <li id="imgCard3">
                            <a href=""><span style="opacity:0.4;"></span></a>
                            <img src="<{'static/img/meishi/page1/4.jpg'|url}>" alt="">
                            <p>健康食材</p>
                        </li>
                        <li id="imgCard4">
                            <a href=""><span style="opacity:0.4;"></span></a>
                            <img src="<{'static/img/meishi/page1/5.jpg'|url}>" alt="">
                            <p>绿意大蒜</p>
                        </li>
                    </ul>

                </div>
                <!--序列号按钮-->
                <div class="btn_list">
                    <span class="curr"></span><span></span><span></span><span></span><span></span>
                </div>
            </div>
        </div>
        <!--轮播图 结束 -->
        <img style="margin:15px 0px 0px 0px;" src="<{'static/img/meishi/comment/hor_separator.png'|url}>">
        <div id="tszx"><!--特色菜谱、最新菜谱开始-->
            <div id="tesecai"><!--特色菜开始-->
                <h3>特色菜谱<a>more</a></h3>
                <{foreach $_special as $item}>
                <div id="xdjh">
            <span><a href="<{'meishi'|url}>/<{$item.id}>">
                    <img class="yi" src="<{'/attachment/resize?id='|url}><{$item.cover_id}>" />

                </a></span>
                    <p><{$item.name}></p>
                </div>
             <{/foreach}>

            </div><!--特色菜结束-->

            <div id="zuixincaipu"><!--最新菜谱开始-->
                <h3>最新菜谱<a>more</a></h3>
                <{foreach $_new as $item}>
                <div id="zuixin"><a href="<{'meishi'|url}>/<{$item.id}>"><img src="<{'/attachment/resize?id='|url}><{$item.cover_id}>" /></a>
        <span>
                <{$item.name}>
        </span>
                </div>
                <{/foreach}>

            </div><!--最新菜谱结束-->
        </div><!--特色菜谱结束、最新菜谱结束结束-->
        <img style="margin:5px 0px 0px 0px;" src="<{'static/img/meishi/comment/hor_separator.png'|url}>">
        <!--选项卡开始-->
        <div id="tab">
            <div class="menu1box">
                <ul id="menu1">
                    <li onclick="setTab(1,0)"><!--若要区别选中的选项卡与没选中的就要用到hover类，为其加背景图片--> <a href="javascript:void(0);">国外菜肴</a></li>  <!--li是选项卡 -->
                    <li onclick="setTab(1,1)"><a href="javascript:void(0);">国内菜肴</a></li>
                    <li onclick="setTab(1,2)"><a href="javascript:void(0);">家常菜肴</a></li>
                </ul>
            </div>

            <div class="main1box">
                <div class="main" id="main1">
                    <ul class="block"><!--block是设置其显示与隐藏属性，若选中则用block类，没选中则不用block类--> <!--ul是主显示区域，每次只显示一个ul区域 -->
                       <{foreach $_guowai as $item}>
                        <li><a href="<{'meishi'|url}>/<{$item.id}>"><img src="<{'/attachment/resize?id='|url}><{$item.cover_id}>&width=200&height=200"/><p><{$item.name}></p></a></li>
                        <{/foreach}>
                    </ul>

                    <ul>
                        <{foreach $_guonei as $item}>
                        <li><a href="<{'meishi'|url}>/<{$item.id}>"><img src="<{'/attachment/resize?id='|url}><{$item.cover_id}>&width=200&height=200" /><p><{$item.name}></p></a></li>
                        <{/foreach}>
                    </ul>
                    <ul>
                        <{foreach $_jiachang as $item}>
                        <li><a href="<{'meishi'|url}>/<{$item.id}>"><img src="<{'/attachment/resize?id='|url}><{$item.cover_id}>&width=200&height=200" /><p><{$item.name}></p></a></li>
                        <{/foreach}>
                    </ul>
                </div>
            </div><!--main1box结束-->
        </div><!--tab选项卡结束-->
    </div><!--main结束-->
    <{/block}>

<{block "body-scripts-jquery"}>
    (function($){
        $("#menu1 li a").eq(0).css('color','#70A000');
        $("#menu1 li a").click(function() {
            $("#menu1 li a").css('color','#666');
            $(this).css('color','#70A000');
        });
    })(jQuery);
    <{/block}>