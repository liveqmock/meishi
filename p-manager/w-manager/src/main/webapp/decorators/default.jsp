<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title><decorator:title default="AIWAN云平台" /></title>
	<%@ include file="/static/common/meta.jsp" %>
	<!-- Le fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://www.bootcss.com/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://www.bootcss.com/assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://www.bootcss.com/assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="http://www.bootcss.com/assets/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="http://www.bootcss.com/assets/ico/favicon.png">
	<%@ include file="/static/common/css-pre.jsp" %>
	<%@ include file="/static/common/js.jsp" %>
	<decorator:head />
	<%@ include file="/static/common/css-suf.jsp" %>
</head>

<body>
	<!-- 从被装饰页面获取body标签内容 -->
	<decorator:body />
	<!-- Le javascript ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
</body>
</html>
