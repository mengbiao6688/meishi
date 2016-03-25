<{include file="header.tpl"}>

<{block "body-container"}>
    <div id="bgSlider"></div>
    <div class="bg_spinner"></div>
    <div class="extra">
        <!--==============================header=================================-->
        <header>
            <div class="top-row">
                <div class="main">
                    <div class="wrapper">
                        <h1><a href="index.html">GoodCook</a></h1>
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
                                <li><a href="index.html">首页</a></li>
                                <li><a href="about.html">关于我们</a></li>
                                <li><a href="courses.html">Courses</a></li>
                                <li><a href="recipes.html">最新菜谱</a></li>
                                <li><a class="active" href="calendar.html">Calendar</a></li>
                                <li class="last"><a href="contacts.html">联系我们</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="ic"></div>
        </header>
        <!--==============================content================================-->
        <div class="inner">
            <div class="main">
                <section id="content">
                    <div class="indent">
                        <div class="wrapper">


                            <div id="l-1">
                                <img style=" display:block;  margin:0 auto;"  src="<{'static/img/meishi/zuce.png'|url}>">
                                <div id="dlfs">
                                    <a href="index.html"><img src="<{'static/img/meishi/sy.png'|url}>"></a>
                                    <a href="index-2.html"><img src="<{'static/img/meishi/dt2.png'|url}>"></a>
                                    <a href="courses.html"><img src="<{'static/img/meishi/lx.png'|url}>"></a>
                                </div>
                                <img style=" display:block;  margin:0 auto;" src="<{'static/img/meishi/login-or.png'|url}>"><!--一直到这里都是没用的图片除了那几个a标签外-->
                                <form id="form" method="post">
                                    <ul>
                                        <li><span>用户名：</span><input type="text" name="username" id="username" class="input" required></li>
                                        <li><span>密　码：</span><input type="password" name="password" id="password" class="input" required></li>
                                        <li><button class="button" id="button">注　册</button><li>
                                    </ul>
                                </form>
                                <div id="dlfs">
                                    <a href="contacts.html"><img src="<{'static/img/meishi/dh.png'|url}>"></a>
                                    <a href="index-2.html"><img src="<{'static/img/meishi/hz.png'|url}>"></a>
                                    <a href="courses.html"><img src="<{'static/img/meishi/dt.png'|url}>"></a>
                                </div>
                            </div>


                        </div>
                    </div><!-------------------------------indent结束------------------------>
                </section><!------------------------------content结束------------------------>
                <div class="block"></div>
            </div><!-----------------------------main结束------------------------>
        </div><!----------------------------------inner结束----------------------------->
    </div><!-----------------------------------extra结束------------------------------>
<!--==============================footer=================================-->
    <footer>
        <div class="padding">
            <div class="main">
                <div class="wrapper">
                    <div class="fleft footer-text">
                        <span>Good Cook</span> &copy; liuqian
                        <strong>欢迎大家光临我的美食网站</strong>
                        <!-- {%FOOTER_LINK} -->
                    </div>
                    <ul class="list-services">
                        <li>Link to Us:</li>
                        <li><a class="tooltips" title="facebook" href="#"></a></li>
                        <li class="item-1"><a class="tooltips" title="twitter" href="#"></a></li>
                        <li class="item-2"><a class="tooltips" title="linkedin" href="#"></a></li>
                    </ul>
                </div><!-------------------------wrapper结束------------------------->
            </div><!---------------------main结束-------------------->
        </div><!-----------------------padding结束----------------------------->
    </footer>
    <script type="text/javascript"> Cufon.now(); </script>
    <script type="text/javascript">
        $("#form").submit(function(e) {
            e.preventDefault();
            $.ajax({
                url:"<{'service/account/register'|url}>",
                type:'post',
                data:{
                    _token:"<{csrf_token()}>",
                    username:$("#username").val(),
                    password:$("#password").val()
                },
                success:function(data) {
                    alert(data);
                }
            });
        });
    </script>
<{/block}>
