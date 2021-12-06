<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디렉티브 태그</title>
</head>
<body>
	<!-- import 미사용 시 -->
	Today is <%= new java.util.Date() %>
	<br><hr><br>
	<!-- import 사용 시 -->
	Today is <%= new Date() %>
</body>
</html>