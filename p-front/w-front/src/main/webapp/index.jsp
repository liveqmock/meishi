<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>

<head>
	<link href="/static/css/index.css" type="text/css" rel="stylesheet">
</head>

<body>

	<!-- Fixed 导航 -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">江南春大酒店</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><i class="glyphicon glyphicon-home"></i> 主页</a></li>
					<li><a href="/about">关于</a></li>
					<li><a href="#contact">联系</a></li>
					<li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#">更多 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul>
					</li>
					<li><a href="javascript:void(0)" data-toggle="modal" data-target="#loginDlg">登录</a></li>
					<li class="dropdown">
						<a data-toggle="dropdown" class="dropdown-toggle" href="#">
							<i class="glyphicon glyphicon-user"></i>
							bestaone <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">个人中心</a></li>
							<li><a href="#">我的收藏</a></li>
						</ul>
					</li>
				</ul>
				
				<!-- 搜索 -->
				<form id="seachForm" class="navbar-form navbar-right">
					<div class="input-group">
					  <input type="text" class="form-control" placeholder="店名、电话、地址...">
					  <span class="input-group-addon glyphicon glyphicon-search"></span>
					</div>
          		</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>


	<!-- 主页  -->
	<section class="container theme-showcase">
	
		<!-- 头部 -->
		<header>
			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron dn" style="background:url(/static/images/banner1.jpg);">
				<h3>你好, 欢迎来到爱玩网!</h3>
				<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
				<p><a class="btn btn-success btn-lg">了解更多  &raquo;</a></p>
			</div>
		</header>
		
		<!-- 主体 -->
		<section class="cl">
			<div class="">
				<article class="col-xs-12 col-sm-9 index-article">
					<p class="pull-right visible-xs">
						<button data-toggle="offcanvas" class="btn btn-primary btn-xs" type="button">Toggle nav</button>
					</p>
					<section class="jumbotron dn">
						<h1>Hello, world!</h1>
						<p>This is an example to show the potential of an offcanvas layout pattern in Bootstrap. Try some responsive-range viewport sizes to see it in action.</p>
					</section>
					<section id="main-carousel" class="dn">
						<div class="panel panel-default index-popover">
			              <div class="panel-heading dn">
			     			<h3 class="panel-title"><span class="glyphicon glyphicon-home"></span> 简介</h3>
			              </div>
			              <div class="panel-body">
							<div class="carousel slide bs-docs-carousel-example" id="carousel-example-generic">
								<ol class="carousel-indicators">
								  <li data-slide-to="0" data-target="#carousel-example-generic" class="active"></li>
								  <li data-slide-to="1" data-target="#carousel-example-generic"></li>
								  <li data-slide-to="2" data-target="#carousel-example-generic"></li>
								</ol>
								<div class="carousel-inner">
								  <div class="item active">
								    <img alt="First slide" src="/static/images/carousel1.jpg">
								  	<div class="carousel-caption">
										<h3>First slide label</h3>
										<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
									</div>
								  </div>
								  <div class="item">
								    <img alt="Second slide" src="/static/images/carousel2.jpg">
								  	<div class="carousel-caption">
										<h3>Second slide label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									</div>
								  </div>
								  <div class="item">
								    <img alt="Third slide" src="/static/images/carousel3.jpg">
								  	<div class="carousel-caption">
										<h3>Third slide label</h3>
										<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
									</div>
								  </div>
								</div>
								<a data-slide="prev" href="#carousel-example-generic" class="left carousel-control">
								  <span class="icon-prev"></span>
								</a>
								<a data-slide="next" href="#carousel-example-generic" class="right carousel-control">
								  <span class="icon-next"></span>
								</a>
							</div>
			              </div>
			            </div>
					</section>
					<section id="cookbook">
						<div class="panel panel-default index-popover">
			              <div class="panel-heading">
			     			<h3 class="panel-title"><span class="glyphicon glyphicon-list-alt"></span> 食谱</h3>
			     			<button class="btn-link fr">预定</button>
			              </div>
			              <div class="panel-body">
							<div class="cook-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo1-400.jpg">
	            						<div class="caption">
	              							<h3>铁板牛扒套餐</h3>
	              							<p class="intro">精选日本神户牛腱肉，经高火暴烧至6成熟后，用精调汤汁浇盖后，加上少许西兰花点缀，给您以色香味俱全的铁板牛扒商务套餐.</p>
	             	 						<p><span class="price">¥1193.8</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<!--/span-->
							<div class="cook-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo2-400.jpg">
	            						<div class="caption">
	              							<h3>铁板牛扒套餐</h3>
	              							<p class="intro">精选日本神户牛腱肉，经高火暴烧至6成熟后，用精调汤汁浇盖后，加上少许西兰花点缀，给您以色香味俱全的铁板牛扒商务套餐.</p>
	             	 						<p><span class="price">¥1193.8</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<!--/span-->
							<div class="cook-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo3-400.jpg">
	            						<div class="caption">
	              							<h3>铁板牛扒套餐</h3>
	              							<p class="intro">精选日本神户牛腱肉，经高火暴烧至6成熟后，用精调汤汁浇盖后，加上少许西兰花点缀，给您以色香味俱全的铁板牛扒商务套餐.</p>
	             	 						<p><span class="price">¥1193.8</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<!--/span-->
							<div class="cook-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo3-400.jpg">
	            						<div class="caption">
	              							<h3>铁板牛扒套餐</h3>
	              							<p class="intro">精选日本神户牛腱肉，经高火暴烧至6成熟后，用精调汤汁浇盖后，加上少许西兰花点缀，给您以色香味俱全的铁板牛扒商务套餐.</p>
	             	 						<p><span class="price">¥1193.8</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<!--/span-->
							<div class="cook-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo2-400.jpg">
	            						<div class="caption">
	              							<h3>铁板牛扒套餐</h3>
	              							<p class="intro">精选日本神户牛腱肉，经高火暴烧至6成熟后，用精调汤汁浇盖后，加上少许西兰花点缀，给您以色香味俱全的铁板牛扒商务套餐.</p>
	             	 						<p><span class="price">¥1193.8</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<!--/span-->
							<div class="cook-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/food_demo.jpg">
	            						<div class="caption">
	              							<h3>铁板牛扒套餐</h3>
	              							<p class="intro">精选日本神户牛腱肉，经高火暴烧至6成熟后，用精调汤汁浇盖后，加上少许西兰花点缀，给您以色香味俱全的铁板牛扒商务套餐.</p>
	             	 						<p><span class="price">¥1193.8</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
			              </div>
							<div class="">
			              		<button class="btn-link">&nbsp;</button>
			              		<button class="btn-link fr">更多...</button>
			              	</div>
			            </div>
					</section>
					<section id="room">
						<div class="panel panel-default index-popover">
			              <div class="panel-heading">
			     			<h3 class="panel-title"><span class="glyphicon glyphicon-th-large"></span> 大厅/包厢</h3>
			     			<button class="btn-link fr">预定</button>
			              </div>
			              <div class="panel-body">
							<div class="room-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo1-400.jpg">
	            						<div class="caption">
	              							<h3>朝花夕拾厅（001）</h3>
	              							<p class="intro">包间有柜式空调，包含两个窗户，前后通透，主窗户朝南，采光良好。</p>
	              							<p><span>适合人数：<span>1-20人</span></span></p>
	             	 						<p><span class="price">¥8888</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<div class="room-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/room_demo.jpg">
	            						<div class="caption">
	              							<h3>朝花夕拾厅（001）</h3>
	              							<p class="intro">包间有柜式空调，包含两个窗户，前后通透，主窗户朝南，采光良好。</p>
	              							<p><span>适合人数：<span>1-20人</span></span></p>
	             	 						<p><span class="price">¥8888</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<div class="room-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo2-400.jpg">
	            						<div class="caption">
	              							<h3>朝花夕拾厅（001）</h3>
	              							<p class="intro">包间有柜式空调，包含两个窗户，前后通透，主窗户朝南，采光良好。</p>
	              							<p><span>适合人数：<span>1-20人</span></span></p>
	             	 						<p><span class="price">¥8888</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<div class="room-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo3-400.jpg">
	            						<div class="caption">
	              							<h3>朝花夕拾厅（001）</h3>
	              							<p class="intro">包间有柜式空调，包含两个窗户，前后通透，主窗户朝南，采光良好。</p>
	              							<p><span>适合人数：<span>1-20人</span></span></p>
	             	 						<p><span class="price">¥8888</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<div class="room-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo1-400.jpg">
	            						<div class="caption">
	              							<h3>朝花夕拾厅（001）</h3>
	              							<p class="intro">包间有柜式空调，包含两个窗户，前后通透，主窗户朝南，采光良好。</p>
	              							<p><span>适合人数：<span>1-20人</span></span></p>
	             	 						<p><span class="price">¥8888</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
							<div class="room-item col-6 col-sm-6 col-lg-4">
          						<div class="panel panel-default">
          							<div class="panel-body thumbnail">
          							<div class="thumbnail">
	            						<img data-src="holder.js/300x200" style="width: 300px; height: 200px;" src="/static/images/demo2-400.jpg">
	            						<div class="caption">
	              							<h3>朝花夕拾厅（001）</h3>
	              							<p class="intro">包间有柜式空调，包含两个窗户，前后通透，主窗户朝南，采光良好。</p>
	              							<p><span>适合人数：<span>1-20人</span></span></p>
	             	 						<p><span class="price">¥8888</span> <a class="btn btn-primary fr" href="#">了解下</a></p>
	            						</div>
	          						</div>
          							</div>
          							<div class="panel-footer">
          								<span><span class="rate-star-info-a"><span style="width: 70%;"></span></span></span>
			              				<span class="fr">被定<span class="co">1200</span>次</span>
          							</div>
          						</div>
							</div>
			            </div>
			            <div class="">
			              	<button class="btn-link">&nbsp;</button>
			              	<button class="btn-link fr">更多...</button>
						</div>
					</section>
					
					<section class="index-tap dn">
						<ul class="nav nav-tabs nav-box-title">
							<li class="active"><a href="#">商家介绍</a> </li>
						    <li><a href="#">用户评论</a></li>
						    <li><a href="#">产品详细</a></li>
				    	</ul>
				    	<div>
					    	<div>
					    		dsd
					    	</div>
				   		</div>
					</section>
					
					<section class="">
						<div class="page-header dn"><h1>Wells</h1></div>
						
