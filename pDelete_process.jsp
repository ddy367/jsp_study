<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%@ include file="dbConn.jsp" %>

<%
request.setCharacterEncoding("utf-8");

int seq = Integer.parseInt(request.getParameter("seq"));

String sql = "UPDATE phonebook ";
sql += "WHERE seq = ? ";

try {
	Class.forName(driver);
	conn = DriverManager.getConnection(url, uid, upw);

	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, seq);
}
catch (SQLException ex) {
	
}
finally {
	if (pstmt != null) { pstmt.close(); }
	if (conn != null) { conn.close(); }
}

response.sendRedirect("phoneList.jsp");
%>






