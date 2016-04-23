<{extends file="extends/main.block.tpl"}>
<{include file="common/head.tpl"}>

<{block "body-container"}>
    <div id="page6">
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
                                    <div class="indent-left">
                                        <h3><strong>Message</strong></h3>
                                        <div class="p3">
                                            <form id="contact-form" action="<{'service/message/add'|url}>" method="post"
                                                  enctype="multipart/form-data">
                                                <{csrf_field() nofilter}>
                                                <fieldset>
                                                    <label>
                                                        <span class="text-form">标题:</span>
                                                        <input type="text" name="title" id="title" required="required"/></label>
                                                    <div class="wrapper">
                                                        <div class="text-form">留言:</div>
                                                        <div class="extra-wrap">
                                                            <textarea required="required" class="liuyan" id="content" name="content"></textarea>
                                                            <div class="clear"></div>
                                                            <div class="buttons">
                                                                <a class="button-1" href="javascript:void(0)"
                                                                   id="cancel">Cancel</a>
                                                                <a class="button-1" href="javascript:void(0)" id="send">Send</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </article>
                                <article class="col-2">
                                    <h3 class="border-bot indent-bot"><strong>User</strong></h3>
                                    <div class="img-indent-bot">
                                        <h6>用户信息</h6>
                                        <dl>
                                            <dt>用户名：<{$_customer.username}></dt>
                                            <dd style="width:100%; display:block; float:left;"><span>留　言:</span></dd>
                                           <div id="showmsg" style="width:100%; display:block; float:left">

                                           </div>
                                           
                                        </dl>
                                    </div>
                                    <div class="img-indent-bot">
                                        <h6>大家可以一定要记得我们哟！</h6>
                                        <dl>
                                            <dt>我们的网址是：</dt>
                                            <h6>
                                                <dd>laravel.meishi.org</dd>
                                            </h6>
                                        </dl>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </section>
                    <div class="block"></div>
                </div>
            </div>
        </div>
        <!--==============================footer=================================-->
        <footer>
            <{include file="common/footer.tpl"}>
        </footer>
        <script type="text/javascript">
            Cufon.now();
            (function () {
                $('#cancel').click(function () {
                    $('#contact-form')[0].reset();
                });
                $('#send').click(function () {
                    $.post("<{'service/message/add'|url}>",$('#contact-form').serialize(),function(data) {
                        $('#showmsg').text(data.content);
                        alert(data.message);
                    });
                 });
            })(jQuery)

        </script>
    </div>
    <{/block}>