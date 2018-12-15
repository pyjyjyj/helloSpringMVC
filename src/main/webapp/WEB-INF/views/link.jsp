<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Insert title here</title>
</head>
<body>
<table class="formtable">
		<tr>
			<td>교과목명</td>
		</tr>
	</table>
	<table class="formtable">
		<c:forEach var="offer" items="${offers}">
			<tr>
				<td width=100>${offer.classname }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>