<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>


<%@ include file="dbConn.jsp" %>

<%
request.setCharacterEncoding("utf-8");

// updateBoard 에서 전송한 데이터를 request 내장객체에서 가져옴
int idx = Integer.parseInt(request.getParameter("idx"));
String title = request.getParameter("title");
String contents = request.getParameter("contents");
String updateId = request.getParameter("userId");
String contentPw = request.getParameter("contentPw");

// 수정된 정보를 DB에 적용하기 위한 sql문
String sql = "UPDATE t_board ";
sql += "SET title = '" + title +"', contents = '" + contents + "', ";
sql += "update_id = '" + updateId + "', updated_date = NOW() ";
sql += "WHERE idx = " + idx + " ";
sql += "AND passwd = '" + contentPw + "' ";


try {
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






