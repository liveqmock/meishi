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
					注册 <span>(第二步)</span>
				</h3>
			</div>
			<div class="row login">
				<div class="col-sm-5 left_box">
					<h4>注册成功，下一步</h4>
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
							<div class="division"><a class="btn btn-primary btn-lg" href="/">回到主页</a></div>
							<div class="division"><a class="btn btn-primary btn-lg" href="/console/edit_userinfo">完善资料</a></div>
							<div class="division"><a class="btn btn-primary btn-lg" href="/console/edit_tenantinfo">注册店铺</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- js -->
	<script src="/static/js/web/register.js" type="text/javascript"></script>

</body>

</html>