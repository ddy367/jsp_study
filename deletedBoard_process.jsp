<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%@ include file="dbConn.jsp" %>

<!-- deleteBoard_process.jsp는 UI가 없음 -->
<%
request.setCharacterEncoding("utf-8");

// deleteBoard에서 전송한 데이터 가져오기
int idx = Integer.parseInt(request.getParameter("idx"));
String passwd = request.getParameter("contentPw");

// 실제 삭제 대신 업데이트문을 사용하여 검색에만 나오지 않도록 처리
// 비밀번호를 입력받아 삭제 passwd 컬럼과 동일할 경우에만 삭제 처리(아무나 삭제하지 못 하도록)

// Statement를 사용할 경우 SQL문
//String sql = "UPDATE t_board ";
//sql += "SET deleted_yn = 'Y' ";
//sql += "WHERE idx = " + idx + " ";
//sql += "AND passwd = '" + passwd + "' ";

// PreparedStatement 를 사용할 경우 SQL문
String sql = "UPDATE t_board ";
sql += "SET deleted_yn = 'Y' ";
sql += "WHERE idx = ? ";
sql += "AND passwd = ? ";

try {
//	DB 접속하기
	Class.forName(driver);
	conn = DriverManager.getConnection(url, uid, upw);
//	stmt = conn.createStatement();
//	delete 명령이므로 executeUpdate() 메서드를 사용함
//	PreparedStatment 사용 시
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, idx);
	pstmt.setString(2, passwd);
// 	executeUpdate() 메서드는 반환값이 int 타입임
//	그 반환값은 해당 sql 문 실행 후 그 처리 결과 수
//	stmt.executeUpdate(sql);

//	PreparedStatment 사용 시
	int count = pstmt. executeUpdate();
	
//	int count = stmt.executeUpdate(sql);
	if(count<1) {
		// 업데이트 된 것이 없음
		// 잘못된 명령이라고 화면에 출력
		// 이전 페이지로 이동
	}
	else {
		// 정상처리
		// 처음화면으로 이동
	}
}
catch (SQLException ex) {
	
}
finally {
//	if (stmt != null) { stmt.close(); }
	if (pstmt != null) { pstmt.close(); }
	if (conn != null) { conn.close(); }
	
}


response.sendRedirect("boardList.jsp");
%>