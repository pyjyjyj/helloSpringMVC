<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>semesteroffers</title>
</head>
<script type="text/javascript">
			function setting() {
				
				var tdArr = new Array();
				var checkBtn = $(this);
				
				var tr = checkBtn.parent().parent();
				var td = tr.children();
				
				var ye = td.eq(0).text();
				var se = td.eq(1).text();
				System.out.println(ye + se);
				
				$("#Result1").html(ye);
				$("#Result2").html(se);
				
				asv = "12345";
				document.formname.click.value = asv;
			}
		</script>
<body>
	<form name="formname" method="get">
		<table id="semesterotable">
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
						<td><input type="hidden" name="year" value = "${semesteroffer.year}">${semesteroffer.year}</td>
						<td><input type="hidden" name="semester" value = "${semesteroffer.semester}">${semesteroffer.semester}</td>
						<td>${semesteroffer.totalgrade}</td>
						<td><a href = "${pageContext.request.contextPath}/link?year=${semesteroffer.year}&semester=${semesteroffer.semester}">${semesteroffer.link}</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</table>
		
		
		<div class="col-lg-12" id="Result1" ></div> 
		<div class="col-lg-12" id="Result2" ></div> 
	</form>

</body>
</html>