<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>semesteroffers</title>
</head>
<body>

	<table>
        <thead>
            <tr>
                <th>년도</th>
                <th>학기</th>
                <th>이수 학점</th>
                <th>상세보기</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="semesteroffer" items="${semesteroffers}">
                <tr>
                    <td>${semesteroffer.year}</td>
                    <td>${semesteroffer.semester}</td>
                    <td>${semesteroffer.totalgrade}</td>
                    <td><a href="${pageContext.request.contextPath}/link">${semesteroffer.link}</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
	
</body>
</html>