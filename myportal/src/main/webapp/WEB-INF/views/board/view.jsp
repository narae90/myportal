<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
	<title>My Homepage</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<script 
	type="text/javascript" 
	src="<c:url value="/javascript/jquery/jquery-3.6.0.js" />"></script>
	<link rel="stylesheet" 
		href="<c:url value="/css/board.css" />" />	
</head>
<body>
  	<div id="container">
		<jsp:include page="/WEB-INF/views/includes/header.jsp" />
		<jsp:include page="/WEB-INF/views/includes/navigation.jsp" />
		<div id="wrapper">
			<div id="content">
	<h1>상세보기</h1>
	<table border="1" width="640">
		<tr>
			<td colspan="2"><h3 style='text-align: center'>게시판</h3></td>
		</tr>
		<tr>
			<th colspan="2" style='text-align: center'>글보기</th>
		</tr>
		<tr>
			<td style='text-align: center' width='50px'>제목</td>
			<td style='text-align: center'>${vo.getTitle() }</td>
		</tr>
		<tr>
			<td style='text-align: center'>내용</td>
			<td>
				<div style='text-align: center'>
					${vo.getContent() }
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2" style='text-align: center' >
				<a href="<c:url value="/board/list"/>">글목록</a>					
				<a href="<c:url value="/board/update/${vo.no }"/>">글수정</a>
				<a href="<c:url value="/board/delete/${vo.no}" /> ">삭제</a>
					
			
		</tr>
	</table>
	
	    </div>
	</div>
		<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
	</div>
				

</body>
</html>
