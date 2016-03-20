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
        <!--<li ><a class="fl"href="#">菜谱分类导航</a>
            <ul>
                <li><a href="#">热门分类</a></li>
                <li><a href="#">菜市菜品</a></li>
                <li><a href="#">菜系</a></li>
                <li><a href="#">食材</a></li>
                <li><a href="#">烹饪方法</a></li>
                <li><a href="#">口味</a></li>
                <li><a href="#" style="color:#70A000;">更多分类标签</a></li>
            </ul>
        </li>-->

        <li><a href="/" <{if !$cat_id}>class="cpdq"<{/if}>>首页</a></li>
        <{foreach $_categories as $category}>
        <li><a class="<{if $category.id eq $cat_id}>cpdq<{/if}>" href="#"><{$category.name}></a></li>
        <{/foreach}>
    </ul>
</div><!--nav导航条结束-->