<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

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
<script>
	window.addEventListener("DOMContentLoaded", function() {
		var btnCancel = document.querySelector("#btn-cancel");
		btnCancel.addEventListener("click", function() {
			history.back();
		});
	});
</script>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

int num = Integer.parseInt(request.getParameter("num"));
%>
	<%@ include file ="header2.jsp" %>
	
	<main class="container main-footer-space">
		<form class="mt-5" action="pDelete_process.jsp" method="post">
			<div class="my-3">
				<label for="seq">삭제할 글 번호 : </label>
				<input type="text" class="forn-control" id="seq" name="seq" readonly value="<%= num %>">
			</div>
			<div class="d-flex justify-content-between">
				<div>
					<a href="phoneList.jsp" class="btn btn-secondary">목록 확인</a>
				</div>
				<div>
					<button type="submit" class="btn btn-danger">연락처 삭제</button>
					<button type="button" class="btn btn-warning" id="btn-cancel">수정 취소</button>
				</div>
			</div>
		</form>
	</main>
	
	<%@ include file ="footer2.jsp" %>
</body>
</html>