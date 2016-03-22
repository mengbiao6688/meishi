<{extends file="extends/main.block.tpl"}>

<{block "head-styles"}>
    <{block "head-styles-before"}>
<link rel="stylesheet" href="<{'static/css/meishi/header.css'|url}>"/>
<link rel="stylesheet" href="<{'static/css/meishi/content3.css'|url}>"/>
    <{/block}>
    <{include file="common/styles.inc.tpl"}>
    <{/block}>

<{block "head-scripts"}>
    <{block "head-scripts-before"}>
    <script src="<{'static/js/meishi/jquery-1.9.1.min.js'}>" type="text/javascript"></script>
    <script src="<{'static/js/meishi/cotent-1.js'|url}>"></script>
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
    <div id="c3">
        <div id="c3-s"><!--上面的s上面部分-->
            <div id="c3-s-z"><img src="images/page3/xt1.jpg"></div>
            <div id="c3-s-y"><!--s(上面)y(右边)部分开始-->
               <!-- <div id="c3-s-y-top">
                    <h2>
                        <a href="#"><{$_meishi.name}></a>
                    </h2>
                    <div id="fx">
                        <a class="sc" href="#">收藏（6） </a>
                        <strong>分享到:</strong>
                  	<span>
                    	<a href="#"><img src="images/comment/qq.jpg"></a>
                    	<a href="#"><img src="images/comment/kj.jpg"></a>
                        <a href="#"><img src="images/comment/wb.jpg"></a>
                    </span>
                    </div>
                    --><!--上面的top部分结束-->
                    <!--上面的center部分开始-->
                    <ul id="c3-s-y-center">
                        <li class="kz">
                            <strong>工艺</strong>
                            <a href="#"><{$_meishi.gongyi}></a>
                        </li>
                        <li class="kc">
                            <strong>难度</strong>
                            <div class="kc-x">
                                <span><img src="images/page3/nandu.jpg"><img src="images/page3/ndzs.jpg"></span>
                                <a href="#">初级入门</a>
                                <div>
                        </li>
                        <li class="kc">
                            <strong>人数</strong>
                            <div class="kc-x">
                                <span><img src="images/page3/renshu.jpg"><img src="images/page3/ndzs.jpg"></span>
                                <a href="#">2人份</a>
                                <div>
                        </li>
                        <li class="kz">
                            <strong>口味</strong>
                            <a href="#"><{$_meishi.kouwei}></a>
                        </li>
                        <li class="kc">
                            <strong>准备时间</strong>
                            <div class="kc-x">
                                <span><img src="images/page3/shijian.jpg"><img src="images/page3/ndzs.jpg"></span>
                                <a href="#">10分钟</a>
                                <div>
                        </li>
                        <li class="kc">
                            <strong>烹饪时间</strong>
                            <div class="kc-x">
                                <span><img src="images/page3/prshijian.jpg"><img src="images/page3/ndzs.jpg"></span>
                                <a href="#"><2小时</a>
                                <div>
                        </li>

                    </ul><!--上面的center部分结束-->
                    <div id="c3-s-y-bottom"><!--上面的下面部分开始-->
                        <a href="#"><img src="images/page3/zuoze.jpg"></a>
                        <div class="xinxi">
                            <h2>liuqian</h2>
                            <span>菜谱:690 / 关注：49 / 粉丝：8649 </span>
                            <strong>2015-12-22  /  1484人看过</strong>
                            <div>
                            </div><!--上面的下面部分结束-->
                        </div><!--y(右边)部分结束-->
                    </div><!--是（上面）部分结束-->
                </div>
            </div>
        </div>
        <div id="c3-z">
            <strong>"</strong>
            这个夏天猫比往年要忙了些，相对去逛市场的时间也就跟着少了好多，本应在夏季多吃些当季海鲜的，也只能缩水，趁着周日休息，买了两斤鲜虾准备做虾干，这样的虾干烤好之后就可以直接食用，如果想要吃些有风味的，可以蒸，炒，炸，拌，煮粥，做汤，只要你愿意，可以入很多菜，自己在家做，也处理的相对要干净很多，并且可以把今个夏季的鲜美味留下来慢慢品。做好后，跟LG两个人就干掉了不少，人家说明天还要用它来蒸着吃，呵呵，看样子是还没吃够啊~<strong>"</strong>
            <strong class="yl">用料</strong>
            <div id="c3-z-x">
                <div id="fl">
                    <ul>
                        <h2>主料</h2>
                        <li><a href="#"><img src="images/page3/xx.jpg">

                                <h5 class="x">虾</h5>
                                <h6 class="1qk">1000克</h6>

                            </a>
                        </li>
                        <li><a></a></li>
                        <h2>辅料</h2>
                        <li><a href="#">

                                <h5>盐</h5>
                                <h6>1勺</h6>

                            </a>
                        </li>
                        <li><a href="#">

                                <h5>葱</h5>
                                <h6>20克</h6>

                            </a>
                        </li>
                        <h2 style="background:#FFF;"></h2>
                        <li><a href="#">

                                <h5>姜</h5>
                                <h6>20克</h6>

                            </a>
                        </li>
                        <li><a></a></li>
                </div>
            </div>

            <div id="c3-x">
                <h2>虾干的做法</h2>
                <div id="step">
                    <em>1、</em>
                    <div id="step1">
                        <p>鲜虾冲洗一下，然后清洗虾肠，去虾线。烧沸水入虾，待虾身卷成U型捞起</p>

                    </div>
                </div>

                <div id="step">
                    <em>2、</em>
                    <div id="step1">
                        <p>准备好辣椒，生姜等调料味</p>
                        <p><img src="images/page3/lzl.jpg"><img src="images/page3/jszl.jpg"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
<{/block}>

<{block "body-scripts-jquery"}>
    (function($){

    })(jQuery);
    <{/block}>