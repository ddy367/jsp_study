<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 처리</title>
</head>
<body>
	<!-- 현재 request 내장 객체에 name이 존재하지 않음, 오류가 발생함 -->
	<p>name 파라미터 : <%=request.getParameter("name").toUpperCase() %></p>
</body>
</html>