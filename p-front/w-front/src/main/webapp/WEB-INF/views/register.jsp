<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<link href="/static/css/register.css" type="text/css" rel="stylesheet">
</head>

<body>

	<div id="sign-up">
		<div class="container">
			<div class="section_header">
				<h3>
					注册 <span>(第一步)</span>
				</h3>
			</div>
			<div class="row login">
				<div class="col-sm-5 left_box">
					<h4>创建您的账号</h4>
					<div class="perk_box">
						<div class="perk">
							<span class="glyphicon glyphicon-cutlery"></span>
							<p>
								<strong>美食享受</strong> 在这里您将享有全国最美味的美食和最高档的服务 .
							</p>
						</div>
						<div class="perk">
							<span class="glyphicon glyphicon-search"></span>
							<p>
								<strong>快捷查找</strong> 我们支持各种类型的美食搜索和立体的餐厅定位服务，为您的生活带来便捷与享受 .
							</p>
						</div>
						<div class="perk">
							<span class="glyphicon glyphicon-cog"></span>
							<p>
								<strong>超强功能</strong> 在这我们开发了全方位的餐厅展示功能，为您的餐厅打造完善的推销平台 .
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-6 signin_box">
					<div class="box">
						<div class="box_cont">
							<div class="social">
								<a class="circle facebook" href="#"> <img alt="" src="/static/images/face.png"></a> 
								<a class="circle twitter" href="#"> <img alt="" src="/static/images/twt.png"></a>
								<a class="circle gplus" href="#"> <img alt="" src="/static/images/gplus.png"></a>
							</div>
							<div class="division">
								<div class="line l"></div>
								<span>或者</span>
								<div class="line r"></div>
							</div>

							<div class="form">
								<form id="registerForm" action="/register2" method="post">
									<input id="username" name="username" type="text" class="form-control" placeholder="用户名">
									<input id="password" name="password" type="text" class="form-control" placeholder="密码">
									<input id="passwordRepeat" name="passwordRepeat" type="text" class="form-control" placeholder="重复密码">
									<div class="forgot">
										<span>已经拥有账号?</span> <a href="/login">登录</a>
									</div>
									<input type="submit" value="立即注册">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- js -->
	<script src="/static/js/jquery/jquery.validate.min.js" type="text/javascript"></script>
	<script src="/static/js/web/register.js" type="text/javascript"></script>

</body>

</html>