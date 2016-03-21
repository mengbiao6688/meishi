<{extends file="extends/main.block.tpl"}>

<{block "head-styles"}>
    <{block "head-styles-before"}>
<link rel="stylesheet" href="<{'static/css/meishi/header.css'|url}>"/>
<link rel="stylesheet"  href="<{'static/css/meishi/tab.css'|url}>"/>
<link rel="stylesheet" href="<{'static/css/meishi/content2.css'|url}>"/>
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
        <!--header结束-->
        <div id="content2">
            <div id="c2-top">
                <!--c2-s（内容页的导航）开始-->
                <div id="c2-s">
                    <ul>
                        <li><a class="wdmssx"href="#">我的美食属性（未公开）</a></li>
                        <li><a class="hover" href="#">家常菜谱</a></li>
                        <li><a href="#">中华菜系</a></li>
                        <li><a href="#">各地小吃</a></li>
                        <li><a href="#">外国菜谱</a></li>
                        <li><a class="hb" href="#">烘焙</a></li>
                        <li><a href="#">厨房百科</a></li>
                        <li><a href="#">食材百科</a></li>
                    </ul>
                </div><!--c2-s结束-->
                <!--c2-开始-->
                <dl id="c2-z">
                    <dt>家常菜谱</dt>
                    <dd><a class="shz" href="#">家常菜</a></dd>
                    <dd><a class="shz" href="#">私家菜</a></dd>
                    <dd><a href="#">凉菜</a></dd>
                    <dd><a href="#">海鲜</a></dd>
                    <dd><a href="#">热菜</a></dd>
                    <dd><a href="#">汤菜</a></dd>
                    <dd><a href="#">素食</a></dd>
                    <dd><a class="sz" href="#">酱料蘸料</a></dd>
                    <dd><a class="shz" href="#">微波炉</a></dd>
                    <dd><a class="sz" href="#">火锅底料</a></dd>
                    <dd><a class="sz" href="#" style="color:#70A000;">甜品点心</a></dd>
                    <dd><a class="sz" href="#">糕点主食</a></dd>
                    <dd><a class="sz" href="#">干果制品</a></dd>
                    <dd><a href="#">卤酱</a></dd>
                    <dd><a class="sz" href="#">时尚饮品</a></dd>
                </dl>
                <!--c2-z结束-->
                <!--c2-x开始-->
                <dl id="c2-x-z">
                    <dt>每日三餐</dt>
                    <dd><a href="#">早餐</a></dd>
                    <dd><a href="#">午餐</a></dd>
                    <dd><a href="#" style="color:#70A000;">晚餐</a></dd>
                    <dd><a class="shz" href="#">下午茶</a></dd>
                    <dd><a href="#">宵夜</a></dd>
                </dl>
                <dl id="c2-x-c">
                    <dt>人群</dt>
                    <dd><a class="shz" href="#">老年人</a></dd>
                    <dd><a href="#">产妇</a></dd>
                    <dd><a href="#" style="color:#70A000;">孕妇</a></dd>
                    <dd><a class="sz" href="#">宝宝食谱</a></dd>
                </dl>
                <dl id="c2-x-y">
                    <dt>功效</dt>
                    <dd><a href="#">疾病调理</a></dd>
                    <dd><a href="#" style="color:#70A000;">功能性调理</a></dd>
                    <dd><a href="#">脏腑调理</a></dd>
                    <dd><a href="#">人群膳食</a></dd>
                </dl>
                <!--c2-x结束-->
            </div><!--c2-top结束-->
            <!--c2-title开始-->
            <div id="c2-title">
                印象中的那些妈妈的味道
                <span><a class="current" href="#">最新</a>|<a href="#">最热</a></span>
            </div>
            <!--c2-title结束-->

            <!--/*图片展示开始*/-->
            <div id="c2-tp">
                <div id="c2-sx"><!--筛选开始-->
                    <ul class="c2-shaixuan">
                        <li><a class="ptsx" href="#">普通筛选</a></li>
                        <li><a class="scsx" href="#">食材筛选</a></li>
                    </ul>
                    <dl id="c2-px">
                        <dt>按数量排序</dt>
                        <dd>
                            <a href="#">
                                <span>应季</span>
                                <strong>胡萝卜</strong>
                                <em>77</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>牛肉</strong>
                                <em>76</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>苹果</strong>
                                <em>62</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>虾</strong>
                                <em>59</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>鸡腿</strong>
                                <em>43</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>香蕉</strong>
                                <em>26</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>木瓜</strong>
                                <em>24</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>鱿鱼</strong>
                                <em>19</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>白萝卜</strong>
                                <em>18</em>
                            </a>
                            <a href="#">
                                <span>应季</span>
                                <strong>橙</strong>
                                <em>14</em>
                            </a>
                        </dd>
                        <!--  <dd><a class="zkgd" href="#">展开更多>></a></dd>-->
                    </dl>
                </div><!--筛选结束-->
                <div id="c2-tpzs"><!--c2-tpzs图片展示开始-->
                    <div id="c2-tpys"><!--c2-tpys图片样式开始-->
                        <a href="#"><img src="images/page2/sz1.jpg">
                            <div id="c2-zlg"><!--c2-zlg开始-->
                                <div id="c2-zl"><!--c2-zl开始-->
                                    <strong>糕点</strong>
                                    <span>5评论268人气</span>
                                </div> <!--c2-zl结束-->
                                <ul id="c2-g">
                                    <li>8步/大概25分钟</li>
                                    <li>炒/咸鲜味</li>
                                </ul>
                            </div><!--c2-zlg结束-->
                        </a>
                    </div><!--c2-tpys结束-->
                    <!--第一个图片样式结束-->
                    <div id="c2-tpys">
                        <a href="#"><img src="images/page2/sz1.jpg">
                            <div id="c2-zlg">
                                <div id="c2-zl">
                                    <strong>糕点</strong>
                                    <span>5评论268人气</span>
                                </div>
                                <ul id="c2-g">
                                    <li>8步/大概25分钟</li>
                                    <li>炒/咸鲜味</li>
                                </ul><!--"c2-g"结束-->
                            </div><!--c2-zlg结束-->
                        </a>
                    </div><!--c2-tpys结束-->
                    <div id="c2-tpys">
                        <a href="#"><img src="images/page2/sz1.jpg"">
                            <div id="c2-zlg">
                                <div id="c2-zl">
                                    <strong>糕点</strong>
                                    <span>5评论268人气</span>
                                </div>
                                <ul id="c2-g">
                                    <li>8步/大概25分钟</li>
                                    <li>炒/咸鲜味</li>
                                </ul><!--"c2-g"结束-->
                            </div><!--c2-zlg结束-->
                        </a>
                    </div><!--c2-tpys结束-->
                    <div id="c2-tpys">
                        <a href="#"><img src="images/page2/sz1.jpg">
                            <div id="c2-zlg">
                                <div id="c2-zl">
                                    <strong>糕点</strong>
                                    <span>5评论268人气</span>
                                </div>
                                <ul id="c2-g">
                                    <li>8步/大概25分钟</li>
                                    <li>炒/咸鲜味</li>
                                </ul><!--"c2-g"结束-->
                            </div><!--c2-zlg结束-->
                        </a>
                    </div><!--c2-tpys结束-->
                    <div id="c2-tpys">
                        <a href="#"><img src="images/page2/sz1.jpg">
                            <div id="c2-zlg">
                                <div id="c2-zl">
                                    <strong>糕点</strong>
                                    <span>5评论268人气</span>
                                </div>
                                <ul id="c2-g">
                                    <li>8步/大概25分钟</li>
                                    <li>炒/咸鲜味</li>
                                </ul><!--"c2-g"结束-->
                            </div><!--c2-zlg结束-->
                        </a>
                    </div><!--c2-tpys结束-->
                    <div id="c2-tpys">
                        <a href="#"><img src="images/page2/sz1.jpg">
                            <div id="c2-zlg">
                                <div id="c2-zl">
                                    <strong>糕点</strong>
                                    <span>5评论268人气</span>
                                </div>
                                <ul id="c2-g">
                                    <li>8步/大概25分钟</li>
                                    <li>炒/咸鲜味</li>
                                </ul><!--"c2-g"结束-->
                            </div><!--c2-zlg结束-->
                        </a>
                    </div><!--c2-tpys结束-->
                    <div id="c2-tpys">
                        <a href="#"><img src="images/page2/sz1.jpg">
                            <div id="c2-zlg">
                                <div id="c2-zl">
                                    <strong>糕点</strong>
                                    <span>5评论268人气</span>
                                </div>
                                <ul id="c2-g">
                                    <li>8步/大概25分钟</li>
                                    <li>炒/咸鲜味</li>
                                </ul><!--"c2-g"结束-->
                            </div><!--c2-zlg结束-->
                        </a>
                    </div><!--c2-tpys结束-->
                    <div id="c2-tpys">
                        <a href="#"><img src="images/page2/sz1.jpg">
                            <div id="c2-zlg">
                                <div id="c2-zl">
                                    <strong>糕点</strong>
                                    <span>5评论268人气</span>
                                </div>
                                <ul id="c2-g">
                                    <li>8步/大概25分钟</li>
                                    <li>炒/咸鲜味</li>
                                </ul><!--"c2-g"结束-->
                            </div><!--c2-zlg结束-->
                        </a>
                    </div><!--c2-tpys结束-->

                </div><!--c2-tpzs结束-->
                <div id="btlist">
        <span class="bt-center">
          <a class="current-1" href="#">1</a>
          <a href="#">2</a>
          <a href="#">3</a>
          <a href="#">4</a>
          <a href="#">5</a>
          <a href="#">...</a>
          <a href="#">下一页</a>
         </span>
                </div>
            </div><!--图片展示结束-->
        </div>
    </div>
    <{/block}>

<{block "body-scripts-jquery"}>
    (function($){

    })(jQuery);
    <{/block}>