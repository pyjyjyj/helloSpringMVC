<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>offers</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/main.css">
</head>
<body>

<table class="tableform">
        <thead>
            <tr>
                <th>년도</th>
                <th>학기</th>
                <th>과목코드</th>
                <th>과목명</th>
                <th>구분</th>
                <th>학점</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="offer" items="${offers}">
                <tr>
                    <td>${offer.year}</td>
                    <td>${offer.semester}</td>
                    <td>${offer.classcode}</td>
                    <td>${offer.classname}</td>
                    <td>${offer.section}</td>
                    <td>${offer.grade}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

<%-- 	<c:forEach var="offer" items="${offers}">
		<p>
			<c:out value="${offer}"></c:out>
		</p>
	</c:forEach> --%>

</body>
</html>