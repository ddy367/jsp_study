<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  DB및 SQL을 사용하기 위한 패키지 로드 -->
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 만들기</title>
</head>
<body>
<%@ include file="dbConn.jsp" %>

<%
// request 내장 객체가 가지고 있는 데이터 중 한글이 있을 수 있으므로 Encoding을 utf-8방식으로 사용해야 함
request.setCharacterEncoding("utf-8");

// insertBoard 에서 전송한 데이터를 request 내장객체에서 가져오기
String title = request.getParameter("title");
String contents = request.getParameter("contents");
String userId = request.getParameter("userId");
String contentPw = request.getParameter("contentPw");
contentPw = contentPw.trim();

// 입력된 비밀번호가 없을 경우 기본 비밀번호 사용
if (contentPw == null || contentPw.isEmpty()) {
	contentPw = "bitc1234";
}
try {
	String sql = "INSERT INTO ";
	sql += "t_board (title, contents, creator_id, passwd, created_date) ";
	sql += "VALUES ('" + title + "', '" + contents + "', ";
	sql += "'" + userId + "', '" + contentPw + "',  NOW())";
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url, uid, upw);
	
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate(sql);
}
catch (SQLException ex) {
	
}
finally {
	if (pstmt != null) { pstmt.close(); }
	if (conn != null) { conn.close(); }
	
}

response.sendRedirect("boardList.jsp");
%>
</body>
</html>