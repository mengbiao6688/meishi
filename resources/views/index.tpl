<{extends file="extends/main.block.tpl"}>

<{block "head-styles"}>
    <{block "head-styles-before"}>
    <link rel="stylesheet" href="<{'static/css/meishi/header.css'|url}>"/>
    <link rel="stylesheet"  href="<{'static/css/meishi/tab.css'|url}>"/>
    <link rel="stylesheet" href="<{'static/css/meishi/header.css'|url}>"/>
    <{/block}>
    <{include file="common/styles.inc.tpl"}>
    <{block "head-styles-plus"}><{/block}>
    <{block "head-styles-after"}><{/block}>
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
        <div id="header">
            <div id="login">
                <div id="login_bz"><img src="<{'static/img/meishi/comment/logo.png'|url}>"></div><!--标志图片1张-->
                <!--login_bz结束-->
                <form id="hd_search">
                    <input type="text" name="search_txt" class="search_txt" id="search_txt" onBlur="if(value=='')this.value='搜菜谱、话题、专辑、豆友';"  onClick="if(this.value == '搜菜谱、话题、专辑、豆友')this.value='';" value="搜菜谱、话题、专辑、豆友"><!--搜索框-->
                    <input type="submit" id="search_bt" name="search_bt" value="搜索">
                    <!--搜索按钮-->
                </form>
                <!--hd_search结束-->
          <span id="denglu">
              <button style="width:100px;"><img src="<{'static/img/meishi/comment/qq.jpg'|url}>"><b>qq登录</b></button>
              <button style="width:100px;"><img src="<{'static/img/meishi/comment/wb.jpg'|url}>"><b>微博登录</b></button>
              <button>登录</button>
              <button>注册</button>
          </span>
            </div>
            <!--login结束-->
            <ul id="nav">
                <li ><a class="fl"href="#">菜谱分类导航</a>
                    <ul>
                        <li><a href="#">热门分类</a></li>
                        <li><a href="#">菜市菜品</a></li>
                        <li><a href="#">菜系</a></li>
                        <li><a href="#">食材</a></li>
                        <li><a href="#">烹饪方法</a></li>
                        <li><a href="#">口味</a></li>
                        <li><a href="#" style="color:#70A000;">更多分类标签</a></li>
                    </ul>
                </li>

                <li><a href="#">首页</a></li>
                <li><a class="cpdq" href="#">菜谱大全</a></li>
                <li><a href="#">食谱分类</a></li>
                <li><a href="#">食材大全</a></li>
                <li><a href="#">家常菜谱</a></li>
                <li><a href="#">健康食疗</a></li>
                <li><a href="#">关于我们</a></li>
            </ul>
        </div><!--nav导航条结束-->
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
            <span><a>
                    <img class="yi" src="<{'/attachment/resize?id='|url}><{$item.cover_id}>" />

                </a></span>
                    <p><{$item.name}></p>
                </div>
             <{/foreach}>

            </div><!--特色菜结束-->

            <div id="zuixincaipu"><!--最新菜谱开始-->
                <h3>最新菜谱<a>more</a></h3>
                <{foreach $_new as $item}>
                <div id="zuixin"><img src="<{'/attachment/resize?id='|url}><{$item.cover_id}>" />
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
                    <li class="hover" onclick="setTab(1,0)"><!--若要区别选中的选项卡与没选中的就要用到hover类，为其加背景图片--> <a href="#">国外菜肴</a></li>  <!--li是选项卡 -->
                    <li onclick="setTab(1,1)"><a href="#">国内菜肴</a></li>
                    <li onclick="setTab(1,2)"><a href="#">家常菜肴</a></li>
                </ul>
            </div>

            <div class="main1box">
                <div class="main" id="main1">
                    <ul class="block"><!--block是设置其显示与隐藏属性，若选中则用block类，没选中则不用block类--> <!--ul是主显示区域，每次只显示一个ul区域 -->
                       <{foreach $_guowai as $item}>
                        <li><a><img src="<{'/attachment/resize?id='|url}><{$item.cover_id}>"/><p><{$item.name}></p></a></li>
                        <{/foreach}>
                    </ul>

                    <ul>
                        <{foreach $_guonei as $item}>
                        <li><a><img src="<{'/attachment/resize?id='|url}><{$item.cover_id}>" /><p><{$item.name}></p></a></li>
                        <{/foreach}>
                    </ul>
                    <ul>
                        <{foreach $_jiachang as $item}>
                        <li><a><img src="<{'/attachment/resize?id='|url}><{$item.cover_id}>" /><p><{$item.name}></p></a></li>
                        <{/foreach}>
                    </ul>
                </div>
            </div><!--main1box结束-->
        </div><!--tab选项卡结束-->
    </div><!--main结束-->
    <{/block}>

<{block "body-scripts-jquery"}>
    (function($){

    })(jQuery);
    <{/block}>