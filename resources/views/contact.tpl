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
                                	<h3><strong>Contact</strong> Form</h3>
                                    <div class="p3">
                                        <form id="contact-form" method="post" enctype="multipart/form-data">                    
                                            <fieldset>
                                                  <label><span class="text-form">名称:</span><input name="p1" type="text" /></label>
                                                  <label><span class="text-form">邮箱:</span><input name="p2" type="text" /></label>                              
                                                  <div class="wrapper">
                                                    <div class="text-form">信息:</div>
                                                    <div class="extra-wrap">
                                                        <textarea></textarea>
                                                        <div class="clear"></div>
                                                        <div class="buttons">
                                                            <a class="button-1" href="#" onClick="document.getElementById('contact-form').reset()">Clear</a>
                                                            <a class="button-1" href="#" onClick="document.getElementById('contact-form').submit()">Send</a>
                                                        </div> 
                                                    </div>
                                                  </div>                            
                                            </fieldset>						
                                        </form>
                                    </div>
                                </div>
                                <div class="bg">
                                    <div class="padding">
                                    	<h3><strong>Information</strong></h3>
                                       亲，我们的美食指导详细吗？满意吗？如果感觉到很实用很不错，欢迎亲来给我们点赞哦！我们的团队一定会很感谢亲的。如果觉得我们的指导还不够详细，我们也热情的欢迎大家给我们留言，大家的留言激励着我们不断前行，欢迎大家前来留言，二货，留下你的脚印吧！
                                    </div>
                                </div>
                            </article>
                            <article class="col-2">
                            	<h3 class="border-bot indent-bot"><strong>Our</strong> Contacts</h3>
                                <div class="img-indent-bot">
                                    <h6>湖北</h6>
                                    <dl>
                                        <dt>地址：湖北省黄石市</dt>
                                        <dd><span>Tel:</span> 123456</dd>
                                        <dd><span>E-mail:</span><a href="#">mail@123456@qq.com</a></dd>
                                        <dd><span>联系人：</span>潜行蜗牛</dd> 
                                    </dl>
                                </div>
                                <div class="img-indent-bot">
                                    <h6>湖南</h6>
                                    <dl>
                                        <dt>湖南省长沙市</dt>
                                        <dd><span>Tel:</span>123456</dd>
                                        <dd><span>E-mail:</span><a href="#">mail@123456@qq.com</a></dd>
                                        <dd><span>联系人：</span>深呼吸</dd>
                                        
                                    </dl>
                                </div>
                                 <div class="img-indent-bot">
                                    <h6>安徽省</h6>
                                    <dl>
                                        <dt>地址：安徽省安庆市</dt>
                                        <dd><span>Tel:</span> 123456</dd>
                                        <dd><span>E-mail:</span><a href="#">mail@123456@qq.com</a></dd>
                                        <dd><span>联系人：</span>等风来</dd>
                                    </dl>
                                </div>
                                 <div class="img-indent-bot">
                                    <h6>大家可以一定要记得我们的网址哟！</h6>
                                    <dl>
                                        <dt>我们的网址是：</dt>
                                        <h6><dd>www.meishi.com</dd></h6>
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