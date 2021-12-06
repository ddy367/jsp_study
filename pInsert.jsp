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
</head>
<body>
	<%@ include file ="header2.jsp" %>
	
	<main class="container">
		<form class="mt-5" action="pInsert_process.jsp" method="post">
			<div class="mt-3">
				<label for="frName">이름 : </label>
				<input type="text" class="form-control" id="frName"	name="frName" placeholder="이름을 입력하십시오.">
			</div>
			<div class="mt-3">
				<label for="frPhone1">전화번호1 : </label>
				<input type="text" class="form-control" id="frPhone1" name="frPhone1" placeholder="전화번호를 입력하십시오.">
			</div>
			<div class="mt-3">
				<label for="frPhone2">전화번호2 : </label>
				<input type="text" class="form-control" id="frPhone2" name="frPhone2" placeholder="전화번호를 입력하십시오.">
			</div>
				<div class="mt-3">
				<label for="frEmail">이메일: </label>
				<input type="text" class="form-control" id="frEmail" name="frEmail" placeholder="이메일을 입력하십시오.">
			</div>
				<div class="mt-3">
				<label for="frAddress">주소 : </label>
				<input type="text" class="form-control" id="frAddress" name="frAddress" placeholder="주소을 입력하십시오.">
			</div>
			<div class="gap-3">
				<label for="frComment">비고 : </label>
				<textarea rows="5" class="form-control" id="frComment" name="frComment" placeholder="비고 사항이 있을 경우 입력하십시오."></textarea>
			</div>
			<div class="d-flex justify-content-between my-3">
				<a href="phoneList.jsp" class="btn btn-secondary">목록 확인</a>
				<button type="submit" class="btn btn-primary">연락처 등록</button>
			</div>
		</form>
	</main>
	
	<%@ include file ="footer2.jsp" %>
	
</body>
</html>