<div id="viewed" class="box-topbold clearfix">
<!-- 浏览过此商品的用户还浏览过 -->
<h2 class="clearfix">浏览过此商品的用户还浏览过</h2>
<dl>
    <dt>
    <a target="_blank" href="/product-129414.html"><img width="220" height="140" original="http://pp.likejuan.com/static/team/2013/0704/13729315445083.jpg?updated=10000000" src="http://pp.likejuan.com/static/team/2013/0704/13729315445083.jpg?updated=10000000" class="imageloading" style="display: inline;"></a>
    <p class="f12top"><span><a class="favorites pngfix" onclick="doCollection(this,129414)" href="javascript:;">收藏</a></span>已有<font style="color: red">570</font>人购买</p>
    <p class="f12"><a href="/product-129414.html">仅售39元全国包邮！价值188元的哥特牛男女通用长款钱包1个，5色可选</a></p>
    </dt>
    <dd>
        <a class="checkout3" target="_blank" href="/product-129414.html">去看看</a>¥39 <del title="¥188">¥188</del>
    </dd>
</dl>
<dl>
    <dt>
    <a target="_blank" href="/product-134352.html"><img width="220" height="140" original="http://pp.likejuan.com/static/team/2013/0717/13740430269220.jpg?updated=10000000" src="http://pp.likejuan.com/static/team/2013/0717/13740430269220.jpg?updated=10000000" class="imageloading" style="display: inline;"></a>
    <p class="f12top"><span><a class="favorites pngfix" onclick="doCollection(this,134352)" href="javascript:;">收藏</a></span>已有<font style="color: red">790</font>人购买</p>
    <p class="f12"><a href="/product-134352.html">【全国包邮】仅需238元、畅享原价1089明星同款AIR MAX 90</a></p>
    </dt>
    <dd>
        <a class="checkout3" target="_blank" href="/product-134352.html">去看看</a>¥238 <del title="¥1089">¥1089</del>
    </dd>
