<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Homepage</title>
</head>
<body>
	<form method="post"
		action="<c:url value="/board/delete"/>">
		<input type='hidden' name="no" value="${no}"> 

		<a href="<c:url value="board"/>">목록 보기</a>
	</form>
</body>
</html>
