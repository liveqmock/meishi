<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>

<%
//united spacelab bootstrap default readable cerulean
	String themes = "default";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title><decorator:title default="AIWAN云平台" /></title>
	<%@ include file="/static/common/meta.jsp" %>
	<!-- Le fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/images/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/static/images/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/static/images/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="/static/images/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="/static/images/favicon.png">
	<link rel="stylesheet" type="text/css" href="/static/themes/<%=themes %>.css">
	
	<script type="text/javascript" src="/static/js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="/static/themes/bootstrap/js/bootstrap.min.js"></script>
	<decorator:head />
	<link rel="stylesheet" type="text/css" href="/static/css/all.min.css">
</head>

<body>
	<!-- 从被装饰页面获取body标签内容 -->
	<decorator:body />
	<!-- Le javascript ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
</body>
</html>
