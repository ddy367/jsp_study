<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 처리</title>
</head>
<body>
	<%
	try{
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
//		문자열 데이터를 정수형 데이처로 변환 시 문자열 데이터 내에 숫자가 아닌 다른 데이터가 있었기 때문에 오류가 발생함
		int a = Integer.parseInt(num1);
		int b = Integer.parseInt(num2);
		int c = a / b;
		out.println(num1 + "/" + num2 + "=" + c);
	}catch (NumberFormatException e) {
//		RequestDispatcher : 클라이언트로부터 최초에 들어온 요청을 JSP/Servlet 내에서 원하는 자원으로 요청을 넘기는 역할을 넘기거나, 특정 자원에 처리를 요청하고 그 결과를 가져오는 클래스
//		response 내장 객체의 sendRedirect와 동일한 기능을 가지고 있는 것처럼 보이지만 동작하는 방식에서 차이가 발생함
//		sendRedirect는 지정한 페이지로 강제 이동 시 클라이언트로부터 이동하는 위치를 다시 받는 것처럼 동작하지만, RequestDispatcher는 서버 내부에서 직접 이동하는 것임
//		sendRedirect는 클라이언트가 처음 요청한 데이터가 이동한 위치에 공유될 수 없는 구조로 이루어져 있으나, RequestDispatcher는 서버 내부에서 직접 이동하므로 클라이언트가 처음 요청한 데이터를 이동한 위치에 공유할 수 있음

//		forward() : JSP 페이지를 호출하는 순간 서블릿이 멈추고 해당 JSP 페이지로 이동하여 오류처리를 진행하고 종료
//		include() : JSP 페이지를 호출하는 순간 서브릿이 멈추고 해당 JSP 페이지를 싱행 후 다시 원래의 JSP 페이지로 돌아와서 나머지 처리를 진행함 

		RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch_error.jsp");
		dispatcher.forward(request, response);
	}
	%>
</body>
</html>