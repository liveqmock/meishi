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
					<li class="active"><a href="#">主页</a></li>
					<li><a href="#about">关于</a></li>
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
					<li><a href="/login">登录</a></li>
					<li><a href="/register">注册</a></li>
				</ul>
				<!-- 搜索 -->
				<form class="navbar-form navbar-right pr0">
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
			<div class="jumbotron banle" style="background:url(/static/images/banner1.jpg);">
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
					<section>
						<div class="panel panel-default index-popover">
			              <div class="panel-heading">
			     			<h3 class="panel-title text-muted"><span class="glyphicon glyphicon-home"></span> 简介</h3>
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
								    <img alt="First slide" data-src="holder.js/900x500/auto/#777:#555/text:First slide" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA4QAAAH0CAYAAABl8+PTAAAWTklEQVR4nO3dUYuqXsOH4edLbiLCKCJCQhA86OP7Hvxp3sbRsrLJ6XcdXEd7N+nKGbxbS/3f6XRqAQAAyPO/d28AAAAA7yEIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEACI0jRNW5bl27cDYA4EIQB8uLqu281m0xZF0R4Oh7dvzzuVZdkuFot2t9u9fVsA5kAQAsCHKsuy3Ww27b9//76khlBd1+16vY4fB4AuQQjMQlVVbVEUL7XZbJ7exvMsS1EU7X6/b5umefvYke1wOPw41ler1bcI/O0gLMuyXa/XbVEU7Xq9/vVZyb6/J+8YB4C/QBACs3A8HgdPYKdU1/VD21eWZe/PW61WopC32u12d/0OvDqEtttt7/s++4XMPcb8PRGEAP8RhMAsNE3THo/HL8vl8scJ3GKx+PZ/+uz3+2/Lwrr2+/1D27dYLCb/mTCFuq4Hfx/6fhdeGUJVVV2NsKqqfmVMxvw9EYQA/xGEwCz1LfEqimL06+u67v0Zq9Xqoe25dpK73W7fPl5/WXd5329FQ4K+2cNXhtCtmbl33dnzt8cB4C8RhMAsPRuEZ90bajy6bPTaNVnpd218Vnc57vF4fPs2fYrfDqGmaV6yZPuvjQPAXyIIgVmaKghPp59R+MgSz2vXEL57rP667sm6IHzd2L7zGsJ3zqQLQoBhghCYpSmDsGmabzN8j0bc4XD4di1hURRuKDOBbrALwum8K4S6UfjuZdWCEGCYIARmacogPJ1+3uzi0aVr55tVuM5tOt3luIJwOu8MofPNbt61THQu4wAwd4IQmKWpg/B0+v9ZCzcumY+6rn98zoJwOkLIOADcIgiBWXpFEDZNY4nnzPSdqAvC145vYggZB4BhghCYpVcE4VT2+/3XIxLevS1/2dAz6wThdN4ZQk3TtNvtti2KwjWEADMmCIFZeiYIzyehRVFM+kiIsix/bNfU+11VVVuW5bd9ePdncc2j47vf77/doEcQfjfVtXfvCKGmadrD4fDtYfDvPo4FIcAwQQjM0jNBePnae0/6DofDt4ekF0Xx7cS265F9m+I9qqpqd7tdu16vv37GZrN5KoDrum4Ph8O3GC2Kol2v1+1ut/sWak3TtOv1etQYdPd3KATPVqvVj/HpevfxeY+madqyLNvdbvdjP3a7XVuW5belzOd4mSKMXxlC3ePk2mf7ys+sb2w3m0273++/ovoV43DrM333cQcwliAEZumZILy8a+W9J319J47XPLJvz7xHVVW9Y3NpuVzeddOc4/F482eeLRaLHwF7aybr3v191bj/trqufzxS45qiKL4du1PMbr8yCMceM68Kwv1+f/WLlLP1ev315cWz49A0Tbvb7W5+qXH+XdlsNq5bBmZPEAKz9EwQPnPSd75VftfQg+kf2beh9xgKp/Pr9vv96BPw5XI56kS0+57L5bLdbrdtWZZf23W+ZnLovW7NZA3t7/F47P15+/1+8P+fvfv4vKUsy2/RcI6Dw+HwtQ+Hw+FqME4Rbq8MwqqqRh/HUwZh0zQ/jsfFYtFut9tvx2xfBD4zDlVV/QjQoii+Ha+73e7H/1ksFmYMgVkThMAsPRqE3ciY8jqhqYJw7LZfvkc3HC5PgLvP8Rsbat2Hh6/X66sReTwee2dGnpnJemS756775cFyubw6i1rXde9nuNlsnt6Wd1w713ccTxWETdP8GKvVajU4vkNje+84HA6H3i8uhrax7+/XlNczA0xJEAKz9EgQ9p38fUIQdgOjewI8NHt3Laz6nv83ZkaxqqofUfjMGH9iEHZniMbMDvWFzhQR9WlB2B2jxWJxc8ly39jeMw59x/ytuBt6z79+bAOfSRACs9QXOefr14Y8Owtwy7uC8DIw+mbx+pYdLhaLq4HXnR28Z1+6gfrMTNanBWHf0uKx+1PX9bfwWC6XT2/PJwXhM/vy6GubpuldJvrosbBard5+jAJ0CUJglu65YcU1nxCEt04mu7MRi8Xi5gxG3/g++vk8c7L/aUHYFx737E/39a/Ynr8YhH0z2v/+jZvVfmYcnv08+5ZY/+XjG/hMghCYpb5gWa1WV280st1uJ13O2PXOIBxzk5jzTT7GnCT3je89z727vKbqmZmshCC859qxbvg8+yzCTwnCvv1Yr9cvHYemaX78PVksFndtd9/v2Xa7fftxCnBJEAKz9OhNZbo3f/iUIJw6kvqWjN6z9LNpmkm26dOCcGiZ4D2PHhgb9WN8ShD2PV5i6KYuU41D341k7t2Pvve1bBSYG0EIzNK7Hjsx9uf+ZhBOcbfJrqqqet9rvV7f9QzDV4zpXw7C06l/meBqtXrLowc+IQiHlos+sxR3zDj0XZs71XNN332MAlwShMAsvevB9Ne8KwifXTY4pG+W8Gy5XLb7/f5l731tTP96EA49s/Lfv/9/XMhvRfcnBOHQ78Wrg/CZO5Nee99X/k4DPEIQArP0TBBevvYTgvCV43ztweiXs1uvisNPDMLTqX+5YV90vzoOPyEI9/v9078Xj4zD0Gd27U7HXX1LXT/lGAc+hyAEZkkQ/t7yssPhMHji2rVerydd+vjJJ8vH43H03XJXq1V7OBwmu3bw7BOCcIpll1MF4VQ+5RgHPoMgBGbpmSA8323zeDxOOqv1qUF4VpblXQHjpjLjVFU1aib2379xjwy5hyB8fBz63nOz2Vy90/FYU4c/wDMEITBLzwThq3x6EJ7Vdd1ut9tRs4b33Olx7Jh+WhCeNU3T7vf73mvT+sJjimj4hCAcWn57z/hMFYSvHjuAdxCEwCwJwvcF4aWyLG/Obj0ThUlBeKmqqt7nZl665zl7Qz4hCN91U5m+v0GvuOMvwLsJQmCWBOHrg7Asy9FxcJ7dGpo1fHRp7icG4XmJ6Nj/fzgcBpfqPrt89BOC8F2PnViv17P7GwTwCoIQmCVB+LogLMvyK+zufUh20zST3I7/2pheO9GvqmrSa+ymVNf1t7G5d8ln30zss8f8JwTh6dT/bMd79qMv7m69foq7m56VZfnnv+gAPpcgBGZJEL4uCLuRcG+49G3no5HRN+N47cT5/Iy/5XI5uxPs7rjcezfWpml+hI8g/E9f0N2zpPaRoByamXzkLrvnv2dFUXgGITA7ghCYJUH4e0H4yIzbVJHR9zlfC73tdjub4+HW5/fI9Wbd8RCE/zl/EdA15suMoZvSjBmHKf4OPftFAcCrCUJglgTha5eMPjuu3W18dBnnZeCNOWG+nFF89g6nU2ua5tt+LBaLu2dfu8f9szcx+ZQg7H729+zL0HWvY1479Dt5z/F++Zkul8u3H6cAXYIQmCVB+Log7Hufe2Ytuq9/JHzO+mZ+hiKoO9Mzx6V33X3ZbrdPvf7ZZbGfFISP3G302h1yx45D35cWY6Ow+/5zW+YMcDoJQmCmBOHvBuFisWirqhr1+u71XM8GRt8MTvdkuyzLb9eB3Rta7zxGxs4mdW9iMsXx/klBeDoNx1l3triu697rDsd88dBn6GdtNpveLybKsvxx86W5HrMAghCYpb47WS4Wi7dtz9ANJsZG1BjPXCd1j+7Sxu4J7tA+VVX148R4iueyDe33crlsi6L4EYyr1WryMXnlcXsOoqFZ2Lquf4TbVPvYF1BTPN/wmr5r9qb83R2a9VssFm1RFL2fwdCy0aIo2qIobsZa0zRXZxvPx2pRFL03sPH8QmDOBCEwC1VVfZ1QDZ1Ud0+8poyxs/Mz4bqGTijPJ6Fd104wh95j6CHll/s89j1uuTZz0j1ZHtq2KWeahm780TXnGDyd+me2+/bh2nG1Xq/v2seh4+natlxuw6V7ro3bbreTHMePXH+63+8H36fvOO2bKe0e62PHeuz7vuL3BOAVBCEwC0PLJa95xfU4t04cx7p2gvkb73HLOWY3m83XM9L2+/3VGD+HxG63e8n1e8fjcXBp3mq1mu3zBy+dI2y9XreHw6E9Ho/t4XC4uXxxuVxenZ39jWP23ngZE7+vDKa6rtvtdtsb1edj+zyel2NUFEW72+2+jvvj8XjXuDdNc/MzXS6X7Xa7neV1rgBdghCYhaZpvk7OxnrFTFFd13dvR59rJ5i/8R5j9vPav0/5Xo949ef8KrfGtaqqH2M7l2P2eDzeFTB9+/Lq9xwzBn3H6vnff+Nvxl86XgFOJ0EIAAAQSxACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACE+j/PTe56wNdTmAAAAABJRU5ErkJggg==">
								  	<div class="carousel-caption">
										<h3>First slide label</h3>
										<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
									</div>
								  </div>
								  <div class="item">
								    <img alt="Second slide" data-src="holder.js/900x500/auto/#666:#444/text:Second slide" src="data:image/png;base64,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ACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAj1f9EE4GSCT8okAAAAAElFTkSuQmCC">
								  	<div class="carousel-caption">
										<h3>Second slide label</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									</div>
								  </div>
								  <div class="item">
								    <img alt="Third slide" data-src="holder.js/900x500/auto/#555:#333/text:Third slide" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA4QAAAH0CAYAAABl8+PTAAAWSklEQVR4nO3dzYrqWqOG0e+eFkEkiIgoiERIw/u/lJzGxjqWlWiisUzqHY3R2bss48x0MZ/K3//O53MDAABAnv99egMAAAD4DEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAAAAoQQhAABAKEEIAAAQShACAACEEoQAAAChBCEAAEAoQQgAABBKEAIAAIQShAAAAKEEIQAAQChBCAAAEEoQAgAAhBKEAMxOVVVNVVUf3w7mqa7r5nA4fHw7AKZAEALcOJ1OTVmWTVmWzX6///j28N12u23+/fvXHI/Hj2/LXJxOp2a9XpvT53NzOByaoiia7Xb78W0BmAJBCHClqqpmuVw2//79a/79+2fROCHH4/HbvhGEjx0Oh2a9Xn+NWfKcPp1OzWq1ih8HgFuCEJicy9G5sa3X6x/vtdlsvv3M9cJ5CovGuq6/beNms2lOp9PH99G77ff7b/vlOgQF4f2x6hqv35zTh8OhWa1WTVmWzWq1+vWjklVV/RiTqX23AaZCEAKTcjweOxeyY7h9v7aF4lQWjafTqSmK4sc2FUXx56+fu5wWeo8g7D9WvzmnN5tN6/u2/UHmXfr8OyIIAf4jCIFJ2e12PxZui8Wi2W63zfF4bI7H449T4K4D4WK32zWLxeJhRFRV9fWatqMqn1w0Xp/edmu1Wn18X73T6XT62i+Hw0EQ9hyrW21z6J1zuqqquxH2W3/IqOv62zi0/VsgCAH+IwiBSbmNveVy2dR1/e1nuo6I3P6uuq5/LATvnbo2tdPK7h29XC6XH99Xnx4LQfhY23flnXP60ZG5T93Z87fHAWBOBCEwKbdH6doW/X2D8Hz+7/qq65/ZbDad7z21IOw69e63T7+bAkH4nN8Oobqu7wbhp65/FYQA3QQhMCnXC7ayLFt/ZkgQns/nb9fhdf3O83l6QXjvGsKEG8s82jeC8LFPhFDXHzLu/THmL44DwFwIQmAybk836zq9c2gQ3i5Qu35uakF4Pv93Tdb1aa+LxeLP31Cm774RhI99KoRuv3OfjMFPjgPAHAhCYDKuF21FUfy4drDt5/qE3u2NLrqOrk0xCC8uN8f49HZ8iiB8zidD6HKzmykczRaEAN0EITAZ13dEvHeN3NAgPJ+/X5vYdWOLKQdhOkH4HCFkHAAeEYTAZPSJtvP5uSC8fpxF16mognC6BOFzhJBxAHhEEAKT8+gauWeCsK7rh6euTTkIj8djU5ZlU5alawgFYW+fDKG6rpvNZtOUZekaQoAJE4TA7DwThH1MMQirqvrxbMaxQ6iqquZwOHwt3u/difVT0oJwrGvvPhFCdV03+/3+282QPj2nBCFAN0EIzM4ng/BwODTb7fYrnMqybFarVbPdbp8+cldV1bffV5blj+cxvhpC+/3+x3tcL9j7jGVVVc12u21Wq9XX71iv152n4PZxiYfrGL0cUdrv9183FppzENZ13TpvyrJsttttczgcvt1A6TK/x/h87wyh231WlmXrY1LeHYRtY7ter5vdbvcV1e8Yh0f79NPzDqAvQQjMzm8HYV3XzXa77Vzs3i58u+6O2uX2cRuPPBMKXWPWJwgvwXrv54c+DuNyOuGjMS2Kolmv162BPPUgPJ1OP47uPpo715/zldC+t9/HCsJHc+LdQbjb7e7+UeNitVp9u2HVK+Mw5N+Cy9wd+u8BwG8ThMDs/GYQrlarXovO24XgkEVgXddfj5W41fbez4TQ5REAtx6N5fXNeB5ZLBa9PvftsxUvr93tdt+2695R0qkH4eFw+BYNlzjY7/dfn3G/398NxjHC7Z1BWFVV7zk1ZhDWdf3ju1oURbPZbL62YbfbtUbgK+PQNm/Lsvwxb29/pigKRwyBSROEwOz8ZhC2xd5ms2kOh8PXwrPtaMG9x2a8uk1jhlDX0cnz+fwjVq4X3V2x9mjbqqr6MV73jqIcj8fOozFTDcLD4fAjdu9dD3g6nVrHc4w59Ilr59rm1FhBWNf1j7FaLped49s1tkPHYb/f/3j9brfr3Ma27+0YR3wB3kEQArPzqSC8nD56+7rT6dQaLWPcFORTQXgbNbeL7q6xurdtbeO0XC4fbmNbRE45CG+PEPU5OtQWOmNE1F8LwtsxKori4fesbWyHjEPb/HsUd13vOdU5C2QThMDs/HYQFkXx8Pq4tlP/uo4gvLpNvxGE11GzWq1+hHDb5310quwrn2UuN5W5Dekh23kbzIvF4uXt+UtB+Mpnefa1dV23nib67Fzo8wcQgN8mCIHZ+c0g7BODXds0xrPXPhWEjxawt0dAiqK4e9Sk7ZS7IYvjuQRh2zwYsp23r3/H9swxCE+nU+v87Hut7rPj8Or+nNORbSCXIARmZ4rPIXzXjTQ+GYR9bhJzubHIo59r+xxDjqDOOQiHXDt2Gz6vnnb8V4Kw7XOsVqu3jkNd1z+CriiKQdvdNm/H+EMRwJgEITA7gvB3gnCs9+k6ujPkMRVzCcKu0wSH3HW2T2D39VeCsO1uu0P+oPDMOLQd1R76Odre12mjwNQIQmB2BOH7g3Csu6Sez+0L66H7ay5BeD63nya4XC4/8uiBvxCEXX9QeOVU3D7j0Had7NCxe9e/VQBjEoTA7AjC9wfhGHdIHXN/zSkI244SXlwe3THk6OjYYz+3IOyao+8OwlfuTHrvfcf+fgG8ShACsyMIf+c5hGNpe0D40LGZUxCez91HRa8tFou3x+FfCMLdbvfyHH1mHLr2WVmWvbWd6jr1uQvkEYTA7AjCeQVh22f460F4GdtHz7a8WC6XzX6/H+3awXvzcm5BOMb3fawgHMvU5y6QRRACsyMIBeGcFtVVVbVej9bm0eM7hhKEz49D23uu1+vmeDy+bOzwB3iFIARmRxDOKwjbYmjonRbnHIQXdV03u92u9dq0tvAYIxr+QhB2nX47ZHzGCsJ3jx3AJwhCYHYE4byCMO2mMn1UVdVsNpvWO5JeDHnO3pCxn1sQfuqmMm1zbsy77wJMhSAEZkcQzisI0x47cTlFdMj4dF1r+Orpo38hCD/12IkxboYEMAeCEJgdQTivIKyq6uUFfduRtKkF4el0+nY66NBTPttOrX11Dv2FIOza/0M+R1vcPXr9GHc3vTgcDpObrwAXghCYHUE4ryA8n9sX9LvdrtdrxwjK33A7lkMfRF/X9Y9xEoT/aQu6IafUPhOUXUcmh+7X8/n/v8dlWXoGITA5ghCYHUE4vyDcbDY/3qPvjWW67tA59SB85nqz2/0tCP9zOBxa50Cfo7Bdpyz3GYcx7pD76h8KAN5NEAKzIwjnF4TPXgfW9bopBmFd19+2ryiKwaeN3u7vV29i8leC8Hw+tz7kvc9n6Xo4fJ/Xdn0/hlzbeb1PF4vFx+cpwC1BCMyOIJxfEHaN0b1oquv67iMaphaE5/PPRxVsNpuXXv/qZ/xLQfjM3UbvPf+x7zi0Hd3uG4W37z/FOQsgCIHZEYTzDMLz+dwaeEVR/PhMx+Px4fP6xnyA+1he2c7bm5iMMX/+UhCez91xdns96ul0ar3u8NqQo69dv2u9XrdeE3g4HH7M36F/HAD4LYIQmJ2uRWFVVS/93rYA6buIa1t4D334epu209363oylj1euzXrGvaN+i8WiKcuy9TO3/beiKJqyLJuyLCcTh12frSzLzmvHTqfTj/mzXC5H2Qdt35Uxnm94T9s1e0VRjPb7u476XeZD2z7oOm30Mn8efc/rur57tPEyd8uybL2BjecXAlMmCIHJuzyn7aJrUXYdCH2PSGw2m85F5O2i8TY6rrer67XL5fLhgrOqqm/bfdFnm271HcN7i9fbBe61MY5y1HXdGfVt+/RwONwd43//3n/Uq69H23k9J7rid7VaDYrBrn3bZ17eGhLWl+/Oq3PqmZjf7Xad79M2N7rOKrj+PvUd677vO7W5CdBFEAKT92gx16XP7+6zgO9a2A3ZrnsLzq7TNsf8zM+O4bML5z6Ox2OzXq9bF9iLxaLZbDZfYXTZT0VRNKvVqtlut83xePwylVv5X7ZztVo1+/2+OR6PzX6/f3j64mKxaNbr9VNHucfat0PjZch35x3BdDqdms1m03n0+Ho8r8eoLMtmu91+PRvweDwOGve6rh/u08v8ncq8BLhHEAKTdzqdvi3+++rzu6uq6v37bhd3Q7br3oKzruunPt+Qz/zsGA75HK+43g9ti+jL///0XOwzV4fOt099P/rM8bG+O2O9Z58xaJujl///jlOhb8f/XadbA7yLIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEIJQgAAgFCCEAAAIJQgBAAACCUIAQAAQglCAACAUIIQAAAglCAEAAAIJQgBAABCCUIAAIBQghAAACCUIAQAAAglCAEAAEL9H0nnEJBQj0ukAAAAAElFTkSuQmCC">
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
					<section>
						<div class="panel panel-default index-popover">
			              <div class="panel-heading">
			     			<h3 class="panel-title text-muted"><span class="glyphicon glyphicon-home"></span> 基本情况</h3>
			              </div>
			              <div class="panel-body">
			                Panel content
			              </div>
			            </div>
					</section>
					<section>
						<div class="panel panel-default index-popover">
			              <div class="panel-heading">
			     			<h3 class="panel-title text-muted"><span class="glyphicon glyphicon-home"></span> 食谱</h3>
			     			<button class="btn-link fr">预定</button>
			              </div>
			              <div class="panel-body">
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
								<p><a href="#" class="btn btn-default">View details »</a></p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
			              </div>
							<div class="panel-footer">
			              		<button class="btn-link">&nbsp;</button>
			              		<button class="btn-link fr">更多...</button>
			              	</div>
			            </div>
					</section>
					<section>
						<div class="panel panel-default index-popover">
			              <div class="panel-heading">
			     			<h3 class="panel-title text-muted"><span class="glyphicon glyphicon-home"></span> 大厅/包厢</h3>
			     			<button class="btn-link fr">预定</button>
			              </div>
			              <div class="panel-body">
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
								<p><a href="#" class="btn btn-default">View details »</a></p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
							<!--/span-->
							<div class="col-6 col-sm-6 col-lg-4">
								<h2>Heading</h2>
								<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p><p>
									<a href="#" class="btn btn-default">View details »</a>
								</p>
							</div>
			              </div>
			              <div class="panel-footer">
			              	<button class="btn-link">&nbsp;</button>
			              	<button class="btn-link fr">更多...</button>
			              </div>
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
					<div class="panel panel-default index-popover">
            			<div class="panel-heading">
              				<h3 class="panel-title">提示</h3>
            			</div>
            			<div class="panel-body">
							<p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
            			</div>
          			</div>
          			<div class="panel panel-default index-popover">
            			<div class="panel-heading">
              				<h3 class="panel-title">地图</h3>
            			</div>
            			<div id="map" class="panel-body baidu-map4"></div>
          			</div>

					<div class="panel panel-default index-popover">
						<div class="panel-heading">
              				<h3 class="panel-title">导航</h3>
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
		<div id="divMenu" style="display: block;">
			<img alt="QQ客服热线" class="press" src="/static/images/qq_1.png">
		</div>
	</div>
	
	<!-- js -->
	<script src="http://api.map.baidu.com/api?v=1.5&ak=79371730a308db33cf477bf3ae05fa63" type="text/javascript"></script>
	<script src="/static/js/plugins/baidu.map.js" type="text/javascript"></script>
	<script src="/static/js/web/index.js" type="text/javascript"></script>

</body>

</html>