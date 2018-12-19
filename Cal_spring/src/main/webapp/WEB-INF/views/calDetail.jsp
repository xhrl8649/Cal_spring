<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>캘린더상세보기</title>
<h2>캘린더상세보기</h2>
<table id="calDetailTable">
<tr>
	<th>학원명
	<th>과정명
	<th>개강일
</tr>
<tr>
	<c:forEach items="${calViewList}" var="detailList">	
		<td><c:out value="${detailList.ac_name}"/></td>
		<td><c:out value="${detailList.ac_class}"/></td>
		<td><c:out value="${detailList.ac_cre_date}"/>~<c:out value="${detailList.ac_end_date}"/></td>
	</c:forEach>
</tr>
</table>
</head>
<body>
</body>
</html>