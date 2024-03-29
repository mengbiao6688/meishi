<div class="top-row">
    <div class="main">
        <div class="wrapper">
            <h1><a href="./"></a></h1>
            <div class="search">
                <form class="search_border" action="<{'search'|url}>" method="post" id="search">
                    <input type="hidden" name="_token" value="<{csrf_token()}>"/>
                    <input class="search_text" type="text" name="keys" value="<{$_keys}>" required/>
                    <input class="search_btn" type="image"  src="<{'static/img/meishi/search.png'|url}>"/>
                </form>
                            <span>
                                <a href="login">登录</a>
                                <a href="register">注册</a>
                            </span>
            </div>
            <ul class="pagination">
                <li class="current"><a href="<{'static/img/meishi/bg-img1.jpg'|url}>">1</a></li>
                <li><a href="<{'static/img/meishi/bg-img2.jpg'|url}>">2</a></li>
                <li><a href="<{'static/img/meishi/bg-img3.jpg'|url}>">3</a></li>
            </ul>
            <strong class="bg-text">Background:</strong>
        </div>
    </div>
</div>
<div class="menu-row">
    <div class="menu-border">
        <div class="main">
            <nav>
                <ul class="menu">
                    <li><a class="active" href="/" id="1">首　　页</a></li>
                    <li><a href="/about" id="2">关于我们</a></li>
                    <li><a href="/foods" id="3">食材大全</a></li>
                    <li><a href="/tips" id="4">饮食资讯</a></li>
                    <li><a href="/recipes" id="5">菜谱大全</a></li>
                    <li class="last"><a href="contact" id="6">联系我们</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<div class="ic"></div>
