<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부트스트랩을 사용한 푬</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col=sm-6 mx-auto">
			 	<h3>회원 가입</h3>
				<form action="form05_process.jsp" method="port">
					<div class="m-b3 mt-3">
					<label for="userId" class="form-control">아이디 : </label>
					<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해주세요"><br>
					</div>
					
					<div class="mb-3">
					<label for="userPw" class="form-control">비밀번호</label>
					<input type="password" class="form-control" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요"><br>
					</div>
					
					<div class="mb-3">
					<label for="userName" class="form-control">이름 :</label>
					<input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력해 주세요"><br>
					</div>
					
					<div class="mb-3">
						<label for="select-phone1">연락처 :</label>
						<div class="d-flex">
							<select name="select-phone1" class="form-select">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="017">017</option>
							</select>
							<input type="text" class="form-control" id="phone2" name="phone2" size="4">-
							<input type="text" class="form-control" id="phone3" name="phone3" size="4"><br>
						</div>
					</div>
					
					<div class="mb-3">
						<label class="form label">성별 :</label>
						<div class="form-check">
							<input type="radio" class="form-check-input" id="userGenderM" name="userGender" value="남자" checked>
						</div>
					</div>
					
						<div class="form-check">	
							<label class="form-check-label">남자</label>
							<input type="radio" id="userGenderW" name="userGender" value="여자">여자<br>
					</div>
					
					<label>취미 :</label>
					<input type="checkbox" id="hobby" name="hobby" value="독서" checked>독서
					<input type="checkbox" id="hobby" name="hobby" value="운동" >운동
					<input type="checkbox" id="hobby" name="hobby" value="영화" >영화
					<br>
					<textarea name="comment" cols="30" rows="3" placeholder="가입 인사를 입력해주세요"></textarea>
					<button type="submit">가입하기</button>
					<button type="reset">다시 쓰기</button>
					</div>	
				</div>
			</div>
			
	</body>
</html>