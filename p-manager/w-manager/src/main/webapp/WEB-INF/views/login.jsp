<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>
<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
</style>
</head>
<body>

<% 
String error = request.getParameter("error");
if("1".equals(error)){
	%>
	<span>用户名或者密码错误！</span>
	<%
}
%>

<div class="container">
	<form action="j_spring_security_check" method="POST" class="form-signin">
		<h2 class="form-signin-heading">请登录</h2>
		<input name='username' value="" type="text" placeholder="Email address" class="input-block-level">
		<input name='password' value="" type="password" placeholder="Password" class="input-block-level">
		<label class="checkbox"> <input type="checkbox" value="remember-me">记住我</label>
		<button type="submit" class="btn btn-large btn-primary">登录</button>
	</form>
</div>

</body>
</html>