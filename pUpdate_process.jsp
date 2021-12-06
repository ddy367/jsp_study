<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%@ include file="dbConn.jsp" %>

<%
request.setCharacterEncoding("utf-8");

int seq = Integer.parseInt(request.getParameter("seq"));
String frName = request.getParameter("frName");
String frPhone1 = request.getParameter("frPhone1");
String frPhone2 = request.getParameter("frPhone2");
String frEmail = request.getParameter("frEmail");
String frAddress = request.getParameter("frAddress");
String frComment = request.getParameter("frComment");

String sql = "UPDATE phonebook ";
sql += "SET fr_name = '" + frName + "', fr_phone1 = '" + frPhone1 + "', ";
sql += "fr_fr_phone2 = '" + frPhone2 + "', fr_email = '" + frEmail + "', ";
sql += "fr_adderss = '" + frAddress +"', fr_comment = '" + frComment + "' ";
sql += "WHERE seq = " + seq + " ";

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

response.sendRedirect("phoneList.jsp");
%>