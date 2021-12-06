<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- isErrorPage 속성을 true로 주면 exception 내장객체를 사용할 수 있음 -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 처리</title>
</head>
<body>
	<p>오류가 발생하였습니다.
	<p> 에외 유형 : <%=exception.getClass().getName() %></p>
	<p> 오류 메세지 : <%=exception.getMessage() %></p>
</body>
</html>