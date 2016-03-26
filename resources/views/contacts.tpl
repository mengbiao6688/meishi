
<{extends file="extends/main.block.tpl"}>
<{include file="head.tpl"}>

<{block "body-container"}>
<div id="page6">
	<header>
    	<{include file="header.tpl"}>
    </header>
        <!--==============================content================================-->
        <div class="inner">
            <div class="main">
                <section id="content">
                    <div class="indent">
                    	<div class="wrapper">
                        	<article class="col-1">
                            	<div class="indent-left">
                                	<h3>Contact Form</h3>
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
                                                            <a class="button-2" href="#" onClick="document.getElementById('contact-form').reset()">Clear</a>
                                                            <a class="button-2" href="#" onClick="document.getElementById('contact-form').submit()">Send</a>
                                                        </div> 
                                                    </div>
                                                  </div>                            
                                            </fieldset>						
                                        </form>
                                    </div>
                                </div>
                                <div class="bg">
                                    <div class="padding">
                                    	<h3>Information</h3>
                                       亲，我们的美食指导详细吗？满意吗？如果感觉到很实用很不错，欢迎亲来给我们点赞哦！我们的团队一定会很感谢亲的。如果觉得我们的指导还不够详细，我们也热情的欢迎大家给我们留言，大家的留言激励着我们不断前行，欢迎大家前来留言，二货，留下你的脚印吧！
                                    </div>
                                </div>
                            </article>
                            <article class="col-2">
                            	<h3 class="border-bot indent-bot">Our Contacts</h3>
                                <div class="img-indent-bot">
                                    <h6>Canada</h6>
                                    <dl>
                                        <dt>8901 Marmora Road, Glasgow, D04</dt>
                                        <dd><span>Telephone:</span>  +1 959 603 6035</dd>
                                        <dd><span>FAX:</span>  +1 504 889 9898</dd>
                                        <dd><span>E-mail:</span><a href="#">mail@thomsander.com</a></dd>
                                    </dl>
                                </div>
                                <div class="img-indent-bot">
                                    <h6>Great Britain</h6>
                                    <dl>
                                        <dt>8901 Marmora Road, Glasgow, D04</dt>
                                        <dd><span>Telephone:</span>  +1 959 603 6035</dd>
                                        <dd><span>FAX:</span>  +1 504 889 9898</dd>
                                        <dd><span>E-mail:</span><a href="#">mail@thomsander.com</a></dd>
                                    </dl>
                                </div>
                                <h6>Japan</h6>
                                <dl>
                                    <dt>8901 Marmora Road, Glasgow, D04</dt>
                                    <dd><span>Telephone:</span>  +1 959 603 6035</dd>
                                    <dd><span>FAX:</span>  +1 504 889 9898</dd>
                                    <dd><span>E-mail:</span><a href="#">mail@thomsander.com</a></dd>
                                </dl>
                                 <div class="img-indent-bot">
                                    <h6>大家可以一定要记得我们的网址哟！</h6>
                                    <dl>
                                        <dt>我们的网址是：</dt>
                                        <h6><dd>www.meishi.com</dd></h6>
                                       <!-- <dd><span>FAX:</span>  +1 504 889 9898</dd>
                                        <dd><span>E-mail:</span><a href="#">mail@thomsander.com</a></dd>-->
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
</div>
<{/block}>}