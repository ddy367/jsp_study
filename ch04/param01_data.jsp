<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그</title>
</head>
<body>
	<!-- param 액션 태그를 통해서 전달된 데이터를 request 내장 객체의 getParameter 메서드를 통해서 가져옴 -->
	<p>아이디 : <%=request.getParameter("id") %>
	<%
	String name = request.getParameter("name");
	%>
	<p>이 름 : <%=java.net.URLDecoder.decode(name, "UTF-8") %></p>
</body>
</html>