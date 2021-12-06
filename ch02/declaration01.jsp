<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>String Tag</title>
<script>
window.addEventListener("DOMContentLoaded", function() {
	var number = document.querySelector("#number");
	number.innerText = "30";
})
</script>
</head>
<body>
	<!-- JST 페이지에서 결과를 출력 시 -->
	<!-- 서버에서 연산을 진행하여 그 결과를 클라이언트에 전송하는 것 -->
	<%!
	int data = 30;
	%>
	
	<%
	out.println("Value of the variable is:" + data);
	%>
	
	<!--  기존의 정적인 페이지에서 같은 결과를 원할 경우 -->
	<!-- 결과는 동일하지만 자바스클비트를 사용 시 서버에서 연산이 발새된 것이 아니라 클라이언츠 화면에서 변겨된 것일 뿐임 -->
	<p>Value of the variable is <span id="number"></span></p>
</body>
</html>