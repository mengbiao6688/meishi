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
                                        <form id="contact-form" method="post" enctype="multipart/form-data">                    
                                            <fieldset> 
                                            	 <label><span class="text-form">用户名:</span><input type="text" name="user" id="user" /></label>                   
                                                  <div class="wrapper">
                                                    <div class="text-form">留言:</div>
                                                    <div class="extra-wrap">
                                                        <textarea class="liuyan" id="liuyan"></textarea>
                                                        <div class="clear"></div>
                                                        <div class="buttons">
                                                            <a class="button-1" href="#" onClick="document.getElementById('contact-form').reset()">Cancel</a>
                                                            <a class="button-1" href="/index" id="send" onClick="document.getElementById('contact-form').submit()">Send</a>
                                                        </div> 
                                                    </div>
                                                  </div>                            
                                            </fieldset>						
                                        </form>
                                    </div>
                                </div>
                            </article>
                            <article class="col-2">
                            	<h3 class="border-bot indent-bot"><strong>User</strong> </h3>
                                <div class="img-indent-bot">
                                   <h6>用户信息</h6>
                                    <dl>
                                        <dt>用户名：liuqian</dt>
                                        <dd><span>Tel:</span> 123456</dd>
                                        <dd><span>E-mail:</span><a href="#">mail@123456@qq.com</a></dd>
                                        <dd><span>联系人：</span>潜行蜗牛</dd> 
                                    </dl>
                                </div>
                                 <div class="img-indent-bot">
                                    <h6>大家可以一定要记得我们哟！</h6>
                                    <dl>
                                        <dt>我们的网址是：</dt>
                                        <h6><dd>laravel.meishi.org</dd></h6>
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
    <script type="text/javascript"> Cufon.now(); </script>
</div>
<{/block}>