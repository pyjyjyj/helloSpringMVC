<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>enrolment</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/main.css">
</head>
<body>
	<h3>2019년도 1학기 수강신청</h3>
	<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="offer">
		<table class="formtable">
			<tr>
				<td class="label">Classcode:</td>
				<td><sf:input class="control" type="text" path="classcode" /><br />
					<sf:errors class="error" path="classcode" /></td>
			</tr>
			<tr>
				<td class="label">Classname:</td>
				<td><sf:input class="control" type="text" path="classname" /><br />
					<sf:errors class="error" path="classname" /></td>
			</tr>
			<tr>
				<td class="label">Section:</td>
				<td><sf:input class="control" type="text" path="section" /><br />
					<sf:errors class="error" path="section" /></td>
			</tr>
			<tr>
				<td class="label">Grade:</td>
				<td><sf:input class="control" type="text" path="grade" /><br />
					<sf:errors class="error" path="grade" /></td>
			</tr>
			<tr>
				<td class="label"> </td>
				<td> <input class="control" type="submit" value="수강신청"/></td>
			</tr>
		</table>
	</sf:form>

</body>
</html>