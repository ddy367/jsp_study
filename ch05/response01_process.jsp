<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
	//  한글 표현 시 사용
		request.setCharacterEncoding("UTF-8");
	//  클라이언트에서 전송한 id 정보 받아오기
		String userid = request.getParameter("id");
	// 클라이언트에서 전송한 비밀번호 받아오기
		String password = request.getParameter("passwd");
		
		if(userid.equals("admin") && password.equals("1234")) {
		//	response 내장 객체의 리다이렉트 메서드를 사용하여 강제로 페이지 이동
			response.sendRedirect("response01_success.jsp");
		} else {
			response.sendRedirect("response01_failed.jsp");
		}
	%>
</body>
</html>