<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호부</title>
</head>
<body>
<%@ include file="dbConn.jsp" %>

<%
request.setCharacterEncoding("utf-8");

String frName = request.getParameter("frName");
String frPhone1 = request.getParameter("frPhone1");
String frPhone2 = request.getParameter("frPhone2");
String frEmail = request.getParameter("frEmail");
String frAddress = request.getParameter("frAddress");
String frComment = request.getParameter("frComment");

try {
	String sql = "INSERT INTO ";
	sql += "phonebook (fr_name, fr_phone1, fr_phone2, ";
	sql += "fr_email, fr_adderss, fr_comment) ";
	sql += "VALUES ('" + frName + "', '" + frPhone1 + "', '" + frPhone2 + "', ";
	sql += "'" + frEmail + "', '" + frAddress + "', '" + frComment + "') ";
	
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

response.sendRedirect("phoneList.jsp");
%>
</body>
</html>