<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page errorPage="exceptionType_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 처리</title>
</head>
<body>
	<%
//	사용자가 입력한 것은 숫자이나 input 태그에 저장되어 서버로 전송될 때 input의 type이 text이기 때문에 문자로 전송됨
//	이 데이터를 연산 시 사용하려면 숫자로 변경해야 함
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
//	랩핑클래스인 Integer에서 지원하는 문자를 숫자로 변환하는 메서드인 parseInt를 사용하여 입력받은 문자열형 숫자를 정수형으로 변환
	int a = Integer.parseInt(num1);
	int b = Integer.parseInt(num2);
	int c = a / b;
	out.println(num1 + "/" + num2 + "=" + c);
	%>
</body>
</html>