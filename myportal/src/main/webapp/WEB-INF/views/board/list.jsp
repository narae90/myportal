<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
			
			
	<h1>게시판</h1>		
	<table border="1" width="640">
		<tr>
			<td colspan="6" style='text-align: center'><h3>게시판</h3></td>
		</tr>
		<tr>
			<th style='text-align: center'>번호</th>
			<th style='text-align: center'>제목</th>
			<th style='text-align: center'>글쓴이</th>
			<th style='text-align: center'>조회수</th>
			<th style='text-align: center'>작성일</th>
			<th style='text-align: center'>&nbsp;</th>
		</tr>
		
		<!-- 게시물 Loop -->
		<c:forEach items="${list }" var="vo">
		<tr>
			<td style='text-align: center'>${vo.no}</td>
			<td style='text-align: center'><a href="<c:url value="/board/view/${ vo.no }"/>">${ vo.title }</a></td>			
			<td style='text-align: center'>${vo.userName }</td>
			<td style='text-align: center'>${vo.hit }</td>
			<td style='text-align: center'>${vo.regDate }</td>
			<td style='text-align: center'>
				<a href="<c:url value="/board/delete/${vo.no}" /> ">삭제</a>
				
			</td>
		</tr>
		</c:forEach>
		
		<tr>
			<td colspan="6"><a href="<c:url value="/board/write" />">글쓰기</a></td>
		</tr>
	</table>
	
	    	</div>
		</div>
		<%@ include file="/WEB-INF/views/includes/footer.jsp" %>
	</div>
</body>
</html>