</dl>
<dl>
    <dt>
    <a target="_blank" href="/product-55391.html"><img width="220" height="140" original="http://pp.likejuan.com/static/team/2012/0727/13433805132577.jpg?updated=10000000" src="http://pp.likejuan.com/static/team/2012/0727/13433805132577.jpg?updated=10000000" class="imageloading" style="display: inline;"></a>
    <p class="f12top"><span><a class="favorites pngfix" onclick="doCollection(this,55391)" href="javascript:;">收藏</a></span>已有<font style="color: red">92</font>人购买</p>
    <p class="f12"><a href="/product-55391.html">仅199元团购原价899元的【夏季新款骆驼透气牛皮镂空网眼男式休闲套脚</a></p>
    </dt>
    <dd>
        <a class="checkout3" target="_blank" href="/product-55391.html">去看看</a>¥199 <del title="¥899">¥899</del>
    </dd>
</dl>
<dl>
    <dt>
    <a target="_blank" href="/product-125061.html"><img width="220" height="140" original="http://pp.likejuan.com/static/team/2013/0621/13717828575848.jpg?updated=10000000" src="http://pp.likejuan.com/static/team/2013/0621/13717828575848.jpg?updated=10000000" class="imageloading" style="display: inline;"></a>
    <p class="f12top"><span><a class="favorites pngfix" onclick="doCollection(this,125061)" href="javascript:;">收藏</a></span>已有<font style="color: red">564</font>人购买</p>
    <p class="f12"><a href="/product-125061.html">女人美丽如花，柔情似波，清新如茶，丰富如歌，暗香典雅，乳沟深陷，完美曲</a></p>
    </dt>
    <dd>
        <a class="checkout3" target="_blank" href="/product-125061.html">去看看</a>¥58 <del title="¥298">¥298</del>
    </dd>
