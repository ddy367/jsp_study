<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 오류 발생 시 errorPageㅇ서 지정한 페이지로 이동 -->
 <%@ page errorPage="page_errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디렉티브 태그</title>
</head>
<body>
	<%
		String str = null;
		out.println(str.toString());
	%>
</body>
</html>