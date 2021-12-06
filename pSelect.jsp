<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호부</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style>
	.jumbotron {
		background-color: lightgray;
	}
</style>
</head>
<body>
	<%@ include file="dbConn.jsp" %>
	<%@ include file ="header2.jsp" %>
	
	<main class="container main-footer-space">
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	String sql = "SELECT seq, fr_name, fr_phone1, fr_phone2, fr_email, ";
	sql += "fr_adderss, fr_comment ";
	sql += "FROM phonebook ";
	sql += "WHERE seq = ? ";
	
	ResultSet rs = null;
	
	PreparedStatement pstmtCount = null;
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, uid, upw);

		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		
		rs = pstmt.executeQuery();

		while (rs.next()) { 
			int seq = rs.getInt("seq");
			String frName = rs.getString("fr_name");
			String frPhone1 = rs.getString("fr_phone1");
			String frPhone2 = rs.getString("fr_phone2");
			String frEmail = rs.getString("fr_email");
			String frAddress = rs.getString("fr_adderss");
			String frComment = rs.getString("fr_comment");
	%>
		<div class="mt-5">
		<div class="mt-3">
				<label for="seq">글번호 : </label>
				<input type="int" class="form-control" id="seq" name="seq" readonly value="<%= seq %>">
			</div>
			<div class="mt-3">
				<label for="frName">이름 : </label>
				<input type="text" class="form-control" id="frName"	name="frName" readonly value="<%= frName %>">
			</div>
			<div class="mt-3">
				<label for="frPhone1">전화번호1 : </label>
				<input type="text" class="form-control" id="frPhone1" name="frPhone1" readonly value="<%= frPhone1 %>">
			</div>
			<div class="mt-3">
				<label for="frPhone2">전화번호2 : </label>
				<input type="text" class="form-control" id="frPhone2" name="frPhone2" readonly value="<%= frPhone2 %>">
			</div>
				<div class="mt-3">
				<label for="frEmail">이메일: </label>
				<input type="text" class="form-control" id="frEmail" name="frEmail" readonly value="<%= frEmail %>">
			</div>
				<div class="mt-3">
				<label for="frAddress">주소 : </label>
				<input type="text" class="form-control" id="frAddress" name="frAddress" readonly value="<%= frAddress %>">
			</div>
			<div class="gap-3">
				<label for="frComment">비고 : </label>
				<textarea rows="5" class="form-control" id="frComment" readonly><%= frComment %></textarea>
			</div>
			<div class="d-flex justify-content-between">
				<div>
					<a href="phoneList.jsp" class="btn btn-secondary">목록</a>
				</div>
				<div>
					<a href="pUpdate.jsp?num=<%= seq %>" class="btn btn-info">연락처 수정</a>
					<a href="pDelete.jsp?num=<%= seq %>" class="btn btn-danger">연락처 삭제</a>
				</div>
			</div>
		</div>
	<%
		}
	}
	catch (SQLException ex) {
	
	}
	finally {
		if (rs!= null) { rs.close(); }
		if (pstmt != null) { pstmt.close(); }
		if (pstmtCount != null) { pstmtCount.close(); }
		if (conn!= null) { conn.close(); }
	}
	%>

	</main>
	
	<%@ include file ="footer2.jsp" %>
</body>
</html>