<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home</title>
</head>
<body>

	<c:if test="${pageContext.request.userPrincipal.name == null}">
		<p>
			<a href="${pageContext.request.contextPath}/login">Please Login First</a>
		</p>
	</c:if>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<p>
			You Already Login
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/semesteroffers">Go To Look My Classes</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/enrolment">Go To Enrolment</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/offers">Go To Look My Enrolment</a>
		</p>
		<p>
		<a href="javascript:document.getElementById('logout').submit()">Logout</a>
		</p>
	</c:if>

	<form id="logout" action="<c:url value="/logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>


</body>
</html>