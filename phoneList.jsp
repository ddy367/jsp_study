<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<%@ page import="java.sql.*"  %>

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
	<%@ include file ="dbConn.jsp" %>
	
	<%@ include file ="header2.jsp" %>

	<main class="container">
		<table class="table table-striped table-hover mt-5">
			<colgroup>
				<col width="5%" />
				<col width="5%" />
				<col width="10%" />
				<col width="10%" />
				<col width="20%" />
				<col width="20%" />
				<col width="10%" />
			</colgroup>
			<thead class="text-center">
				<tr>
					<th>순서</th>
					<th>이름</th>
					<th>전화번호1</th>
					<th>전화번호2</th>
					<th>이메일</th>
					<th>주소</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<%
				String sql="SELECT seq, fr_name, fr_phone1, fr_phone2, ";
				sql += "fr_email, fr_adderss, fr_comment ";
				sql += "FROM phonebook";
				
				ResultSet rs = null;

				try{
					Class.forName("com.mysql.cj.jdbc.Driver");

					conn = DriverManager.getConnection(url, uid, upw);

					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					while (rs.next()) {
						int seq = rs.getInt("seq");
						String frName = rs.getString("fr_name");
						String frPhone1 = rs.getString("fr_phone1");
						String frPhone2 = rs.getString("fr_phone2");
						String frEmail = rs.getString("fr_email");
						String frAddress = rs.getString("fr_adderss");
						String frComment = rs.getString("fr_comment");
						
						String item = "<tr>";
						item += "<td>" + seq + "</td>";
						item += "<td><a href='pSelect.jsp?num=" + seq + "'>" + frName + "</a></td>";
						item += "<td>" + frPhone1 + "</td>";
						item += "<td>" + frPhone2 + "</td>";
						item += "<td>" + frEmail + "</td>";
						item += "<td>" + frAddress + "</td>";
						item += "<td>" + frComment + "</td>";
						item += "</tr>";
						
						out.println(item);
					}
				}
				catch (SQLException ex) {
					
				}
				finally	{
					if (rs != null) { rs.close(); }
					if (pstmt != null) { pstmt.close(); }
					if (conn != null) { conn.close(); }
				}
				%>
			</tbody>
		</table>
		<div class="d-flex justify-content-end">
			<a href="pInsert.jsp" class="btn btn-primary">연락처 추가</a>
		</div>
	</main>
	<%@ include file ="footer2.jsp" %>
</body>
</html>