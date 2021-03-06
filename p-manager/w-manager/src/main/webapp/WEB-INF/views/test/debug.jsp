<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/static/common/taglibs.jsp"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
</head>
<body>

${tenantKey}:${username}登录成功
    <br />
    <a href="/test/a">a 可访问角色 : ADMIN</a>
    <br />
    <a href="/test/b">b 可访问角色 : ADMIN,MANAGER</a>
    <br />
    <a href="/test/c">c 可访问角色 : ADMIN,MANAGER,USER</a>
    <br />
	<c:url value="/j_spring_security_logout" var="logoutUrl"/>
	<a href="/j_spring_security_logout">Log Out</a><br />
	
-------------------------------------------------------------------<br />
<sec:authorize access="isAuthenticated()">
   YES, you are logged in! <br />
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN') and fullyAuthenticated">
ROLE_ADMIN<br />
</sec:authorize>
<sec:authorize access="hasRole('ROLE_MANAGER') and fullyAuthenticated">
ROLE_MANAGER<br />
</sec:authorize>
<sec:authorize access="hasRole('ROLE_USER') and fullyAuthenticated">
ROLE_USER<br />
</sec:authorize>

-------------------------------------------------------------------<br />

<sec:authorize ifAnyGranted="ROLE_ADMIN">
	ROLE_ADMIN<br />
</sec:authorize>
<sec:authorize ifNotGranted="ROLE_ADMIN">
	NO ROLE_ADMIN<br />
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_MANAGER">
	ROLE_MANAGER<br />
</sec:authorize>
<sec:authorize ifNotGranted="ROLE_MANAGER">
	NO ROLE_MANAGER<br />
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_USER">
	ROLE_USER<br />
</sec:authorize>
<sec:authorize ifNotGranted="ROLE_USER">
	NO ROLE_USER<br />
</sec:authorize>
<sec:authorize ifAllGranted="ROLE_ADMIN,ROLE_MANAGER,ROLE_USER">
	ALL<br />
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_MANAGER,ROLE_USER">
	ANY<br />
</sec:authorize>

</body>
</html>