</dl>
<dl>
    <dt>
    <a target="_blank" href="/product-153098.html"><img width="220" height="140" original="http://pp.likejuan.com/static/team/2013/0816/13766259231802.jpg?updated=10000000" src="http://pp.likejuan.com/static/team/2013/0816/13766259231802.jpg?updated=10000000" class="imageloading" style="display: inline;"></a>
    <p class="f12top"><span><a class="favorites pngfix" onclick="doCollection(this,153098)" href="javascript:;">收藏</a></span>已有<font style="color: red">662</font>人购买</p>
    <p class="f12"><a href="/product-153098.html">广州莲香楼月饼仅168元，享价值278元七星伴月月饼1盒！馅料纯正、制</a></p>
    </dt>
    <dd>
        <a class="checkout3" target="_blank" href="/product-153098.html">去看看</a>¥168 <del title="¥278">¥278</del>
    </dd>
</dl>
<dl>
    <dt>
    <a target="_blank" href="/product-153579.html"><img width="220" height="140" original="http://pp.likejuan.com/static/team/2012/0903/13466612116018.jpg?updated=10000000" src="http://pp.likejuan.com/static/team/2012/0903/13466612116018.jpg?updated=10000000" class="imageloading" style="display: inline;"></a>
    <p class="f12top"><span><a class="favorites pngfix" onclick="doCollection(this,153579)" href="javascript:;">收藏</a></span>已有<font style="color: red">468</font>人购买</p>
    <p class="f12"><a href="/product-153579.html">仅38元！即享原价99元“香港凯华蛋黄莲蓉月饼一盒”食材天然，起唇轻尝</a></p>
    </dt>
    <dd>
        <a class="checkout3" target="_blank" href="/product-153579.html">去看看</a>¥38 <del title="¥99">¥99</del>
    </dd>
