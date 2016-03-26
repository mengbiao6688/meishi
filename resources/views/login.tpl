<{extends file="extends/main.block.tpl"}>
<{include file="common/head.tpl"}>

<{block "head-scripts-plus"}>

<{/block}>

<{block "body-container"}>
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

							<div id="l-1">
								<img style=" display:block;  margin:0 auto;"  src="<{'static/img/meishi/denglu.png'|url}>">
								<div id="dlfs">
									<a href="index.html"><img src="<{'static/img/meishi/sy.png'|url}>"></a>
									<a href="search.tpl"><img src="<{'static/img/meishi/dt2.png'|url}>"></a>
									<a href="courses.html"><img src="<{'static/img/meishi/lx.png'|url}>"></a>                                                </div>
								<img style=" display:block;  margin:0 auto;" src="<{'static/img/meishi/login-or.png'|url}>"><!--一直到这里都是没用的图片除了那几个a标签外-->
								<form id="form" method="post">
									<ul>
										<li><span>用户名：</span><input type="text" name="username" id="username" class="input" required></li>
										<li><span>密　码：</span><input type="password" name="password" id="password" class="input" required></li>
										<li><button class="button" id="button">登　录</button><li>
									</ul>
								</form>
								<div id="dlfs">
									<a href="contacts.html"><img src="<{'static/img/meishi/dh.png'|url}>"></a>
									<a href="search.tpl"><img src="<{'static/img/meishi/hz.png'|url}>"></a>
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
		<{include file="common/footer.tpl"}>
	</footer>
	<script type="text/javascript"> Cufon.now(); </script>
	<script type="text/javascript">
		$("#form").submit(function(e) {
			e.preventDefault();
			$.ajax({
				url:"<{'service/account/login'|url}>",
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