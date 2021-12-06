<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	 <h2>include 액션 태그</h2>
	 <!-- 액션태그 include 사용 시 -->
	 <!-- 실제로는 지정한 페이지로 이동 후 화면을 다시 원래 페이지로 복귀 -->
	 <jsp:include page="include_date.jsp" flush="true"></jsp:include>
	
	<br><br><hr>
	
	 <h2>include 디렉티브 태그</h2>
	 <!-- 디렉티브 태그 include 사용 시 -->
	 <!-- 지정한 페이지를 복사해서 현재 페이지에 표함하기 떄문에 지정한 페이지에 있는 오류도 함께 표시됨 -->
	 <%@ include file="include_date.jsp" %>
</body>
</html>