</dl>
</div>
					</section>
				</article>
				<aside id="sidebar" class="col-xs-6 col-sm-3 index-aside">
					<div id="details" class="panel panel-default">
            			<div class="panel-heading">
              				<h3 class="panel-title"><span class="glyphicon glyphicon-align-right"></span> 详细</h3>
            			</div>
            			<div class="panel-body">
            				<ul>
            					<li>
            						<p><span>综合评分：</span><span><span class="rate-star-info-small"><span style="width: 70%;"></span></span></span><span id="score">4.5</span></p>
            					</li>
            					<li>
            						<p><span>营业时间：</span><span>9:00-22:00</span></p>
            					</li>
            					<li>
            						<p><span>大厅规格：</span><span>1-10人/桌，共20桌</span></p>
            					</li>
            					<li>
            						<p><span>包厢规格：</span><span>1-20人/间，共30间</span></p>
            					</li>
            					<li>
            						<p><span>联系电话：</span><span>021-33253432</span></p>
            					</li>
            					<li>
            						<p><span>详细地址：</span><span>合肥市高新开发区科学大道88号(黄山路口)</span></p>
            					</li>
            					<li>
            						<p>
            							<span>
            								<span class="details-icon wm"></span>
            								<span class="details-icon bx"></span>
            								<span class="details-icon tc"></span>
            								<span class="details-icon sk"></span>
            								<span class="details-icon hy"></span>
            								<span> </span>
            							</span>
            						</p>
            					</li>
            				</ul>
            			</div>
          			</div>
          			<div class="panel panel-default">
            			<div class="panel-heading">
              				<h3 class="panel-title"><span class="glyphicon glyphicon-map-marker"></span> 地图</h3>
              				<i id="map-fullscreen" class="glyphicon glyphicon-fullscreen btn-link fr"></i>
            			</div>
            			<div id="map" class="panel-body baidu-map4"></div>
          			</div>

					<div class="panel panel-default">
						<div class="panel-heading">
              				<h3 class="panel-title"><span class="glyphicon glyphicon-header"></span> 热门</h3>
            			</div>
            			<div class="panel-body">
	            			<ul class="nav">
								<li>Sidebar</li>
								<li class="active"><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li>Sidebar</li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li>Sidebar</li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
							</ul>
            			</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading">
              				<h3 class="panel-title"><span class="glyphicon glyphicon-star-empty"></span> 最新</h3>
            			</div>
            			<div class="panel-body">
	            			<ul class="nav">
								<li>Sidebar</li>
								<li class="active"><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li>Sidebar</li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li>Sidebar</li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
							</ul>
            			</div>
					</div>
					
				</aside>
				<!--/span-->
			</div>
			<!--/row-->
		</section>
		
		<hr>
		<!-- 页脚 -->
		<footer class="text-center">
			<ul>
				<li><a rel="nofollow" href="javascript:;" target="_blank">关于爱玩网</a>|</li>
				<li><a rel="nofollow" href="javascript:;" target="_blank">诚信公约</a>|</li>
				<li><a rel="nofollow" href="javascript:;" target="_blank">网站帮助</a>|</li>
				<li><a rel="nofollow" href="javascript:;" target="_blank">推广服务</a>|</li>
				<li><a rel="nofollow" href="javascript:;" target="_blank">媒体报道</a>|</li>
				<li><a rel="nofollow" href="javascript:;" target="_blank">人才招聘</a>|</li>
				<li><a rel="nofollow" href="javascript:;" target="_blank">站务论坛</a>|</li>
				<li><a rel="nofollow" href="javascript:;" target="_blank">联系我们</a>|</li>
				<li><a rel="nofollow" href="javascript:;" target="_blank">开发者</a>|</li>
				<li><a onclick="return false;" href="javascript:;">友情链接</a></li>
			</ul>
			<p>&copy;2003-2013 aiwan.biz, All Rights Reserved.&#12288;&#12288;本站发布的所有内容，未经许可，不得转载，详见<a href="javascript:;">《知识产权声明》</a></p>
		</footer>
	</section>
	
	<!-- 客服 -->
	<div id="divQQbox" class="QQbox">
		<div id="divOnline" class="Qlist dn">
			<div class="con">
				<h2>在线客服</h2>
				<ul>
					<li>QQ1:&nbsp;<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2510770831&amp;site=qq&amp;menu=yes" target="_blank"><img border="0" align="absmiddle" title="点击这里给我发消息" alt="点击这里给我发消息" src="/static/images/QQ_online.jpg"></a></li>
					<li>QQ2:&nbsp;<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1160274036&amp;site=qq&amp;menu=yes" target="_blank"><img border="0" align="absmiddle" title="点击这里给我发消息" alt="点击这里给我发消息" src="/static/images/QQ_online.jpg"></a></li>
					<li>QQ3:&nbsp;<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2811243415&amp;site=qq&amp;menu=yes" target="_blank"><img border="0" align="absmiddle" title="点击这里给我发消息" alt="点击这里给我发消息" src="/static/images/QQ_online.jpg"></a></li>
					<li>旺旺:<a href="http://amos.alicdn.com/msg.aw?v=2&amp;uid=味捷外卖&amp;site=cntaobao&amp;s=1&amp;charset=utf-8" target="_blank"><img border="0" alt="点击这里给我发消息" src="/static/images/online1.gif"></a></li>
					<li style="color: #ff6600; font-size: 12px;">TEL:4007-123-123</li>
				</ul>
			</div>
		</div>
		<div id="divMenu" style="display: ;">
			<img alt="QQ客服热线" class="press" src="/static/images/qq_1.png">
		</div>
	</div>
	
	<div id="loginDlg" class="modal fade">
		<div class="modal-dialog" style="width: 400px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">用户登录</h4>
				</div>
				<div class="modal-body">
					<form>
						<fieldset>
							<label class="block clearfix"> 
								<span class="block input-icon input-icon-right"> 
									<input type="text" placeholder="Username" class="form-control">
									<!-- <i class="glyphicon glyphicon-user"></i> -->
								</span>
							</label> 
							<label class="block clearfix"> 
								<span class="block input-icon input-icon-right"> 
									<input type="password" placeholder="Password" class="form-control">
									<!-- <i class="glyphicon glyphicon-lock"></i> -->
								</span>
							</label>
						</fieldset>
					</form>
				</div>
				<div class="modal-footer">
					<label class="fl">
          				<input type="checkbox" value="remember-me"> 记住我
        			</label>
					<a class="btn-link">忘记密码？</a>
					<button type="button" class="btn btn-primary">登录</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<!-- js -->
	<script src="http://api.map.baidu.com/api?v=1.5&ak=79371730a308db33cf477bf3ae05fa63" type="text/javascript"></script>
	<script src="/static/js/plugins/baidu.map.js" type="text/javascript"></script>
	<script src="/static/js/web/index.js" type="text/javascript"></script>

</body>

</html>