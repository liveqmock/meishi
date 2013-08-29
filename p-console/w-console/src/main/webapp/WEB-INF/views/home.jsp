<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/static/common/taglibs.jsp"%>

<html>
<head>
</head>
<body>

	home
	<c:forEach items="${ usersPage.result }" var="user" varStatus="status">
		${user.username}
	</c:forEach>

</body>
</html>
